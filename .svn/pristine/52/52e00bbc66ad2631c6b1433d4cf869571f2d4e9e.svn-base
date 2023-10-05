using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;
using Newtonsoft.Json;

namespace drKidAdmin.Source.admin.cs
{
    public partial class AJAX_CS_USER_SEARCH : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string SEARCH_TEXT = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            SEARCH_TEXT = Request["SEARCH_TEXT"].ToString(); 

            inquery();
        }
        private void inquery()
        {
            string sql = @"
                            SELECT  USER_SID,USER_ID,USER_NAME
                            FROM    TCM_USER_MASTER      
				            WHERE	PERSON_NO   =   'DRKID'
                            AND     (
                                    USER_ID     LIKE	CONCAT('%',NVL('$USER_ID$',''),'%')
                                    OR
                                    USER_NAME   LIKE	CONCAT('%',NVL('$USER_NAME$',''),'%')
                                    );
                            ";
            sql = sql.Replace("$USER_ID$", SEARCH_TEXT);
            sql = sql.Replace("$USER_NAME$", SEARCH_TEXT);

            bizHelper biz = new bizHelper();
            DataSet retDS = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            string returnmessage = JsonConvert.SerializeObject(retDS);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(returnmessage);
            Response.End();
        }
            
    }
}
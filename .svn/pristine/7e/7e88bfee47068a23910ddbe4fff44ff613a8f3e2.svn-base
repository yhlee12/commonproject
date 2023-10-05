using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.cs
{
    public partial class M_CS_NOTICELIST_DETAIL : PageBase
    {
        public DataTable NOTICE_DETAIL = null;
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string sid = "";
        public string board_number = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            sid = Request["sid"];
            board_number = Request["board_number"];
            if (!IsPostBack)
            {
                inquery();


            }
            else
            {


            }
        }

        private void inquery()
        {
            if (!string.IsNullOrEmpty(sid))
            {
                bizHelper biz = new bizHelper();
                DataSet ds = null;
                string sql = @"
                            SELECT          
                                        IMPORTANCE_FLAG		
                                    ,	BOARD_TITLE
									,	BOARD_MESSAGE
									,	POST_USER_NAME
									,	POST_TIME
                                        
                                        FROM    TCM_BOARD_MASTER
                                        WHERE   BOARD_SID =" + sid +
                              ";";

                ds = biz.baseSQLDataset(sql);
                NOTICE_DETAIL = (DataTable)ds.Tables[0];

                biz.Dispose();
                biz = null;
            }

        }
    }
}
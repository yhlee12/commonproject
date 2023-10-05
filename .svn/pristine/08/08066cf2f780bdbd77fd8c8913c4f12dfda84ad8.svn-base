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

namespace drKidAdmin.Source.admin.info
{
    public partial class AJAX_TERM_BODY : PageBase
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string TYPE = Request["termcode"].ToString();
            string sql = @"
                            SELECT	    BODY     
					
				            FROM	    TCM_TERMS_CONFIG
				            WHERE	    TYPE	    =		'$TYPE$'
                            ";
            sql = sql.Replace("$TYPE$", TYPE);

            bizHelper biz = new bizHelper();
            DataSet retDS = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            var body = retDS.Tables[0].Rows[0]["BODY"].ToString() ;

            DataTable dt = new DataTable();
            dt.Columns.Add("BODY");

            DataRow dr = dt.NewRow();
            dr["BODY"] = body;
            dt.Rows.Add(dr);
 
            Response.Clear();
            Response.ContentType = "text/plain; charset=utf-8";
            Response.Write(body);
            Response.End();
            

        }        
    }
}
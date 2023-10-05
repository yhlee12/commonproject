using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json;

namespace drKid.Source.client.member.ajax
{
    public partial class C_MEMBER_PHONE_REDUPLICATION : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Filter = Request["filter"].ToString();
            string USER_PHONE = Request["USER_PHONE"] != null ? Request["USER_PHONE"].ToString() : "";
            string USER_EMAIL = Request["USER_EMAIL"] != null ? Request["USER_EMAIL"].ToString() : "";
            string LOGIN_TYPE = Request["LOGIN_TYPE"] != null ? Request["LOGIN_TYPE"].ToString() : "WEB";
            if (Filter == "UserPhone") 
            {
                string sql = @"
                            SELECT  COUNT(MOBILE_NO)
                            FROM	TCM_USER_MASTER			
				            WHERE	MOBILE_NO	=		'$USER_PHONE$'
				            AND		LOGIN_TYPE	=		'$LOGIN_TYPE$'
                            ";
                sql = sql.Replace("$USER_PHONE$", USER_PHONE);
                sql = sql.Replace("$LOGIN_TYPE$", LOGIN_TYPE);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (USER_PHONE != null || USER_PHONE != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(MOBILE_NO)"]);
                }
                if (USER_PHONE == null || USER_PHONE == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("MOBILE_NO");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["MOBILE_NO"] = USER_PHONE;
                dr["RESULT"] = idx;
                dt.Rows.Add(dr);
                string _returnData = JsonConvert.SerializeObject(dt);

                //table = retDS.Tables[0].Rows[0]["USER_ID"].ToString();

                //json += "]";

                Response.Clear();
                Response.ContentType = "text/plain; charset=utf-8";
                Response.Write(idx);
                Response.End();

                //Response.Clear();
                //Response.ContentType = "application/json; charset=utf-8";
                //Response.Write(_returnData);
                //Response.End();
                
            }
            if (Filter == "UserEmail")
            {
                string sql = @"
                            SELECT  COUNT(EMAIL_ADDRESS)
                            FROM	TCM_USER_MASTER			
				            WHERE	EMAIL_ADDRESS	=		'$USER_EMAIL$'
				            AND		LOGIN_TYPE	    =		'$LOGIN_TYPE$'
                            ";
                sql = sql.Replace("$USER_EMAIL$", USER_EMAIL);
                sql = sql.Replace("$LOGIN_TYPE$", LOGIN_TYPE);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (USER_EMAIL != null || USER_EMAIL != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(EMAIL_ADDRESS)"]);
                }
                if (USER_EMAIL == null || USER_EMAIL == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("EMAIL_ADDRESS");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["EMAIL_ADDRESS"] = USER_EMAIL;
                dr["RESULT"] = idx;
                dt.Rows.Add(dr);
                string _returnData = JsonConvert.SerializeObject(dt);

                //table = retDS.Tables[0].Rows[0]["USER_ID"].ToString();

                //json += "]";

                Response.Clear();
                Response.ContentType = "text/plain; charset=utf-8";
                Response.Write(idx);
                Response.End();

                //Response.Clear();
                //Response.ContentType = "application/json; charset=utf-8";
                //Response.Write(_returnData);
                //Response.End();

            }
        }
    }
}
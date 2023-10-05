using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json;
using drKid;

namespace drKidAdmin.Source.admin.member
{
    public partial class AJAX_MEMBER_VALIDATION : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Filter = Request["filter"].ToString();
            string I_USER_ID = Request["I_USER_ID"] != null ? Request["I_USER_ID"].ToString() : "";
            string I_USER_PHONE = Request["I_USER_PHONE"] != null ? Request["I_USER_PHONE"].ToString() : "";
            string I_USER_EMAIL = Request["I_USER_EMAIL"] != null ? Request["I_USER_EMAIL"].ToString() : "";
            string LOGIN_TYPE = Request["LOGIN_TYPE"] != null ? Request["LOGIN_TYPE"].ToString() : "WEB";
            if (Filter == "UserPhone") 
            {
                string sql = @"
                            SELECT  COUNT(MOBILE_NO)
                            FROM	TCM_USER_MASTER			
				            WHERE	MOBILE_NO	=		'$USER_PHONE$'
				            AND		LOGIN_TYPE	=		'$LOGIN_TYPE$'
                            ";
                sql = sql.Replace("$USER_PHONE$", I_USER_PHONE);
                sql = sql.Replace("$LOGIN_TYPE$", LOGIN_TYPE);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (I_USER_PHONE != null || I_USER_PHONE != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(MOBILE_NO)"]);
                }
                if (I_USER_PHONE == null || I_USER_PHONE == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("MOBILE_NO");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["MOBILE_NO"] = I_USER_PHONE;
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
                sql = sql.Replace("$USER_EMAIL$", I_USER_EMAIL);
                sql = sql.Replace("$LOGIN_TYPE$", LOGIN_TYPE);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (I_USER_EMAIL != null || I_USER_EMAIL != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(EMAIL_ADDRESS)"]);
                }
                if (I_USER_EMAIL == null || I_USER_EMAIL == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("EMAIL_ADDRESS");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["EMAIL_ADDRESS"] = I_USER_EMAIL;
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
            if (Filter == "UserId")
            {
                string sql = @"
                            SELECT  COUNT(USER_ID)
                            FROM	TCM_USER_MASTER			
				            WHERE	USER_ID         =		'$USER_ID$'
				            AND		LOGIN_TYPE	    =		'$LOGIN_TYPE$'
                            ";
                sql = sql.Replace("$USER_ID$", I_USER_ID);
                sql = sql.Replace("$LOGIN_TYPE$", LOGIN_TYPE);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (I_USER_ID != null || I_USER_ID != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(USER_ID)"]);
                }
                if (I_USER_ID == null || I_USER_ID == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("USER_ID");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["USER_ID"] = I_USER_EMAIL;
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
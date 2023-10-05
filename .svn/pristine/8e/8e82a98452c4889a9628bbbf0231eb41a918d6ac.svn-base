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
    public partial class C_MEMBER_ID_REDUPLICATION : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Filter = Request["filter"].ToString();
            string USER_ID = Request["USER_ID"] != null ? Request["USER_ID"].ToString() : "";
            if (Filter =="UserId") 
            {
                string sql = @"
                            SELECT  COUNT(USER_ID)
                                    ,USER_ID
                            FROM	TCM_USER_MASTER			
				            WHERE	USER_ID				=		'$USER_ID$'
				            AND		LOGIN_TYPE			=		'WEB'
                            ";
                sql = sql.Replace("$USER_ID$", USER_ID);
                //sql = sql.Replace("$FILTER$", Filter);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string table = "";
                int idx = 0;
                if (USER_ID != null || USER_ID != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(USER_ID)"]);
                }
                if (USER_ID == null || USER_ID == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("USER_ID");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["USER_ID"] = USER_ID;
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
                                    ,EMAIL_ADDRESS
                            FROM    TCM_USER_MASTER
                            WHERE   EMAIL_ADDRESS           =   '$USER_ID$'
                            AND     
                                    (PERSON_NO               =   'SGATE'
                            OR      PERSON_NO               =   'T2LC'
                            OR      PERSON_NO               =   'T2L')
                            ";
                sql = sql.Replace("$USER_ID$", USER_ID);
                //sql = sql.Replace("$FILTER$", Filter);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                string[] USER_EMAIL_ID = USER_ID.Split('@');
                int idx = 0;
                if (USER_EMAIL_ID[0] != null || USER_EMAIL_ID[0] != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(EMAIL_ADDRESS)"]);
                }
                if (USER_EMAIL_ID[0] == null || USER_EMAIL_ID[0] == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("USER_ID");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["USER_ID"] = USER_ID;
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
            if (Filter == "CompanyNum")
            {
                string sql = @"
                            SELECT  COUNT(USER_CUSTOMER_CD)
                                    ,USER_CUSTOMER_CD
                            FROM    TCM_USER_MASTER
                            WHERE   USER_CUSTOMER_CD        =   '$USER_ID$'
                            AND     
                                    (PERSON_NO               =   'SGATE'
                            OR      PERSON_NO               =   'T2LC'
                            OR      PERSON_NO               =   'T2L')
                            ";
                sql = sql.Replace("$USER_ID$", USER_ID);
                //sql = sql.Replace("$FILTER$", Filter);

                bizHelper biz = new bizHelper();
                DataSet retDS = biz.baseSQLDataset(sql);
                biz.Dispose();
                biz = null;



                
                int idx = 0;
                if (USER_ID != null || USER_ID != "")
                {
                    idx = Convert.ToInt32(retDS.Tables[0].Rows[0]["COUNT(USER_CUSTOMER_CD)"]);
                }
                if (USER_ID == null || USER_ID == "")
                {
                    idx = 3;
                }



                DataTable dt = new DataTable();
                dt.Columns.Add("USER_ID");
                dt.Columns.Add("RESULT");

                DataRow dr = dt.NewRow();
                dr["USER_ID"] = USER_ID;
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
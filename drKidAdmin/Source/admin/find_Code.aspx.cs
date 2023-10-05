using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO;
using drKid;

namespace drKidAdmin.Source.admin
{
    public partial class find_Code : System.Web.UI.Page
    {
        public string sessionCode = "";
        public string sessionPW = "";
        public string sessionUSID = "";
        public string code_flag = "";
        public string flag = "";
        public string way = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                flag = Request["flag"];
                way = Request["way"].ToString(); ;
                sessionCode = Session["check_code"].ToString();

            }
            else
            {
                flag = Request["flag"];
                if (flag == "id")
                {

                } 
                if (flag == "pw")
                {
                    if (!String.IsNullOrEmpty(Request.Form["code_flag"]))
                    {
                        code_flag = Request.Form["code_flag"];

                        setParam();

                        if (code_flag == "Y")
                        { //인증번호 맞으면.
                            change_PW();
                        }
                    }
                }
                


            }
        }
        private void setParam()
        {
            way = Request["way"].ToString();
            sessionCode = Session["check_code"].ToString();
            sessionPW = Session["new_pw"].ToString(); // 다음화면에서 보여줘야하기때문에 아직 세션 날리면 안됨.
            sessionUSID = Session["user_sid"].ToString();

            //세션 초기화
            Session["check_code"] = null;
            Session["user_sid"] = null;
        }
        private void change_PW()
        {

            //암호화
            string Check_Pass = BizUtil.getSHA512(sessionPW);

            string sql = @"
            UPDATE	TCM_USER_MASTER
		    SET		USER_PASSWORD		=	'$USER_PASSWORD$'
			,	    UPDATED_USER_ID		=	'guest'	
			,	    UPDATED_PROGRAM_ID  =	'find_Code'
			,	    UPDATED_TIME		=	SYSDATE()		
		    WHERE	USER_SID			=	'$USER_SID$'
		    ";


            sql = sql.Replace("$USER_SID$", sessionUSID);
            sql = sql.Replace("$USER_PASSWORD$", Check_Pass);

            bizHelper biz = new bizHelper();
            DataSet retDS = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;
        }
    }
}
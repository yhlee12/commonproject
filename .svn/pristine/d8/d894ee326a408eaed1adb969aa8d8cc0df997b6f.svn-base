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
using Newtonsoft.Json;

namespace drKid
{
    public partial class C_LOGIN_SEARCH_PW2 : PageBase
    {
        public string cp_ret_status ="";
        public string cp_ret_message="";

        public string sessionCode = "";
        public string sessionPW = "";
        public string sessionUSID = "";
        public string code_flag = "";

        public string way = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                sessionCode = Session["check_code"].ToString();
                way = Request["way"].ToString();

            }
            else
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
            //세션 초기화
            Session["check_code"] = null;
            Session["user_sid"] = null;

            
        }
        private void setParam()
        {
            way = Request["way"].ToString();
            sessionCode = Session["check_code"].ToString();
            sessionPW = Session["new_pw"].ToString(); // 다음화면에서 보여줘야하기때문에 아직 세션 날리면 안됨.
            sessionUSID = Session["user_sid"].ToString();
            
        }
        private void change_PW()
        {

            //암호화
            string Check_Pass = BizUtil.getSHA512(sessionPW);

            string sql = @"
            UPDATE	TCM_USER_MASTER
		    SET		USER_PASSWORD		=	'$USER_PASSWORD$'
			,	    UPDATED_USER_ID		=	'guest'	
			,	    UPDATED_PROGRAM_ID  =	'C_LOGIN_SEARCH_PW2'
			,	    UPDATED_TIME		=	SYSDATE()		
		    WHERE	USER_SID			=	'$USER_SID$'
		    ";

            //UPDATE	TCM_USER_MASTER
            //SET		USER_PASSWORD   =   '1234'
            //    ,	UPDATED_USER_ID		=	'guest'
            //    ,	UPDATED_PROGRAM_ID  =	'C_LOGIN_SEARCH_PW2'
            //    ,	UPDATED_TIME		=	SYSDATE()		
            //WHERE	USER_SID			=	'1000033'
            //;
            
            sql = sql.Replace("$USER_SID$", sessionUSID);
            sql = sql.Replace("$USER_PASSWORD$", Check_Pass);

            bizHelper biz = new bizHelper();
            DataSet retDS = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;


        }
        //유저로그
        private void User_log() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_COMMON_CODE.PCM_CODE_LOOKUP");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", sessionUSID);
                hs.Add("I_MESSAGE","test" );    //적당한 로그 넣을것.
                hs.Add("I_TYPE","PW_FIND" );
                
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "SEARCH_PW");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
            finally
            {
                if (biz != null)
                {
                    biz.Dispose();
                    biz = null;
                }
            }
        }

    }
}
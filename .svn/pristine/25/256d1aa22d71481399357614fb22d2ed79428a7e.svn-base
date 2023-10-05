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


namespace drKid.Source.m.member
{
    public partial class M_M_JOINSUPPORT : PageBase
    {
        public string flag = "";
        public string USER_ID = "";
        public string USER_PASSWORD = "";
        public string LOGIN_TYPE = "";
        public string SOCIAL_ID = "";
        public string access_token = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string code = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                code = Request["code"];
            }
            else
            {
                if (!String.IsNullOrEmpty(Request.Form["flag"]))
                {
                    flag = Request.Form["flag"];
                }
                if (flag == "login" || flag == "")
                {
                    setParam();

                    if (LOGIN_TYPE == "kakao" || LOGIN_TYPE == "naver")
                    {
                        USER_ID = SOCIAL_ID;
                        USER_PASSWORD = SOCIAL_ID;
                        socialjoin_check();
                        if (cp_ret_status == "Y")
                        {
                            access_token = Request.Form["access_token"];
                            socialMemberJoin();
                        }
                    }
                    else
                    {
                        join();
                    }
                }
            }

        }
        private void setParam()
        {
            LOGIN_TYPE = Request.Form["login_type"] == "" ? "WEB" : Request.Form["login_type"];     //로그인 타입
            SOCIAL_ID = Request.Form["socialid"];                                                   //소셜로그인 id
        }

        private void socialMemberJoin()
        {
            Response.Redirect("/Source/m/member/M_M_JOINGUIDE.aspx?LOGIN_TYPE=" + LOGIN_TYPE + "&SOCIAL_ID=" + SOCIAL_ID + "&access_token=" + access_token);
        }
        private void join()
        {
            Response.Redirect("/Source/m/member/M_M_JOINGUIDE.aspx?LOGIN_TYPE=" + LOGIN_TYPE + "&SOCIAL_ID=" + SOCIAL_ID + "&access_token=" + access_token);
        }
        private void socialjoin_check()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            //암호화
            string Check_Pass = BizUtil.getSHA512(USER_PASSWORD);

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                hs.Add("I_USER_ID", USER_ID);
                hs.Add("I_USER_PASSWORD", USER_PASSWORD);
                hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    cp_ret_message = "이미 간편로그인 가입이 완료된 계정입니다.";
                }
                else
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                    hs.Add("I_USER_ID", USER_ID);
                    hs.Add("I_USER_PASSWORD", Check_Pass);
                    hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        cp_ret_message = "이미 간편로그인 가입이 완료된 계정입니다.";
                    }
                    else
                    {

                    }

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
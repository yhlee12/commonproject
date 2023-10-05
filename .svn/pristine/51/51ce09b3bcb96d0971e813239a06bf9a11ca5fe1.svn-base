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

namespace drKidAdmin.Source.admin
{
    public partial class loginPage : System.Web.UI.Page
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";

        string USER_ID = "";
        string USER_PASSWORD = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "login":
                        login();
                        break;
                }
            }
        }

        private void login()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            USER_ID = Request.Form["USER_ID"];
            USER_PASSWORD = Request.Form["USER_PWD"];


            //암호화
            string Check_Pass = BizUtil.getSHA512(USER_PASSWORD);

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_ADMIN_LOGIN");
                hs.Add("I_USER_ID", USER_ID);
                hs.Add("I_USER_PASSWORD", USER_PASSWORD);
                hs.Add("I_LOGIN_TYPE", "WEB");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //로그인 성공                        
                    BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                    FormsAuthentication.SetAuthCookie(USER_ID, false);
                    Response.Redirect("/Source/admin/main.aspx");
                }
                else
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_ADMIN_LOGIN");
                    hs.Add("I_USER_ID", USER_ID);
                    hs.Add("I_USER_PASSWORD", Check_Pass);
                    hs.Add("I_LOGIN_TYPE", "WEB");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                        FormsAuthentication.SetAuthCookie(USER_ID, false);
                        Response.Redirect("/Source/admin/main.aspx");
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
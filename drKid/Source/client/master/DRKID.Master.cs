using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.master
{

    public partial class DRKID : System.Web.UI.MasterPage
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public DataTable metaTable = new DataTable();
        public DataTable cateGoryTable = new DataTable();

        public Dictionary<string, List<ViewerMain>> mainViewDic = new Dictionary<string, List<ViewerMain>>();

        public drkidUserInfo baseUser = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            baseUser = BizUtil.getUserInfo(Session, Request);
            setMainData();
        }

        private void setMainData()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_MAIN_MASTER.MASTER_SELECT_DATA");
                hs.Add("I_PERSON_NO", "DRKID");
                //hs.Add("I_MOBILE", "N");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    metaTable = ds.Tables["O_RESULT_CURSOR_META"];
                    cateGoryTable = ds.Tables["O_RESULT_CURSOR"];
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

        protected void Logout_to_Server_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();

            HttpCookie aCookie;
            string cookieName;
            int limit = Request.Cookies.Count;
            for (int i = 0; i < limit; i++)
            {
                cookieName = Request.Cookies[i].Name;
                aCookie = new HttpCookie(cookieName);
                aCookie.Expires = DateTime.Now.AddDays(-1); // make it expire yesterday
                Response.Cookies.Add(aCookie); // overwrite it
            }

            Request.Cookies.Clear();
            if (Request.Cookies["drKid"] != null)
            {
                Request.Cookies.Remove("drKid");
            }
            //FormsAuthentication.SignOut();
            //Response.Redirect(HttpContext.Current.Request.Url + "");
            Response.Redirect("/Source/client/member/login/C_LOGIN_Page.aspx");
        }
    }
}
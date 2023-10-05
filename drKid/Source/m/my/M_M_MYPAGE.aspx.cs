using System;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace drKid.Source.m.my
{
    public partial class M_M_MYPAGE : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            Response.Redirect("/Source/m/m_main.aspx");
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.member.login
{
    public partial class M_L_SEARCH_PW3 : PageBase
    {
        public string sessionPW = "";
        public string code_flag = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionPW = Session["new_pw"].ToString();
            Session["new_pw"] = null;
        }
    }
}
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

namespace drKid.Source.m.member.login
{
    public partial class M_L_SEARCH_ID2 : PageBase
    {
        public string sesstionCode = "";
        public string way = "";

        //public string sesstionCode = "";
        //public string sesstionCode = "";
        //public string sesstionCode = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            else
            {

            }
            way = Request["way"].ToString();
            sesstionCode = Session["check_code"].ToString();
            Session["check_code"] = null;

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace drKid
{
    public partial class C_LOGIN_SEARCH_ID3 : PageBase
    {
        public string sessionId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sessionId = Session["find_user_id"].ToString();
                Session["find_user_id"] = null;
            }
            else
            {

            }
            
        }
    }
}
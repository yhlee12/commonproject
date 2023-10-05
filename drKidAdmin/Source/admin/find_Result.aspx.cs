using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin
{
    public partial class find_Result : System.Web.UI.Page
    {
        public string sessionId = "";
        public string sessionPW = "";
        public string flag = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            flag = Request["flag"];
            if (flag == "id") 
            {
                sessionId = Session["find_user_id"].ToString();
                Session["find_user_id"] = null;
            }
            if (flag == "pw")
            {
                sessionPW = Session["new_pw"].ToString();
                Session["new_pw"] = null;
            }
            
            
        }
       
    }
}
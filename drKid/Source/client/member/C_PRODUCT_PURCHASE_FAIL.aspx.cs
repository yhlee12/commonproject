using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.member
{
    public partial class C_PRODUCT_PURCHASE_FAIL : PageBase
    {
        public string resultMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!Page.IsPostBack)
            {
                resultMsg = Request["resultMsg"];
            }
            else
            { 

            }
        }
    }
}
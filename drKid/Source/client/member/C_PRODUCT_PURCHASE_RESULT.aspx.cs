using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace drKid.Source.client.member
{
    public partial class C_PRODUCT_PURCHASE_RESULT : System.Web.UI.Page
    {
        public string jsonStr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            jsonStr = Session["resultJsonData"].ToString();
            if (!string.IsNullOrEmpty(jsonStr))
            {
                //jsonData = JsonConvert.DeserializeObject(jsonStr);
                // jsonData를 사용하여 JSON 데이터에 접근
            }
        }
    }
}
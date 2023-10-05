using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.celebshop
{
    public partial class C_CELEBSHOP_PAGE : PageBase
    {
        public string flag = "";
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        //페이징 관련
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
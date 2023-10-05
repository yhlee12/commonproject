using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace drKid.Source.client.member
{
    public partial class C_C_PRODUCT_DETAIL : PageBase
    {
        public string payment_flag = "";
        public string t_price = "";
        public string good_count = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!Page.IsPostBack) { 
            
            }
            else
            {
                setparam();

                //세션 초기화
                //Session.RemoveAll();
                //일반구매 정기구매 플레그저장
                Session["payment_flag"] = payment_flag;
                Session["t_price"] = t_price;
                Session["good_count"] = good_count;
                Session["redirect_flag"] = "product";
                
                if (baseUser.userId != "" && baseUser.userId != null)
                {
                    Response.Redirect("/Source/client/member/C_C_PRODUCT_PURCHASE.aspx");
                }
                else
                {
                    Response.Redirect("/Source/client/member/login/C_LOGIN_Page.aspx");
                }
            }
        }

        private void setparam()
        {
            payment_flag = Request.Form["payment_flag"];
            t_price = Request.Form["t_price"];
            good_count = Request.Form["good_count"];
        }
    }
}
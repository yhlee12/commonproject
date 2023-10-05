using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;

namespace drKidAdmin.Source.admin.cupoint
{
    public partial class AJAX_COUPON_TEMPLATE : PageBase
    {
        public string flag = "";

        public string result_status = "";
        public string result_message = "";

        public string coupon_template_1 = null;
        public string coupon_template_2 = null;

        string templateForm = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            if (!String.IsNullOrEmpty(Request["templateForm"]))
            {
                templateForm = Request["templateForm"];
            }
            string Filter = Request["templateForm"].ToString();
            templateForm = Request["templateForm"];
            loadTermsDocument();
        }


        protected void loadTermsDocument()
        {
            switch (templateForm)
            {
                case "coupon_11":
                    coupon_template_1 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_1.html");
                    //coupon_template_2 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_1.html");
                    break;

                case "coupon_12":
                    coupon_template_1 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_1.html");
                    break;

                case "coupon_21":
                    coupon_template_1 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_2.html");
                    break;

                case "coupon_22":
                    coupon_template_1 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_2.html");
                    break;

                default:
                    coupon_template_1 = File.ReadAllText(HttpContext.Current.Server.MapPath("~") + "/Source/admin/cupoint/TEMPLATE_COUPON_1.html");
                    break;
            }
            
            Response.Clear();
            Response.ContentType = "text/html; charset=utf-8";
            Response.Write(coupon_template_1);
            Response.End();
        }
    }
}
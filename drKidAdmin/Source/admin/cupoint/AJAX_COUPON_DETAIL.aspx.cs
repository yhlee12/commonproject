using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;
using Newtonsoft.Json;
namespace drKidAdmin.Source.admin.cupoint
{
    public partial class AJAX_COUPON_DETAIL : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string I_COUPON_SID = "";
        public DataTable COUPON_DETAIL = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!String.IsNullOrEmpty(Request["coupon_sid"]))
            {
                I_COUPON_SID = Request["coupon_sid"];
            }
            getCouponDetail();
        }

        private void getCouponDetail()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT  *
                            FROM    TCM_COUPON_DETAIL
                            WHERE   COUPON_SID = $I_COUPON_SID$
                            ;
                          ";
            sql = sql.Replace("$I_COUPON_SID$", I_COUPON_SID);
            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            COUPON_DETAIL = (DataTable)ds.Tables[0];

            string returnmessage = JsonConvert.SerializeObject(ds);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(returnmessage);
            Response.End();
        }
    }
}
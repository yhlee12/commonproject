using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace drKid.Source.client.events
{
    public partial class AJAX_COUPON_ISSUE : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string I_USER_SID = "";
        public string I_COUPON_SID = "";
        public string I_COUPON_CODE = "";
        public string randomstring = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            setparams();
            coupon_issue();
        }

        private void setparams()
        {
            I_USER_SID = Request["user_sid"];
            I_COUPON_SID = Request["coupon_sid"];
        }


        private void coupon_issue()
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            
            Random random1 = new Random();

            //쿠폰번호 랜덤생성
            randomstring = new string(Enumerable.Repeat(chars, 10) // 10자리 랜덤 문자열 생성
            .Select(s => s[random1.Next(s.Length)]).ToArray());

            I_COUPON_CODE = randomstring + I_COUPON_SID;

            //랜덤코드 + 쿠폰 sid 랜덤생성
            I_COUPON_CODE = new string(Enumerable.Repeat(I_COUPON_CODE, 18) // 10자리 랜덤 문자열 생성
            .Select(s => s[random1.Next(s.Length)]).ToArray());


            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COUPON_UPDATE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", I_USER_SID);
                hs.Add("I_USER_TYPE", baseUser.userType);
                hs.Add("I_COUPON_SID", I_COUPON_SID);
                hs.Add("I_COUPON_CODE", I_COUPON_CODE);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COUPON_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
            finally
            {
                if (biz != null)
                {
                    biz.Dispose();
                    biz = null;
                }
            }
            string returnmessage = JsonConvert.SerializeObject(ds);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(returnmessage);
            Response.End();
        }




    }
}
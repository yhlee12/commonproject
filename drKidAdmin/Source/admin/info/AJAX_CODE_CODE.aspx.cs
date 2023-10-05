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

namespace drKidAdmin.Source.admin.info
{
    public partial class AJAX_CODE_CODE : PageBase
    {
        public string flag = "";

        public string result_status = "";
        public string result_message = "";

        string CLASS_SID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            if (!String.IsNullOrEmpty(Request["CLASS_SID"]))
            {
                CLASS_SID = Request["CLASS_SID"];
            }

            inquery();
        }

        private void inquery()
        {
            Hashtable hs = null;
            DataSet ds = null;
            bizHelper biz = null;

            try
            {
                hs = new Hashtable();
                ds = new DataSet();
                biz = new bizHelper();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_CLASS_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CLASS_SID", CLASS_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "(pgm_id)");

                ds = biz.operationSP(hs);

                result_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                result_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (result_status == "Y")
                {

                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                result_status = "Y";
                result_message = ex.Message;
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
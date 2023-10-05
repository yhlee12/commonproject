using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.eventDetail
{
    public partial class M_E_EVENT_DETAIL :PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        public string I_BOARD_SID = "";
        public DataTable EVENT_LIST = null;
        public DataTable RECO_PROD_LIST = null;
        public DataTable RECO_PROD_EDMS = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            I_BOARD_SID = Request["sid"];
            if (!IsPostBack)
            {
                inquery();

            }
            else
            {
                inquery();
            }
        }

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();



            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.EVENT_PROD_DETAIL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_CLASS", "DRKD_EVENT");
                hs.Add("I_EVENT_PROGRESS", "*");
                hs.Add("I_BOARD_SID", I_BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "M_E_EVENT_DETAIL");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    EVENT_LIST = ds.Tables["O_RESULT_CURSOR"];
                    RECO_PROD_LIST = ds.Tables["O_RESULT_CURSOR_PROD_LIST"];
                    RECO_PROD_EDMS = ds.Tables["O_RESULT_CURSOR_PROD_EDMS"];

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

        }
    }
}
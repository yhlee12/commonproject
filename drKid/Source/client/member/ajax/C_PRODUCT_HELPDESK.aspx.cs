using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.member.ajax
{
    public partial class C_PRODUCT_HELPDESK : System.Web.UI.Page
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string BOARD_SID = "";
        public string BOARD_PASSWORD = "";
        public DataTable REQUEST_TABLE = null;
        public int BOARD_RESULT = 0;
        public string ORIGINAL_TITLE = "";
        public string TYPE = "";

        public DataTable PROD_FAQ_TABLE = null;
        public string PRODUCT_SID = "";
        public int offset = 10;
        public int matches = 10;
        public string more_btn_flag = "";
        public int totalCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            TYPE = Request["TYPE"];
            BOARD_SID = Request["BOARD_SID"];
            BOARD_PASSWORD = Request["BOARD_PASSWORD"];
            PRODUCT_SID = Request["PRODUCT_SID"];
            offset = BizUtil.getInt(Request["offset"]);
            if (TYPE == "DETAIL") {
                inqeury();
            }
            else if (TYPE == "MORE") {
                more_Prod_HelpDesk();
            }
        }

        private void more_Prod_HelpDesk()
        {
            DataSet ds = null;
            bizHelper biz = null;
            Hashtable hs = new Hashtable();

            try
            {
                biz = new bizHelper();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_DETAIL.PROD_HD_MORE_AJAX");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);
           

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "(pgm_id)");

                ds = biz.operationSP(hs); //검색된 데이터

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    PROD_FAQ_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_PROD_HD_COUNT"] + "");
                }

            }
            catch (Exception ex)
            {

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
        private void inqeury()
        {
            DataSet ds = null;
            bizHelper biz = null;
            Hashtable hs = new Hashtable();

            try
            {
                biz = new bizHelper();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_DETAIL.PROD_HELPDESK_AJAX");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", BOARD_SID);
                hs.Add("I_BOARD_PASSWORD", BOARD_PASSWORD);
        
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "(pgm_id)");

                ds = biz.operationSP(hs); //검색된 데이터

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BOARD_RESULT = Int32.Parse(ds.Tables["O_RESULT_CURSOR_FLAG"].Rows[0]["BOARD_RESULT"] + "");
                    if (BOARD_RESULT > 0) {
                        REQUEST_TABLE = ds.Tables["O_RESULT_CURSOR"];
                        ORIGINAL_TITLE = ds.Tables["O_RESULT_CURSOR_ORIGINAL"].Rows[0]["BOARD_TITLE"].ToString();
                    }
                    
                }

            }
            catch (Exception ex)
            {

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
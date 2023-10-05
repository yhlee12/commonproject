using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Configuration;


namespace drKid.Source.m.my
{
    public partial class M_M_PRODUCT_DETAIL : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        public string submit_flag = "";
        protected bool accessMobile;
        public string payment_flag = "";
        public string PRODUCT_SID = "";
        public string PROD_CATEGORY = "";
        public string PROD_TITLE = "";
        public DataTable PROD_TABLE = null;
        public DataTable CATE_TABLE = null;
        public DataTable DISCOUNT_TABLE = null;
        public DataTable STOCK_TABLE = null;
        public DataTable PROD_IMG_TABLE = null;
        public DataTable OPTION_TABLE = null;
        public DataTable OPTION_STOCK_TABLE = null;
        public DataTable TOTAL_REVIEW_TABLE = null;
        public DataTable REVIEW_TABLE = null;
        public DataTable PROD_FAQ_TABLE = null;
        public string REVIEW_TOTAL_COUNT = "0";
        public DataTable GRADE_TABLE = null;
        //public DataTable AUTO_GRADE_TABLE = null;
        public DataTable BEST_REVIEW_TABLE = null;
        public decimal AVG_SCORE = 0m;


        public Int32 matches_CommonReview = 10;
        public Int32 matches_BestReview = 9;
        public string searchBtn_Click_Flag = "";

        public DataTable REFFER_TABLE = null;
        public string _refferCode = "";
        public string shareURL = "";
        public string shareTITLE = "";
        public string shareIMG = "";

        //상품문의 관련
        public string TITLE = "";
        public string BOARD_WRITE_NM = "";
        public string BOARD_WRITE_SID = "";
        public string DETAIL = "";
        public string BOARD_PASSWORD = "";
        public Int32 PROD_FAQ_TOTAL_COUNT = 0;
        public Int32 matches_HelpDesk = 10;
        public Int32 TOTAL_PROD_HD_COUNT = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            PRODUCT_SID = Request["PRODUCT_SID"]; // get으로 받은 상품 SID
            accessMobile = this.DetectMobile();
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(PRODUCT_SID))
                {
                    inqeury();
                }
            }
            else
            {
                //세션 초기화
                //Session.RemoveAll();
                //일반구매 정기구매 플레그저장
                payment_flag = Request.Form["payment_flag"];
                Session["payment_flag"] = payment_flag;
                flag = Request["flag"];
                PRODUCT_SID = Request["_PRODUCT_SID"];

                switch (flag)
                {
                    case "prodHd_Save":
                        TITLE = Request["TITLE"];
                        BOARD_WRITE_NM = Request["BOARD_WRITE_NM"];
                        BOARD_WRITE_SID = Request["BOARD_WRITE_SID"];
                        DETAIL = Request["DETAIL"];
                        BOARD_PASSWORD = Request["I_PASSWORD"];

                        if (baseUser.userSid == 0)
                        {
                            non_user_contact_add();
                        }
                        else
                        {
                            user_contact_add();
                        }
                        inqeury();
                        break;
                }
            }
        }
        private void user_contact_add()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PROD_CSBOARD_EDIT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);
                hs.Add("I_BOARD_CLASS", "HELPDESK");
                hs.Add("I_BOARD_CATEGORY", "CS05");
                hs.Add("I_BOARD_TITLE", TITLE);
                hs.Add("I_BOARD_WRITE_SID", this.baseUser.userSid);
                hs.Add("I_BOARD_USER_TYPE", this.baseUser.userType);
                hs.Add("I_BOARD_WRITE_NM", this.baseUser.userId);
                hs.Add("I_BOARD_PASSWORD", BOARD_PASSWORD);
                hs.Add("I_POST_TYPE", 'Z');
                hs.Add("I_POST_STATUS", 'R'); // R답변대기 W답변완료 L답변중
                hs.Add("I_BOARD_MESSAGE", DETAIL);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_PRODUCT_DETAIL");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    submit_flag = "Y";
                    //BOARD_SID = ds.Tables["O_RESULT_CURSOR_0"].Rows[0]["NEW_CONTACT_SID"].ToString();

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
        private void non_user_contact_add()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PROD_CSBOARD_EDIT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);
                hs.Add("I_BOARD_CLASS", "HELPDESK");
                hs.Add("I_BOARD_CATEGORY", "CS05");// CS05 : 상품문의
                hs.Add("I_BOARD_TITLE", TITLE);
                hs.Add("I_BOARD_WRITE_SID", BOARD_WRITE_SID);
                hs.Add("I_BOARD_USER_TYPE", "01");
                hs.Add("I_BOARD_WRITE_NM", BOARD_WRITE_NM);
                hs.Add("I_BOARD_PASSWORD", BOARD_PASSWORD);
                hs.Add("I_POST_TYPE", 'Z');
                hs.Add("I_POST_STATUS", 'R'); // R답변대기 W답변완료 L답변중
                hs.Add("I_BOARD_MESSAGE", DETAIL);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", -1);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_PRODUCT_DETAIL");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    submit_flag = "Y";
                    //BOARD_SID = ds.Tables["O_RESULT_CURSOR_0"].Rows[0]["NEW_CONTACT_SID"].ToString();
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
        private void inqeury()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            if (submit_flag == "Y")
            {
                PRODUCT_SID = Request["_PRODUCT_SID"];
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_DETAIL_CLIENT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);
                hs.Add("I_USER_SID", baseUser.userSid == null ? 0 : baseUser.userSid);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_PRODUCT_DETAIL");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    PROD_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    if (PROD_TABLE.Rows.Count > 0)
                    {
                        PROD_TITLE = PROD_TABLE.Rows[0]["PRODUCT_NM"].ToString();
                    }
                    CATE_TABLE = ds.Tables["O_RESULT_CURSOR_CATE"];
                    if (CATE_TABLE.Rows.Count > 0)
                    {
                        PROD_CATEGORY = CATE_TABLE.Rows[0]["CATEGORY_NAME"].ToString();
                    }

                    //DISCOUNT_TABLE = ds.Tables["O_RESULT_CURSOR_META"];
                    STOCK_TABLE = ds.Tables["O_RESULT_CURSOR_STOCK"];
                    PROD_IMG_TABLE = ds.Tables["O_RESULT_CURSOR_IMAGE"];
                    OPTION_TABLE = ds.Tables["O_RESULT_CURSOR_OPTION"];
                    OPTION_STOCK_TABLE = ds.Tables["O_RESULT_CURSOR_OPTION_STOCK"];
                    TOTAL_REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR_REVIEW_TOTAL"];
                    PROD_FAQ_TABLE = ds.Tables["O_RESULT_CURSOR_FAQ"];
                    TOTAL_PROD_HD_COUNT = Convert.ToInt32(ds.Tables["O_RESULT_CURSOR_FAQ_TOTAL"].Rows[0]["TOTAL_PROD_HD_COUNT"]);
                    if (PROD_FAQ_TABLE.Rows.Count > 0)
                    {
                        PROD_FAQ_TOTAL_COUNT = Convert.ToInt32(ds.Tables["O_RESULT_CURSOR_FAQ_TOTAL"].Rows[0]["TOTAL_PROD_HD_COUNT"]);
                    }
                    if (TOTAL_REVIEW_TABLE.Rows.Count > 0)
                    {
                        if (ds.Tables["O_RESULT_CURSOR_REVIEW_TOTAL"].Rows[0]["AVG_SCORE"].ToString() != "")
                        {
                            AVG_SCORE = Convert.ToDecimal(ds.Tables["O_RESULT_CURSOR_REVIEW_TOTAL"].Rows[0]["AVG_SCORE"]);

                        }
                    }

                    DataSet bestReivewset = ds;
                    REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR_REVIEW"];
                    if (REVIEW_TABLE.Rows.Count > 0)
                    {
                        REVIEW_TOTAL_COUNT = TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"].ToString();
                        BEST_REVIEW_TABLE = bestReivewset.Tables["O_RESULT_CURSOR_REVIEW"]
                        .AsEnumerable()
                         .Where(row => row.Field<string>("BEST_FLAG") == "Y")
                        .CopyToDataTable();
                    }
                    GRADE_TABLE = ds.Tables["O_RESULT_CURSOR_GRADE"];
                    //AUTO_GRADE_TABLE = ds.Tables["O_RESULT_CURSOR_AUTOGRADE"];

                    //공유하기 관련
                    if (baseUser.userReferral != null)
                    {
                        _refferCode = baseUser.userReferral;
                        shareURL = "http://211.43.207.2/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=" + PRODUCT_SID + "&_refferCode=" + _refferCode;
                        shareURL = shareURL.Trim();

                    }
                    else
                    {
                        shareURL = "http://211.43.207.2/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=" + PRODUCT_SID;
                        shareURL = shareURL.Trim();
                    }
                    if (PROD_IMG_TABLE.Rows.Count > 0)
                    {
                        if (PROD_IMG_TABLE.Rows[0]["RELATION_CODE"].ToString() == "MAIN_IMAGE")
                        {
                            shareIMG = ConfigurationManager.AppSettings["EDMS_VIEW"] + PROD_IMG_TABLE.Rows[0]["TARGET_READ_PATH"].ToString();
                            shareIMG = shareIMG.Trim();
                        }
                    }
                    if (PROD_TABLE.Rows.Count > 0)
                    {
                        shareTITLE = PROD_TABLE.Rows[0]["PRODUCT_NM"].ToString();
                    }

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
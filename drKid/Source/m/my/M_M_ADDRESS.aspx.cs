using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.my
{
    public partial class M_M_ADDRESS : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        public string del_flag = "";
        string flag = "";

        //배송지 관리
        public string I_DELIVERY_PHONE_1 = "";
        public string I_DELIVERY_PHONE_2 = "";
        public string I_DELIVERY_PHONE_3 = "";
        public string I_DELIVERY_SECCOND_NUM_1 = "";
        public string I_DELIVERY_SECCOND_NUM_2 = "";
        public string I_DELIVERY_SECCOND_NUM_3 = "";

        public string I_DELIVERY_NAME = ""; //배송지명
        public string I_RECEIVER = ""; //받는분
        public string I_POST_NO = ""; //우편번호
        public string I_ADDR_1 = ""; //주소
        public string I_ADDR_2 = null; //상세주소
        public string FULL_I_TEL_NO = ""; // 휴대폰번호
        public string FULL_I_SPARE_NO = null; //추가 연락처
        public string I_BASE_FLAG = ""; //기본 배송지 설정 플래그
        public DataTable DELIVERY_LIST = new DataTable();

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
            this.basePageInit();
            if (!IsPostBack)
            {
                //setNaviString();
                inquery();
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "save":
                        setParam();
                        saveDelivery();
                        break;

                    case "del":
                        delDelivery();
                        break;
                }
            }

        }

        private void delDelivery()
        {
            I_DELIVERY_NAME = Request["delDelivery_Name"];
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_ADDRESS_MASTER.PAM_ADDRESS_DELETE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", baseUser.userSid);
                hs.Add("I_DELIVERY_NAME", I_DELIVERY_NAME);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_DELIVERY");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    del_flag = "Y";
                    inquery();

                }
                else
                {
                    inquery();
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

        private void setParam()
        {
            //전화번호
            I_DELIVERY_PHONE_1 = Request["I_DELIVERY_PHONE_1"];
            I_DELIVERY_PHONE_2 = Request["I_DELIVERY_PHONE_2"];
            I_DELIVERY_PHONE_3 = Request["I_DELIVERY_PHONE_3"];
            FULL_I_TEL_NO = I_DELIVERY_PHONE_1 + I_DELIVERY_PHONE_2 + I_DELIVERY_PHONE_3;
            FULL_I_TEL_NO.Trim();
            //추가 연락처
            I_DELIVERY_SECCOND_NUM_1 = Request["I_DELIVERY_SECCOND_NUM_1"];
            I_DELIVERY_SECCOND_NUM_2 = Request["I_DELIVERY_SECCOND_NUM_2"];
            I_DELIVERY_SECCOND_NUM_3 = Request["I_DELIVERY_SECCOND_NUM_3"];
            FULL_I_SPARE_NO = I_DELIVERY_SECCOND_NUM_1 + I_DELIVERY_SECCOND_NUM_2 + I_DELIVERY_SECCOND_NUM_3;
            FULL_I_SPARE_NO.Trim();
            if (string.IsNullOrEmpty(FULL_I_SPARE_NO))
            {
                FULL_I_SPARE_NO = null;
            }
            //배송지명
            I_DELIVERY_NAME = Request["I_DELIVERY_NAME"];
            //받는분
            I_RECEIVER = Request["I_DELIVERY_PERSON"];
            //주소(주소,상세주소,우편번호)
            I_POST_NO = Request["I_DELIVERY_ADDRESS_1"];
            I_ADDR_1 = Request["I_DELIVERY_ADDRESS_2"];
            I_ADDR_2 = Request["I_DELIVERY_ADDRESS_3"];
            //기본 배송지 설정 플래그
            I_BASE_FLAG = Request["DEFAULT_ADRESS_CHECK"];
            if (string.IsNullOrEmpty(I_BASE_FLAG))
            {
                I_BASE_FLAG = "N";
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
                hs.Add("SP_NAME", "PKG_ADDRESS_MASTER.PAM_ADDRESS_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", baseUser.userSid);
                //hs.Add("I_OFFSET", 0);
                //hs.Add("I_MATCHES", 10);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_DELIVERY");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    DELIVERY_LIST = ds.Tables["O_RESULT_CURSOR"];
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
        private void saveDelivery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_ADDRESS_MASTER.PAM_ADDRESS_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", baseUser.userSid);
                hs.Add("I_DELIVERY_NAME", I_DELIVERY_NAME);

                hs.Add("I_RECEIVER", I_RECEIVER);
                hs.Add("I_ADDR_1", I_ADDR_1);
                hs.Add("I_ADDR_2", I_ADDR_2);
                hs.Add("I_POST_NO", I_POST_NO);
                hs.Add("I_TEL_NO", FULL_I_TEL_NO);
                hs.Add("I_SPARE_NO", FULL_I_SPARE_NO);
                hs.Add("I_BASE_FLAG", I_BASE_FLAG);



                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_DELIVERY");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                    setNaviString();
                    inquery();

                }
                else
                {
                    inquery();
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
        private void setNaviString()
        {
            naviUrl = Request.Url.AbsolutePath;
            naviQuery = new Dictionary<string, string>();

            //offset은 있을경우 항상 받는것으로 처리
            if (!String.IsNullOrEmpty(Request["offset"]))
            {
                offset = BizUtil.getInt(Request["offset"]);
            }

            //Search 조건 Setting

            string queryString = "";
            foreach (KeyValuePair<string, string> query in naviQuery)
            {
                queryString += (queryString == "" ? "" : "&") + query.Key + "=" + query.Value;
            }

            naviUrl = naviUrl + "?" + queryString;
        }

    }
}
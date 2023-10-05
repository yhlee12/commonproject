using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.customer
{
    public partial class A_BUSINESS_LIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";

        //검색조건
        public string BUSINESS_CHECK_FLAG = "*"; // 심사상태
        public string BUSINESS_FLAG = "*"; //심사상태 심사완료 시 SP IN PARAM 에사용되는 (전체,승인,거절) 값
        public string SUBMIT_FLAG = "*";//사업자 등록증 제출여부
        public string USER_ID = "";
        public DataTable BUSINESS = null;
        //페이징 관련
        public int custom_Paging = 0;
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string search_btn_click_flag = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            if (!IsPostBack)
            {
                //setParam();
                setNaviString();
                inquery();
                
            }
            else
            {
                flag = Request["flag"];
               
                switch (flag)
                {


                    case "search":
                        setParam();
                        setNaviString();
                        inquery();
                        break;
                   
                }
            }
        }
        private void setParam()
        {
            BUSINESS_CHECK_FLAG = Request["BUSINESS_CHECK_FLAG"];
            BUSINESS_FLAG = Request["BUSINESS_FLAG"];
            SUBMIT_FLAG = Request["SUBMIT_FLAG"];
            USER_ID = Request["USER_ID"];

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

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            if (custom_Paging > 0)
            {
                offset = custom_Paging;
            }
            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_OPTION.BUSINESS_CERTIFICATE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_BUSINESS_CHECK_FLAG", BUSINESS_CHECK_FLAG);
                hs.Add("I_BUSINESS_FLAG", BUSINESS_FLAG);
                hs.Add("I_SUBMIT_FLAG", SUBMIT_FLAG);
                hs.Add("I_USER_ID", USER_ID);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BUSINESS_LIST");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    BUSINESS = ds.Tables["O_RESULT_CURSOR"];
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
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.member
{
    public partial class M_M_REVIEW : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        //카테고리
        public DataTable CATE_TABLE = null;
        //리뷰
        public string SEARCH_TYPE = "*";
        public string BEST_FLAG = "*"; //베스트 리뷰 여부
        public string[] CATEGORY_NAME_ARRY;
        public string CATEGORY_NAME = ""; // 카테고리 명
        public string REVIEW_TITLE = ""; // 리뷰 제목 검색어
        public DataTable REVIEW_TABLE = null;// 검색된 리뷰 리스트 
        public DataTable BEST_REVIEW_TABLE = null;// BEST 옵션으로 검색된 리뷰 리스트
        public string I_ORDER_TYPE = "ORDER_BY_BEST";

        //페이징 관련
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string searchBtn_Click_Flag = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            bizHelper biz = new bizHelper();
            inqeury_Category(biz);
            if (biz != null)
            {
                biz.Dispose();
                biz = null;
            }

            if (!IsPostBack)
            {
                setNaviString();
                Inquery();
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "search":
                        setParam();
                        setNaviString();
                        Inquery();
                        break;


                }
            }
        }
        private void Inquery()
        {
            if (searchBtn_Click_Flag == "Y")
            {
                offset = 0;
            }
            DateTime today = DateTime.Today;
            string formattedDate = today.ToString("yyyyMMdd");

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_REVIEW_MASTER.CLIENT_REVIEW_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_FROM_DATE", "20230101");
                hs.Add("I_TO_DATE", formattedDate);
                hs.Add("I_BEST_FLAG", BEST_FLAG);
                hs.Add("I_GROUP_CATEGORY", CATEGORY_NAME);
                hs.Add("I_PRODUCT_SCORE", 0); // 0이면 모든 평점의 리뷰 전부 SELECT 
                hs.Add("I_REVIEW_TITLE", REVIEW_TITLE);
                hs.Add("I_ORDER_TYPE", I_ORDER_TYPE);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "M_MEMBER_REVIEW");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    if (SEARCH_TYPE == "BEST")
                    {
                        BEST_REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    }
                    else
                    {
                        REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    }
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
        private void setParam()
        {
            searchBtn_Click_Flag = Request["searchBtn_Click_Flag"];
            CATEGORY_NAME = Request["CATEGORY_NAME"];
            REVIEW_TITLE = Request["REVIEW_TITLE"];
            SEARCH_TYPE = Request["SEARCH_TYPE"];
            I_ORDER_TYPE = Request["I_ORDER_TYPE"];
            if (SEARCH_TYPE == "*")
            {
                BEST_FLAG = "*";
            }
            else if (SEARCH_TYPE == "BEST")
            {
                BEST_FLAG = "Y";
                if (I_ORDER_TYPE != "ORDER_BY_PRODUCT_SCORE")
                {
                    I_ORDER_TYPE = "ORDER_BY_POST_TIME";
                }
            }
            if (!string.IsNullOrEmpty(CATEGORY_NAME))
            {
                BEST_FLAG = "*";
            }

        }
        private void inqeury_Category(bizHelper biz)
        {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_CATEGORY_MASTER.PCM_CATEGORY_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "M_MEMBER_REVIEW");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    CATE_TABLE = ds.Tables["O_RESULT_CURSOR"];
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
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
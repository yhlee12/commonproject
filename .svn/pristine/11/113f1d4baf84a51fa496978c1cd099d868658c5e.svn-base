using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.community
{
    public partial class A_COMM_MANAGE : PageBase
    {
        public string FROM = ""; //캘린더 날짜
        public string TO = "";//캘린더 날짜
        public string DATEUI = "7"; //사용자가 세팅한 상품등록일자 검색UI 정보(today,7,15,30 ...), 디폴트가 7일
        public string SEARCH_TYPE = "*"; // 검색 조건
        public string SEARCH_BOARD_TYPE = "*"; // 검색 조건
        public string SEARCH_VALUE = ""; // 검색 텍스트 

        public DataTable USER_TABLE = null;
        public string flag = "";
        public string search_btn_click_flag = "";

        public string I_BOARD_SID = "";
        public string I_BOARD_CLASS = "";
        public string I_USER_NAME = "";
        public string I_CONTENT_TITLE = "";
        public string I_FAQ_TYPE = "%";
        public string I_POST_TIME = "";
        public string I_FROM_DATE = "";
        public string I_TO_DATE = "";
        public DataTable BOARD_CATEGORY = null;
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public DataTable COMM_LIST = null;
        public DataTable BEST_LIST = null;
        public DataTable NORMAL_LIST = null;
        public DataTable BOARD_CLASS = null;

        //페이징 관련
        public int custom_Paging = 0;
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
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            if (!IsPostBack)
            {
                     BCALSS_INQUERY();
                    offset = BizUtil.getInt(Request["offset"]);
                    if (offset > 0) //페이징 버튼을 눌렀을때
                    {
                        setNaviString();
                       
                    }
 
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "delete_board":
                        I_BOARD_SID = Request["I_BOARD_SID"];
                        delete_BOARD();
                        BCALSS_INQUERY();
                        break;
                    case "search":
                        setParam();
                        setNaviString();
                        COMM_list();
                        BCALSS_INQUERY();
                        break;
                }
            }
        }
        private void delete_BOARD()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();


            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_BOARD_DELETE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", I_BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_LIST");

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

        }
        private void setParam()
        {
            search_btn_click_flag = Request["search_btn_click_flag"];
            DATEUI = Request["DATEUI"];
            FROM = Request["FROM"];
            TO = Request["TO"];
            if (!String.IsNullOrEmpty(FROM))
            {
                FROM = FROM.Replace("-", "").Trim();
            }
            if (!String.IsNullOrEmpty(TO))
            {
                TO = TO.Replace("-", "").Trim();
            }
            SEARCH_TYPE = Request["SEARCH_TYPE"];
            SEARCH_VALUE = Request["SEARCH_VALUE"];
            SEARCH_BOARD_TYPE = Request["SEARCH_BOARD_TYPE"];
        }
        private void COMM_list()
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
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COMMUNITY_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_BOARD_CLASS", "DRKD_COMM");
                hs.Add("I_BOARD_SID", I_BOARD_SID);
                hs.Add("I_USER_NAME", baseUser.userName);
                hs.Add("I_CONTENT_TITLE", I_CONTENT_TITLE);
                hs.Add("I_POST_TIME", I_POST_TIME);
                hs.Add("I_FAQ_TYPE", SEARCH_BOARD_TYPE);
                hs.Add("I_SERACH_TYPE", SEARCH_TYPE);
                hs.Add("I_SERACH_VALUE", SEARCH_VALUE);
                hs.Add("I_FROM_DATE", FROM);
                hs.Add("I_TO_DATE", TO);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                //hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                //hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "guest" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_COMM_MANAGE");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    COMM_LIST = ds.Tables["O_RESULT_CURSOR"];
                    NORMAL_LIST = ds.Tables["O_RESULT_CURSOR1"];
                    BEST_LIST = ds.Tables["O_RESULT_CURSOR2"];
                    //페이징관련

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

        private void BCALSS_INQUERY()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"

         SELECT
                CONCAT('DRKID_', LEFT(CLASS_CODE, 4)) AS new_code,
                CODE_CODE,
                CODE_NAME
            FROM
                TCM_CODE_MASTER TCMA
            WHERE
                CLASS_CODE = 'COMM_TYPE'
            ORDER BY
                ORDER_SEQ;
              ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            BOARD_CATEGORY = (DataTable)ds.Tables[0];
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
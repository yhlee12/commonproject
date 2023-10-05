using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.community
{
    public partial class C_COMMUNITY_PAGE : PageBase
    {
        public string flag = "";

        public string I_BOARD_SID = "";
        public string I_BOARD_CLASS = "";
        public string I_USER_NAME = "";
        public string I_CONTENT_TITLE = "";
        public string I_FAQ_TYPE = "";
        public string I_POST_TIME = "";
        public string I_FROM_DATE = "";
        public string I_TO_DATE = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public DataTable COMM_LIST = null;
        public DataTable BEST_LIST = null;
        public DataTable NORMAL_LIST = null;
        public DataTable BOARD_CLASS = null;

        //페이징 관련
        public int custom_Paging = 0;
        public int offset = 0;
        public int matches = 5;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            if (!IsPostBack)
            {
               
                offset = BizUtil.getInt(Request["offset"]);
                DateTime currentDate = DateTime.Now;
                DateTime futureDate = currentDate.AddDays(-7);
                I_FROM_DATE = futureDate.ToString("yyyy-MM-dd");
                I_TO_DATE = currentDate.ToString("yyyy-MM-dd");
                setNaviString();
                COMM_list();


            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {

                    case "search":
                    
                        setNaviString();
                        
                        COMM_list();
                        
                        break;
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
        private void set_param()
        {
            I_BOARD_SID = Request.Form["I_BOARD_SID"];
            I_BOARD_CLASS = Request.Form["I_BOARD_CLASS"];
            I_USER_NAME = Request.Form["I_USER_NAME"]; 
            I_CONTENT_TITLE = Request.Form["I_CONTENT_TITLE"];
            I_POST_TIME = Request.Form["I_POST_TIME"];
            I_FAQ_TYPE = Request.Form["I_FAQ_TYPE"]; 
            I_FROM_DATE = Request.Form["I_FROM_DATE"];
            I_TO_DATE = Request.Form["I_TO_DATE"];

        }
        private void COMM_list()
        {
            if (custom_Paging > 0)
            {
                offset = custom_Paging;
            }
            DateTime currentDate = DateTime.Now;
            DateTime futureDate = currentDate.AddDays(-7);
            I_FROM_DATE = futureDate.ToString("yyyy-MM-dd");
            I_TO_DATE = currentDate.ToString("yyyy-MM-dd");
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COMMUNITY_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_BOARD_CLASS", "DRKD_COMM");
                hs.Add("I_BOARD_SID", I_BOARD_SID);
                hs.Add("I_USER_NAME", I_USER_NAME);
                hs.Add("I_CONTENT_TITLE", I_CONTENT_TITLE);
                hs.Add("I_POST_TIME", I_POST_TIME);
                hs.Add("I_FAQ_TYPE", I_FAQ_TYPE);
                hs.Add("I_FROM_DATE", I_FROM_DATE.Replace("-", "").Replace("-", ""));
                hs.Add("I_TO_DATE", I_TO_DATE.Replace("-", "").Replace("-", ""));

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                //hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                //hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "guest" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMM");

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

    }
}
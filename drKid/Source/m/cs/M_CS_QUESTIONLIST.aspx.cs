using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.cs
{
    public partial class M_CS_QUESTIONLIST : PageBase
    {
        string flag = "";
        public string search_btn_click_flag = "";

        public string I_SEARCH_WORD = "";
        public string T_CATEGORY_TYPE = "";

        public DataTable category_info = null;
        public DataTable FAQ_LIST = null;
        public string cp_ret_status = "";
        public string cp_ret_message = "";


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
            this.basePageLoad();

            T_CATEGORY_TYPE = Request["T_CATEGORY_TYPE"];
            I_SEARCH_WORD = Request["I_SEARCH_WORD"];
            search_btn_click_flag = Request["search_btn_click_flag"];

            if (!IsPostBack)
            {


                setNaviString();
                inquery(); //카테고리 정보 
                search_FAQ();

                //search_FAQ(); // FAQ검색 
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {

                    case "search":
                        setNaviString();
                        inquery(); //카테고리 정보 
                        search_FAQ();
                        break;

                }

            }

        }
        private void search_FAQ()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            if (string.IsNullOrEmpty(T_CATEGORY_TYPE))
            {
                T_CATEGORY_TYPE = "*";
            }
            if (string.IsNullOrEmpty(I_SEARCH_WORD))
            {
                I_SEARCH_WORD = "";
            }
            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_QA_MASTER.PQM_QA_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_FAQ_TYPE", T_CATEGORY_TYPE);
                hs.Add("I_SEARCH_TITLE", I_SEARCH_WORD);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

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
                    FAQ_LIST = ds.Tables["O_RESULT_CURSOR"];
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
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER TASA
                                        WHERE   CLASS_CODE = 'FAQ_CLASS'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            category_info = (DataTable)ds.Tables[0];
        }

    }
}
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
    public partial class M_CS_HELPDESKLIST :PageBase
    {
        public string del_flag = "";
        public string flag = "";
        public string search_btn_click_flag = "";

        public string I_SEARCH_TITLE = "";
        public string I_BOARD_CLASS = "";
        public string I_BOARD_CATEGORY = "";
        public string I_POST_TYPE = "";
        public string I_POST_STATUS = "";
        public string I_FROM_DATE = "";
        public string I_TO_DATE = "";
        public string I_BOARD_USER_TYPE = "";
        public string I_BOARD_WRITE_SID = "";
        public string I_BOARD_WRITE_NM = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public DataTable CS_LIST = null;
        public DataTable BOARD_CATEGORY = null;
        public DataTable BOARD_CLASS = null;
        public DataTable POST_STATUS = null;

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
            if (!IsPostBack)
            {
                DateTime currentDate = DateTime.Now;
                DateTime futureDate = currentDate.AddDays(-7);
                I_FROM_DATE = futureDate.ToString("yyyy-MM-dd");
                I_TO_DATE = currentDate.ToString("yyyy-MM-dd");
                setNaviString();
                BCATE_INQUERY();
                PSTATUS_INQUERY();
                BCALSS_INQUERY();
                search_cs_list();

            }
            else
            {
                set_param();
                setNaviString();
                BCATE_INQUERY();
                PSTATUS_INQUERY();
                BCALSS_INQUERY();
                search_cs_list();

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
            I_SEARCH_TITLE = Request.Form["I_SEARCH_TITLE"];
            I_BOARD_CLASS = Request.Form["I_BOARD_CLASS"];
            I_BOARD_CATEGORY = Request.Form["I_CATEGORY"];
            I_POST_STATUS = Request.Form["I_POST_STATUS"];
            I_FROM_DATE = Request.Form["I_FROM_DATE"];
            I_TO_DATE = Request.Form["I_TO_DATE"];
        }
        private void search_cs_list()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();


            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_CONTACT_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_SEARCH_TITLE", I_SEARCH_TITLE);
                hs.Add("I_BOARD_CLASS", I_BOARD_CLASS);
                hs.Add("I_BOARD_CATEGORY", I_BOARD_CATEGORY);
                hs.Add("I_POST_TYPE", I_POST_TYPE);//E(이메일)/S(SMS)/C(전화)/K(카카오톡)/Z(기타)
                hs.Add("I_POST_STATUS", I_POST_STATUS);//R(최초요청)/C(최종완료)/W(답변완료)/L(답변지연)
                //hs.Add("I_FROM_DATE", I_FROM_DATE.Replace("-", "").Replace("-", ""));
                //hs.Add("I_TO_DATE", I_TO_DATE.Replace("-", "").Replace("-", "")); 
                hs.Add("I_FROM_DATE", "00000000");
                hs.Add("I_TO_DATE","99991230");
                hs.Add("I_BOARD_USER_TYPE", "");
                hs.Add("I_BOARD_WRITE_SID", I_BOARD_WRITE_SID);
                hs.Add("I_BOARD_WRITE_NM", I_BOARD_WRITE_NM);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                //hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                //hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "guest" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "M_C_HELPDESK_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    CS_LIST = ds.Tables["O_RESULT_CURSOR"];
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

        //문의구분
        private void BCATE_INQUERY()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER     TCMA
                                        WHERE   CLASS_CODE = 'BOARD_CLAS'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            BOARD_CLASS = (DataTable)ds.Tables[0];
        }

        //답변상태
        private void PSTATUS_INQUERY()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER     TCMA
                                        WHERE   CLASS_CODE = 'POST_SATE'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            POST_STATUS = (DataTable)ds.Tables[0];
        }

        //카테고리
        private void BCALSS_INQUERY()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER     TCMA
                                        WHERE   CLASS_CODE = 'CS_TYPE'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            BOARD_CATEGORY = (DataTable)ds.Tables[0];
        }
    }
}
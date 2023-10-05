using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace drKid.Source.client.events
{
    public partial class C_EVENT_LIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        public string I_EVENT_PROGRESS = "*";
        public string user_flag = "";
        public string redirect_flag = "";
        
        
        
        public DataTable EVENT_LIST = null;
        public DataTable COUPON_LIST = null;
        public DataTable COUPON_AUTH = null;
        public DataTable USER_TYPE_CODE = null;


        //페이징 관련//EVENT_LIST 페이징
        public int offset = 0;
        public int matches = 6;     
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string search_btn_click_flag = "";
        //페이징 관련//COUPON_LIST 페이징
        public int matches2 = 8;     //COUPON_LIST 페이징
        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!IsPostBack)
            {
                update_EVENT_PROGRESS();
                setNaviString();
                inquery();
                
            }
            else
            {
                user_flag = Request.Form["user_flag"];
                switch (user_flag)
                {
                    case "N":
                        Session["redirect_flag"] = "coupon";
                        Response.Redirect("/Source/client/member/login/C_LOGIN_Page.aspx");
                        break;
                        
                }


                flag = Request["flag"];
                switch (flag)
                {
                    case "search":
                        I_EVENT_PROGRESS = Request["EVENT_PROGRESS"];
                        setNaviString();
                        inquery();
                       
                        break;

                }
            }
        }

        private void inquery()
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
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.EVENT_EDMS_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_CLASS", "DRKD_EVENT");
                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);
                hs.Add("I_EVENT_PROGRESS", I_EVENT_PROGRESS);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_EVENT_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    EVENT_LIST = ds.Tables["O_RESULT_CURSOR"];
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

        //private void setNaviString2()
        //{
        //    naviUrl2 = Request.Url.AbsolutePath;
        //    naviQuery2 = new Dictionary<string, string>();

        //    //offset은 있을경우 항상 받는것으로 처리
        //    if (!String.IsNullOrEmpty(Request["offset"]))
        //    {
        //        offset2 = BizUtil.getInt(Request["offset"]);
        //    }

        //    //Search 조건 Setting

        //    string queryString2 = "";
        //    foreach (KeyValuePair<string, string> query in naviQuery2)
        //    {
        //        queryString2 += (queryString2 == "" ? "" : "&") + query.Key + "=" + query.Value;
        //    }

        //    naviUrl2 = naviUrl2 + "?" + queryString2;
        //}
        private void update_EVENT_PROGRESS()
        {
            // 이벤트 리스트 페이지 진입 시 오늘날짜 기준 종료일이 지난 이벤트는 종료된 이벤트 처리
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_EVENT_UPDATE");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_EVENT_LIST");

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


    }
}
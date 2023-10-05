using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace drKid.Source.client.my
{
    public partial class C_MY_CUPONLIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string used_flag = "ALL";

        public DataTable COUPON_LIST = null;
        public DataTable COUPON_AUTH = null;
        public DataTable USER_TYPE_CODE = null;
        public DataTable COUPON_USED = null;
        public DataTable COUPON_USING = null;
        
        public int offset = 0;
        public int matches = 6;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string search_btn_click_flag = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                //쿠폰 KTG
                coupon_master();
                setNaviString();
                user_type_inquery();
            }
            else
            {
                setparams();
                coupon_master();
                setNaviString();
                user_type_inquery();
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

        private void setparams()
        {
            used_flag = Request.Form["used_flag"];
        }

        private void coupon_master()
        {
            // 이벤트 리스트 페이지 진입 시 오늘날짜 기준 종료일이 지난 이벤트는 종료된 이벤트 처리
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_MYCOUPON_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", baseUser.userSid);
                hs.Add("I_USED_FLAG", used_flag);
                

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID",baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "MYCOUPON_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    COUPON_LIST = ds.Tables["O_RESULT_CURSOR_MATER"];
                    COUPON_AUTH = ds.Tables["O_RESULT_CURSOR"];
                    COUPON_USED = ds.Tables["O_RESULT_CURSOR_USED_COUPON"];
                    COUPON_USING = ds.Tables["O_RESULT_CURSOR_USING_COUPON"];
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
        private void user_type_inquery()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER
                                        WHERE   CLASS_CODE = 'USER_TYPE'
                                                ORDER BY	ORDER_SEQ 
                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            USER_TYPE_CODE = (DataTable)ds.Tables[0];
        }
    }
}
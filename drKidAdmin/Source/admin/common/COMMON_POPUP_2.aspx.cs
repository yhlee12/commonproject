using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;


namespace drKidAdmin.Source.admin.common
{
    public partial class COMMON_POPUP_2 : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string flag = "";

        public DataTable listTable = new DataTable();

        //기본 Request Data 추가로 받아야하는 것이 있으면 아래에 추가적인 세팅이 필요.
        public string CLASS_CODE = "";
        public string SEARCH_TEXT = "";
        public string PARAM1 = "";
        public string PARAM2 = "";

        public int TOTAL_CNT = 0;

        public int cate_count = 0;
        public string[] result;
        public string[] cate_array;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            //Default Reqeust Setting
            defaultParamRequest();

            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "search":
                        inquery();
                        break;
                    default:
                        cp_ret_status = "Y";
                        cp_ret_message = "잘못된 접근입니다.";
                        break;
                }
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
                hs.Add("SP_NAME", "PKG_COMMON_CODE.PCM_CODE_LOOKUP");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_GROUP", CLASS_CODE);
                hs.Add("I_SEARCH_TEXT", SEARCH_TEXT);
                hs.Add("I_PARAM1", PARAM1);
                hs.Add("I_PARAM2", PARAM2);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "COMMON_POPUP_1");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    listTable = ds.Tables["O_RESULT_CURSOR"];
                    TOTAL_CNT = BizUtil.getInt(ds.Tables["O_RESULT_CURSOR_CNT"].Rows[0]["TOTAL_CNT"]);
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
        public static int CountOccurrences(string input, char target)
        {
            int row_count = 0;
            int string_count = 0;
            foreach (char c in input)
            {
                if (c == target)
                {
                    row_count++;
                }
                else
                {
                    string_count++;
                }
            }
            return string_count;
        }

        private void defaultParamRequest()
        {
            //Get data인 request와 form 데이터인 request가 동일할 경우 form data가 우선적으로 적용되도록, form을 뒤로미룸
            if (!String.IsNullOrEmpty(Request["SEARCH_TEXT"]))
            {
                SEARCH_TEXT = Request["SEARCH_TEXT"];
            }
            if (!String.IsNullOrEmpty(Request.Form["SEARCH_TEXT"]))
            {
                SEARCH_TEXT = Request.Form["SEARCH_TEXT"];
            }
            if (SEARCH_TEXT != "" && String.IsNullOrEmpty(Request.Form["SEARCH_TEXT"]) == true) SEARCH_TEXT = "";

            if (!String.IsNullOrEmpty(Request["CLASS_CODE"]))
            {
                CLASS_CODE = Request["CLASS_CODE"];
            }
            if (!String.IsNullOrEmpty(Request.Form["CLASS_CODE"]))
            {
                CLASS_CODE = Request.Form["CLASS_CODE"];
            }
            if (!String.IsNullOrEmpty(Request["PARAM1"]))
            {
                PARAM1 = Request["PARAM1"];
            }
            if (!String.IsNullOrEmpty(Request.Form["PARAM1"]))
            {
                PARAM1 = Request.Form["PARAM1"];
            }
            if (!String.IsNullOrEmpty(Request["PARAM2"]))
            {
                PARAM2 = Request["PARAM2"];
            }
            if (!String.IsNullOrEmpty(Request.Form["PARAM2"]))
            {
                PARAM2 = Request.Form["PARAM2"];
            }
        }
    }
}
using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.cupoint
{
    public partial class A_CUPOINT_MAGAZINE_LIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";

        //매거진 검색
        public DataTable MAGAZINE_LIST = null;
        public string I_SEARCH_TITLE = "";
        public string I_FAQ_TYPE = "";
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

        //선택 삭제 SID
        DataSet DEL_MAGAZINE_DS = new DataSet();
        string[] del_sid;
        string delete_sid_values = null;
        public string del_flag = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            I_FAQ_TYPE = Request["category_type"];
            I_SEARCH_TITLE = Request["I_TITLE"];
            search_btn_click_flag = Request["search_btn_click_flag"];
            if (!IsPostBack)
            {
                setNaviString();
                search_MAGAZINE();
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "search":
                        setNaviString();
                        search_MAGAZINE();
                        break;

                    case "del":
                        del_MAGAZINE_DS();
                        setNaviString();
                        search_MAGAZINE();
                        break;


                    //case "del":
                    //    break;
                }
            }
        }

        private void search_MAGAZINE()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            if (string.IsNullOrEmpty(I_FAQ_TYPE))
            {
                I_FAQ_TYPE = "*";
            }
            if (string.IsNullOrEmpty(I_SEARCH_TITLE))
            {
                I_SEARCH_TITLE = "";
            }
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
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_MAGAZINE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_SEARCH_TITLE", I_SEARCH_TITLE);
                hs.Add("I_FAQ_TYPE", I_FAQ_TYPE);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CUPOINT_MAGAZINE");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    MAGAZINE_LIST = ds.Tables["O_RESULT_CURSOR"];
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


        private void del_MAGAZINE_DS()
        {
            del_sid = Request.Form.GetValues("DELETE_SID");
            delete_sid_values = del_sid[0];
            // ' , ' 제거
            del_sid = delete_sid_values.Split(',').Select(s => s.Trim()).ToArray();


            //temp
            DataTable temp = new DataTable();
            temp.TableName = "MAGAZINE_DEL_TEMP";
            temp.Columns.Add("DEL_SID");
            for (int i = 0; i < del_sid.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["DEL_SID"] = del_sid[i];
                temp.Rows.Add(dr);
            }
            //삭제할 SID들의 집합
            DEL_MAGAZINE_DS.Tables.Add(temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.MAGAZINE_DEL_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", DEL_MAGAZINE_DS.GetXml());


                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_TOP");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    del_flag = "Y";
                }
                else
                {
                    biz.baseRollBack();
                    return;
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
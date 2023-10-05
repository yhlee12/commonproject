﻿using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.cs
{
    public partial class A_CS_BOARDLIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";

        public string del_flag = "";

        public string search_btn_click_flag = "";

        public DataTable NOTICE_LIST = null;
        public string I_SEARCH_TITLE = "";
        public string I_IMPORTANCE_FLAG = "";

        //리스트에서 삭제했던 FAQ의 SID
        string[] DELETE_SID_LIST_BEFORE = null;
        string delete_sid_values = null;

    

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
            search_btn_click_flag = Request["search_btn_click_flag"];
            I_IMPORTANCE_FLAG = Request["I_IMPORTANCE_FLAG"];
            I_SEARCH_TITLE = Request["I_TITLE"];
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);

            if (!IsPostBack)
            {
                setNaviString();
                search_NOTICE();
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "search":
                        setNaviString();
                        search_NOTICE();
                        break;


                    case "del":
                         del_NOTICE();
                         setNaviString();
                         search_NOTICE();
                         break;
                }
             }

            

        }


        private void search_NOTICE() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            if (string.IsNullOrEmpty(I_IMPORTANCE_FLAG)) {
                I_IMPORTANCE_FLAG = "*";
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
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_NOTICE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_IMPORTANCE_FLAG", I_IMPORTANCE_FLAG);
                hs.Add("I_SEARCH_TITLE", I_SEARCH_TITLE);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_BOARDLIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    NOTICE_LIST = ds.Tables["O_RESULT_CURSOR"];
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

        private void del_NOTICE() {

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            DELETE_SID_LIST_BEFORE = Request.Form.GetValues("DELETE_SID");
            delete_sid_values = DELETE_SID_LIST_BEFORE[0];

            //삭제할 SID가 기존 100900,100901 ... 이런식인것을 , 제거하고 배열로 저장됨
            DELETE_SID_LIST_BEFORE = delete_sid_values.Split(',').Select(s => s.Trim()).ToArray();

            if (!string.IsNullOrEmpty(DELETE_SID_LIST_BEFORE[0]))
            {
                try
                {

                    for (int i = 0; i < DELETE_SID_LIST_BEFORE.Length; i++)
                    {



                        hs.Clear();
                        hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_NOTICE_DELETE");

                        hs.Add("I_PERSON_NO", "DRKID");
                        hs.Add("I_BOARD_SID", DELETE_SID_LIST_BEFORE[i]);


                        hs.Add("I_LANGUAGE_CODE", "KOR");
                        hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_BOARDLIST");



                        ds = biz.operationSP(hs);

                        cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "Y")
                        {
                            biz.baseRollBack();
                            return;
                        }
                        //biz.baseCommit();


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
                        del_flag = "Y";
                        biz.Dispose();
                        biz = null;

                    }
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
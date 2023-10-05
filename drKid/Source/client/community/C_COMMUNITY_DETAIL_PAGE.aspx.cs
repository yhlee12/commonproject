﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace drKid.Source.client.community
{
    public partial class C_COMMUNITY_DETAIL_PAGE : PageBase
    {

        public string flag = "";
        public string del_flag = "";
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        //페이징 관련
        public int offset = 0;
        public int matches = 6;
        public int searchPages = 5;
        public int totalCount = 0;
        public int RECOMMEND_STATUS = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string search_btn_click_flag = "";
        public string input_comment_content = "";
        public string COMMENT_TITLE = "";
        public string COMMENT_SID = "";
        public string PARENT_SID = "";
        public string BOARD_SID = "";


        public DataTable DETAIL_TITLE_LIST = null;
        public DataTable DETAIL_COMMNET_LIST = null;
        public DataTable DETAIL_REPLY_LIST = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            BOARD_SID = Request["BOARD_SID"];
            if (!IsPostBack)
            {
  
                COMMUNITY_DETAIL_INQUERY();
            }
            else
            {
                flag = Request["flag"];
                
                switch (flag)
                {

                    case "delete_board":
                        delete_BOARD();
                    break;
                    case "save":
                        PARENT_SID = Request["PARENT_SID"];
                        COMMENT_TITLE = Request["write_Comment_Body"];
                        save_COMMENT();
                    break;
                    case "delete":
                        COMMENT_SID = Request["COMMENT_SID"];
                        delete_COMMENT();
                    break;
                }
            }
        }

        private void COMMUNITY_DETAIL_INQUERY()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();


            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COMMUNITY_DETAIL_LIST");
                hs.Add("I_BOARD_SID", BOARD_SID);
                hs.Add("I_USER_ID", baseUser.userId);
                
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMM_DETAIL");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    DETAIL_TITLE_LIST = ds.Tables["O_RESULT_CURSOR_DETAIL_TITLE"];
                    DETAIL_COMMNET_LIST = ds.Tables["O_RESULT_CURSOR_DETAIL_COMMENT"];
                    DETAIL_REPLY_LIST = ds.Tables["O_RESULT_CURSOR_DETAIL_REPLY"];
                    RECOMMEND_STATUS = Int32.Parse(ds.Tables["O_RESULT_CURSOR_RECOMMEND_STATUS"].Rows[0]["RECOMMENT_STATUS"] + "");
                    //페이징관련 
                    //totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    //pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
                hs.Add("I_BOARD_SID", BOARD_SID);

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
                    del_flag = "Y";
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

        private void save_COMMENT()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();


            if (string.IsNullOrEmpty(input_comment_content))
            {
                input_comment_content = "";
            }
            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_COMMENT_MASTER.PBM_COMMENT_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PARENT_SID", PARENT_SID);
                hs.Add("I_BOARD_SID", BOARD_SID);
                hs.Add("I_USER_SID", baseUser.userSid);
                hs.Add("I_COMMENT_TITLE", COMMENT_TITLE);
                hs.Add("I_POST_USER_ID", baseUser.userId);

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
                    COMMUNITY_DETAIL_INQUERY();
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

        private void delete_COMMENT()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();


            if (string.IsNullOrEmpty(input_comment_content))
            {
                input_comment_content = "";
            }
            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_COMMENT_MASTER.PBM_COMMENT_DELETE");
                hs.Add("I_COMMENT_SID", COMMENT_SID);
                hs.Add("I_BOARD_SID", BOARD_SID);
                hs.Add("I_USER_ID", baseUser.userId);
     

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
                    COMMUNITY_DETAIL_INQUERY();
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

        private void Inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COMMENT_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", baseUser.userSid);
                hs.Add("I_COMMENT_BODY", "");

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMMENT_LIST");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    //totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    //if (SEARCH_TYPE == "BEST")
                    //{
                    //    BEST_REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    //}
                    //else
                    //{
                    //    REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    //}
                    //pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
        private void textSend()
        {

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
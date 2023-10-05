﻿using drKid;
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
    public partial class A_COMM_TODAY : PageBase
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
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 5;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {

                DateTime currentDate = DateTime.Now;
                DateTime futureDate = currentDate.AddDays(-7);
                I_FROM_DATE = futureDate.ToString("yyyy-MM-dd");
                I_TO_DATE = currentDate.ToString("yyyy-MM-dd");
                COMM_list();
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "delete_board":
                        I_BOARD_SID = Request["I_BOARD_SID"];
                        delete_BOARD();

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
                    DateTime currentDate = DateTime.Now;
                  
              
                    I_TO_DATE = currentDate.ToString("yyyy-MM-dd");
                    COMM_list();
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
        private void COMM_list()
        {
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
                hs.Add("I_USER_NAME", baseUser.userName);
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
                   NORMAL_LIST = ds.Tables["O_RESULT_CURSOR1"];
                    //페이징관련
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR1_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
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
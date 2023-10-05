﻿using DevExpress.Web;
using drKid;
using Newtonsoft.Json;
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
    public partial class C_COMMUNITY_WRITE_PAGE : PageBase
    {
        public string comm_flag = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string BOARD_SID = "";
        public string I_BOARD_SID = "0";
        public string I_BOARD_CLASS = "";
        public DataTable BOARD_CATEGORY = null;
        public DataTable DETAIL_TITLE_LIST = null;
        public string I_BOARD_CATEGOR = "";
        public string I_BOARD_TITLE = "";
        public string I_BOARD_MESSAGE = "";
        public string I_BOARD_WRITE_SID = "";
        public string I_BOARD_WRITE_NM = "";
        public string I_FAQ_TYPE = "";
        //HJH 
        public string request_flag = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {
          
                request_flag = Request["request_flag"];
                if (request_flag == "Y")
                {
                    I_BOARD_SID = Request["BOARD_SID"];
                    COMMUNITY_DETAIL_INQUERY();

                }

                BCALSS_INQUERY();
                //inquery();
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "save":
                        I_BOARD_CLASS = Request["BOARD_CLASS"];
                        I_FAQ_TYPE = Request["FAQ_TYPE"];
                        setParam();
                        save_Community();

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
                hs.Add("I_BOARD_SID", I_BOARD_SID);
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
        private void BCALSS_INQUERY()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"

         SELECT
                CONCAT('DRKID_', LEFT(CLASS_CODE, 4)) AS new_code,
                CODE_CODE,
                CODE_NAME
            FROM
                TCM_CODE_MASTER TCMA
            WHERE
                CLASS_CODE = 'COMM_TYPE'
            ORDER BY
                ORDER_SEQ;
              ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            BOARD_CATEGORY = (DataTable)ds.Tables[0];
        }

        
        protected void UploadControl_FilesUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }


        private void setParam()
        {
            I_BOARD_CATEGOR = Request.Form["I_BOARD_CATEGOR"];
            I_BOARD_TITLE = Request.Form["I_TITLE"];
            I_BOARD_MESSAGE = Request.Form["smarteditor"];
        }

        private void save_Community()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_COMMUNITY_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID   ", I_BOARD_SID);
                hs.Add("I_BOARD_CLASS", "DRKD_COMM");
                hs.Add("I_FAQ_TYPE", I_FAQ_TYPE);
                hs.Add("I_BOARD_TITLE", I_BOARD_TITLE);
                hs.Add("I_BOARD_MESSAGE", I_BOARD_MESSAGE);
                hs.Add("I_BOARD_WRITE_SID", baseUser.userSid);
                hs.Add("I_POST_USER_NAME", baseUser.userName);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMM_WRITE");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BCALSS_INQUERY();
                    BOARD_SID = ds.Tables["O_RESULT_CURSOR_BOARD_SID"].Rows[0]["BOARD_SID"].ToString();
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

        public string flag { get; set; }
    }
}
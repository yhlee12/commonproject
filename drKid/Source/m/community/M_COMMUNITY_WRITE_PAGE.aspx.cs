﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.community
{
    public partial class M_COMMUNITY_WRITE_PAGE : PageBase
    {
        public string comm_flag = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string BOARD_SID = "";
        public string I_BOARD_SID = "";
        public string I_BOARD_CLASS = "";

        public string I_BOARD_CATEGOR = "";
        public string I_BOARD_TITLE = "";
        public string I_BOARD_MESSAGE = "";
        public string I_BOARD_WRITE_SID = "";
        public string I_BOARD_WRITE_NM = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                //inquery();
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        save_Community();
                        
                        break;
                }
            }
        }
        private void setParam()
        {
            I_BOARD_CATEGOR = Request.Form["I_BOARD_CATEGOR"];
            I_BOARD_TITLE = Request.Form["I_TITLE"];
            I_BOARD_MESSAGE = Request.Form["I_DETAIL"];
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
                hs.Add("I_BOARD_SID	", I_BOARD_SID);
                hs.Add("I_BOARD_CLASS", "DRKD_COMM");

                hs.Add("I_BOARD_CATEGOR", I_BOARD_CATEGOR);
                hs.Add("I_BOARD_TITLE", I_BOARD_TITLE);
                hs.Add("I_BOARD_MESSAGE", I_BOARD_MESSAGE);
                hs.Add("I_BOARD_WRITE_SID", baseUser.userSid);
                hs.Add("I_POST_USER_NAME", baseUser.userName);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                //hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                //hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS",baseUser.userIpAddress);

                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMM");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BOARD_SID = ds.Tables["O_RESULT_CURSOR_0"].Rows[0]["NEW_CONTACT_SID"].ToString();
                    Response.Redirect("/Source/m/community/M_COMMUNITY_DETAIL_PAGE.aspx?BOARD_SID=" + BOARD_SID);
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
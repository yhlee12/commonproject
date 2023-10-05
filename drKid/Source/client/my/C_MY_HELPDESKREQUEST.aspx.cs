﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.my
{
    public partial class C_MY_HELPDESKREQUEST : PageBase
    {
        public string request_flag = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string BOARD_SID = "";

        public string I_BOARD_SID = "";

        public string I_TITLE = "";
        public string I_BOARD_CLASS = "";
        public string I_CATEGORY = "";
        public string I_POST_TYPE = "";
        public string I_POST_STATUS = "";
        public string I_BOARD_USER_TYPE = "";
        public string I_DETAIL = "";
        public string I_BOARD_WRITE_SID = "";
        public string I_BOARD_WRITE_NM = "";
        public string I_BOARD_PASSWORD = "";

        public DataTable BOARD_CATEGORY = null;
        public DataTable CS_DETAIL = null;
        public DataTable CS_ANSWER_LIST = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                BCALSS_INQUERY();
                request_flag = "edit";
                I_BOARD_SID = Request["bsid"];
                if (I_BOARD_SID != null)
                {
                    //수정하기
                    inquery();
                    request_flag = "modify";
                }
            }
            else
            {
                BCALSS_INQUERY();
                set_param();
                //수정 인지 작성인지를 판단하기 위한 플레그
                request_flag = Request["request_flag"];
                //수정
                if (request_flag == "modify")
                {
                    I_BOARD_SID = Request["bsid"];
                    user_contact_update();
                }
                //새문의 작성
                else
                {
                    user_contact_add();
                }

            }
        }
        private void set_param()
        {
            I_TITLE = Request.Form["I_TITLE"];
            I_CATEGORY = Request.Form["I_CATEGORY"];
            I_POST_STATUS = Request.Form["I_POST_STATUS"];
            I_BOARD_USER_TYPE = Request.Form["I_BOARD_USER_TYPE"];
            I_DETAIL = Request.Form["I_DETAIL"].Replace("\r\n", "<br/>");
            I_BOARD_WRITE_SID = Request.Form["PHONE_NUM"];
            I_BOARD_USER_TYPE = Request.Form["I_BOARD_USER_TYPE"];
            I_BOARD_WRITE_NM = Request.Form["I_BOARD_WRITE_NM"];
            I_BOARD_PASSWORD = Request.Form["I_PASSWORD"];
        }

        private void user_contact_add()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_CSBOARD_EDIT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_CLASS", "HELPDESK");
                hs.Add("I_BOARD_CATEGORY", I_CATEGORY);
                hs.Add("I_BOARD_TITLE", I_TITLE);
                hs.Add("I_BOARD_WRITE_SID", this.baseUser.userSid);
                hs.Add("I_BOARD_USER_TYPE", this.baseUser.userType);
                hs.Add("I_BOARD_WRITE_NM", this.baseUser.userId);
                hs.Add("I_BOARD_PASSWORD", I_BOARD_PASSWORD);
                hs.Add("I_POST_TYPE", 'Z');
                hs.Add("I_POST_STATUS", 'R'); // R답변대기 W답변완료 L답변중
                hs.Add("I_BOARD_MESSAGE", I_DETAIL);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_CS_HELP");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BOARD_SID = ds.Tables["O_RESULT_CURSOR_0"].Rows[0]["NEW_CONTACT_SID"].ToString();
                    Response.Redirect("/Source/client/my/C_MY_HELPDESKDETAIL.aspx?bsid=" + BOARD_SID);
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
        private void user_contact_update()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_CSBOARD_UPDATE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", I_BOARD_SID);
                hs.Add("I_BOARD_CLASS", "HELPDESK");
                hs.Add("I_BOARD_CATEGORY", I_CATEGORY);
                hs.Add("I_BOARD_TITLE", I_TITLE);
                hs.Add("I_BOARD_MESSAGE", I_DETAIL);
                hs.Add("I_BOARD_WRITE_SID", this.baseUser.userSid);
                hs.Add("I_BOARD_WRITE_NM", this.baseUser.userId);
                hs.Add("I_BOARD_PASSWORD", I_BOARD_PASSWORD);
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_CS_HELP");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    Response.Redirect("/Source/client/my/C_MY_HELPDESKDETAIL.aspx?bsid=" + I_BOARD_SID);
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
        
        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_CSBOARD_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", I_BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_CS_HELP");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    CS_DETAIL = ds.Tables["O_RESULT_CURSOR_4"];
                    CS_ANSWER_LIST = ds.Tables["O_RESULT_CURSOR_3"];
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
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER     TCMA
                                        WHERE   CLASS_CODE  =   'CS_TYPE'
                                        AND     CODE_CODE   =   'CS05'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            BOARD_CATEGORY = (DataTable)ds.Tables[0];
        }
    }
}
﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;

namespace drKidAdmin.Source.admin.info
{
    public partial class A_INFO_TERM : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string term_save_flag = "";

        public string flag = "";



        //권한 클래스 저장
        string CLASS_CODE;
        string CLASS_NAME;
        //약관 내용 저장
        string CHOICE_CLASS_CODE;
        string TERM_BODY;
        //권한 삭제
        string[] AUTH_CHECKER;
        //현재 선택된 권한
        public string SELECT_AUTH;
        //권한 저장
        string[] AUTH_USABLE_FLAG;
        string[] SUB_MENU_SID;
        string[] AUTH_VISIBLE;
        string[] AUTH_EDIT;
        string[] AUTH_FLAG1;
        string[] AUTH_FLAG2;

        public DataTable listTable = null;
        DataSet SaveDs = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                flag = Request["flag"];

                //Default Setting
                if (!String.IsNullOrEmpty(Request["SELECT_AUTH"]))
                {
                    SELECT_AUTH = Request["SELECT_AUTH"];
                }

                switch (flag)
                {
                    case "class-save":
                        CLASS_CODE = Request.Form["CLASS_CODE"];
                        CLASS_NAME = Request.Form["CLASS_NAME"];
                        saveClass();
                        break;
                    case "class-delete":
                        AUTH_CHECKER = Request.Form.GetValues("AUTH_CHECKER");
                        //삭제하는 Class가 선택되어있을경우 선택되어있는 AUTH를 초기화
                        int checker = Array.IndexOf(AUTH_CHECKER, SELECT_AUTH);
                        if (checker != -1)
                        {
                            SELECT_AUTH = "";
                        }
                        deleteTerm();
                        break;
                    case "save":
                        if (SELECT_AUTH == "")
                        {
                            cp_ret_status = "Y";
                            cp_ret_message = "저장될 권한 클래스가 지정되지 않았습니다.";
                            return;
                        }
                        setParam();
                        saveBody();
                        break;
                }
            }
        }

        private void saveBody()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_SAVE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CLASS_CODE", CHOICE_CLASS_CODE);
                hs.Add("I_CLASS_NAME", CLASS_NAME);
                hs.Add("I_TERM_BODY", TERM_BODY);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                    term_save_flag = "Y";

                    if (cp_ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                }
                else
                {
                    //저장 실패시에도 검색이 되도록 유도.
                    //but Error message는 나와야하므로 ret_status로 신규 string 처리.
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    string ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    string ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                    else
                    {
                        //에러일경우 binding
                        cp_ret_status = ret_status;
                        cp_ret_message = ret_message;
                    }
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

        private void setParam()
        {
            CHOICE_CLASS_CODE = Request.Form["CHOICE_CLASS_CODE"];
            TERM_BODY = Request.Form["TERM_BODY"];
        }


        private void saveClass()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_CODE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CLASS_CODE", CLASS_CODE);
                hs.Add("I_CLASS_NAME", CLASS_NAME);
                hs.Add("I_TERM_BODY", null);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                }
                else
                {
                    //저장 실패시에도 검색이 되도록 유도.
                    //but Error message는 나와야하므로 ret_status로 신규 string 처리.
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    string ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    string ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                    else
                    {
                        //에러일경우 binding
                        cp_ret_status = ret_status;
                        cp_ret_message = ret_message;
                    }
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

        private void deleteTerm()
        {
            //한줄이므로 따로 param Setting을 만들지않고 사용
            DataSet deleteDs = new DataSet();
            DataTable temp = new DataTable();
            temp.TableName = "DELETE_TERM";
            temp.Columns.Add("CLASS_CODE");

            if (AUTH_CHECKER != null && AUTH_CHECKER.Length > 0)
            {
                for (int i = 0; i < AUTH_CHECKER.Length; i++)
                {
                    DataRow dr = temp.NewRow();
                    dr["CLASS_CODE"] = AUTH_CHECKER[i];
                    temp.Rows.Add(dr);
                }
                deleteDs.Tables.Add(temp);
            }
            else
            {
                cp_ret_status = "Y";
                cp_ret_message = "에러가 감지되었습니다.다시 화면을 열어주세요.";
                return;
            }

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_DELETE");//PKG_INFO_MASTER$PIM_TERM_DELETE
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", deleteDs.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                }
                else
                {
                    //저장 실패시에도 검색이 되도록 유도.
                    //but Error message는 나와야하므로 ret_status로 신규 string 처리.
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                    ds = biz.operationSP(hs);

                    string ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    string ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                    }
                    else
                    {
                        //에러일경우 binding
                        cp_ret_status = ret_status;
                        cp_ret_message = ret_message;
                    }
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
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_TERM_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_TERM");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    listTable = ds.Tables["O_RESULT_CURSOR"];
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
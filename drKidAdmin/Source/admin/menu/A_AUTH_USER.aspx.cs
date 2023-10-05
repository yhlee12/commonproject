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

namespace drKidAdmin.Source.admin.menu
{
    public partial class A_AUTH_USER : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string flag = "";

        public DataTable COMMON_AUTH_LIST = new DataTable();
        public DataTable USER_AUTH_LIST = new DataTable();

        //inquery
        public string AUTH_USER = "";
        public string AUTH_USER_SID = "";
        //save
        public string[] USED_AUTH_ID;
        DataSet SaveDs = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "inquery":
                        requestSetParam();
                        inquery();
                        break;
                    case "save":
                        requestSetParam();
                        saveData();
                        break;
                    default:
                        cp_ret_status = "Y";
                        cp_ret_message = "잘못된 접근입니다.";
                        break;
                }
            }
        }

        private void saveData()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_AUTH_USER.PAU_AUTH_USER_SAVE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", AUTH_USER_SID);
                hs.Add("I_XML", SaveDs.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_AUTH_USER");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_AUTH_USER.PAU_AUTH_USER_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_USER_SID", AUTH_USER_SID);

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_AUTH_USER");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        COMMON_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_COMMON"];
                        USER_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_USED"];
                    }
                }
                else
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_AUTH_USER.PAU_AUTH_USER_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_USER_SID", AUTH_USER_SID);

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_AUTH_USER");

                    ds = biz.operationSP(hs);

                    string ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    string ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (ret_status == "N")
                    {
                        COMMON_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_COMMON"];
                        USER_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_USED"];
                    }
                    else
                    {
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
                hs.Add("SP_NAME", "PKG_AUTH_USER.PAU_AUTH_USER_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", AUTH_USER_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_AUTH_USER");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    COMMON_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_COMMON"];
                    USER_AUTH_LIST = ds.Tables["O_RESULT_CURSOR_USED"];
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

        private void requestSetParam()
        {
            AUTH_USER = Request.Form["AUTH_USER"];
            AUTH_USER_SID = Request.Form["AUTH_USER_SID"];

            if(flag == "save")
            {
                USED_AUTH_ID = Request.Form.GetValues("USED_AUTH_ID");
                SaveDs = new DataSet();
                DataTable temp = new DataTable();
                temp.TableName = "SAVE_AUTH_USED";
                temp.Columns.Add("AUTH_ID");

                if(USED_AUTH_ID != null)
                {
                    for(int i = 0; i < USED_AUTH_ID.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["AUTH_ID"] = USED_AUTH_ID[i];
                        temp.Rows.Add(dr);
                    }
                }
                SaveDs.Tables.Add(temp);
            }
        }
    }
}
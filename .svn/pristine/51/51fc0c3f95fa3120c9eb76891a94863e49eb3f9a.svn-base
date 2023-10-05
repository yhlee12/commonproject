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

namespace drKidAdmin.Source.admin.product
{
    public partial class A_PRODUCT_CATEGORY : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string flag = "";

        public DataTable listTable = new DataTable();

        DataSet saveDs;
        //
        string[] CATEGORY_SID;
        string[] CATEGORY_SEQ;
        string[] CATEGORY_NAME;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        saveCategory();
                        break;
                    default:
                        cp_ret_status = "Y";
                        cp_ret_message = "잘못된 접근입니다.";
                        break;
                }
            }
        }

        private void saveCategory()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_CATEGORY_MASTER.PCM_CATEGORY_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", saveDs.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CATEGORY");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    biz.baseCommit();

                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_CATEGORY_MASTER.PCM_CATEGORY_INQUERY");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CATEGORY");

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
                    biz.baseRollBack();
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
                biz.baseRollBack();
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
            CATEGORY_SID = Request.Form.GetValues("CATEGORY_SID");
            CATEGORY_SEQ = Request.Form.GetValues("CATEGORY_SEQ");
            CATEGORY_NAME = Request.Form.GetValues("CATEGORY_NAME");
            if (flag == "save")
            {
                saveDs = new DataSet();
                DataTable temp = new DataTable();
                temp.TableName = "SAVE_CATEGORY_TEMP";
                temp.Columns.Add("CATEGORY_SID");
                temp.Columns.Add("CATEGORY_SEQ");
                temp.Columns.Add("CATEGORY_NAME");
                if (CATEGORY_SID.Length > 0 && CATEGORY_SID != null)
                {
                    for (int i = 0; i < CATEGORY_SID.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["CATEGORY_SID"] = CATEGORY_SID[i];
                        dr["CATEGORY_SEQ"] = CATEGORY_SEQ[i];
                        dr["CATEGORY_NAME"] = CATEGORY_NAME[i];
                        temp.Rows.Add(dr);
                    }
                }
                saveDs.Tables.Add(temp);
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
                hs.Add("SP_NAME", "PKG_CATEGORY_MASTER.PCM_CATEGORY_INQUERY");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CATEGORY");

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
                biz.baseRollBack();
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
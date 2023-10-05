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
    public partial class A_MENU_LIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        //Choice Menu Now
        public string CHOICE_SID;
        //Menu
        string[] BIG_MENU_NAME;
        string[] BIG_MENU_FOLDER;
        string[] BIG_MENU_FILE;
        string[] BIG_MENU_PARAM;
        string[] BIG_MENU_BIGO;
        string[] BIG_SEQ;
        string[] MENU_SID;
        //Sub Menu
        string[] SUB_MENU_NAME;
        string[] SUB_MENU_FOLDER;
        string[] SUB_MENU_FILE;
        string[] SUB_MENU_PARAM;
        string[] SUB_MENU_BIGO;
        string[] SUB_SEQ;
        string[] SUB_MENU_SID;

        DataSet saveDs = null;
        public DataTable listTable = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            listTable = new DataTable();
            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        saveMenu();
                        break;
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
                hs.Add("SP_NAME", "PKG_MENU_MASTER.PMM_MENU_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_MENU_LIST");

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

        private void saveMenu()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_MENU_MASTER.PMM_MENU_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", saveDs.GetXml());
                hs.Add("I_CHOICE_SID", CHOICE_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());   
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_MENU_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_MENU_MASTER.PMM_MENU_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_MENU_LIST");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
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
            CHOICE_SID = Request.Form["CHOICE_SID"];

            BIG_MENU_NAME = Request.Form.GetValues("BIG_MENU_NAME");//[0]홈 [1]메뉴관리
            BIG_MENU_FOLDER = Request.Form.GetValues("BIG_MENU_FOLDER");
            BIG_MENU_FILE = Request.Form.GetValues("BIG_MENU_FILE");
            BIG_MENU_PARAM = Request.Form.GetValues("BIG_MENU_PARAM");
            BIG_MENU_BIGO = Request.Form.GetValues("BIG_MENU_BIGO");
            BIG_SEQ = Request.Form.GetValues("BIG_SEQ");
            MENU_SID = Request.Form.GetValues("MENU_SID");

            SUB_MENU_NAME = Request.Form.GetValues("SUB_MENU_NAME");
            SUB_MENU_FOLDER = Request.Form.GetValues("SUB_MENU_FOLDER");
            SUB_MENU_FILE = Request.Form.GetValues("SUB_MENU_FILE");
            SUB_MENU_PARAM = Request.Form.GetValues("SUB_MENU_PARAM");
            SUB_MENU_BIGO = Request.Form.GetValues("SUB_MENU_BIGO");
            SUB_SEQ = Request.Form.GetValues("SUB_SEQ");
            SUB_MENU_SID = Request.Form.GetValues("SUB_MENU_SID");

            if(flag == "save")
            {
                saveDs = new DataSet();
                DataTable temp = new DataTable();
                temp.TableName = "MENU_BIG";
                temp.Columns.Add("BIG_MENU_NAME");
                temp.Columns.Add("BIG_MENU_FOLDER");
                temp.Columns.Add("BIG_MENU_FILE");
                temp.Columns.Add("BIG_MENU_PARAM");
                temp.Columns.Add("BIG_MENU_BIGO");
                temp.Columns.Add("BIG_SEQ");
                temp.Columns.Add("MENU_SID");

                if(MENU_SID != null)
                {
                    for(int i = 0; i < MENU_SID.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["BIG_MENU_NAME"] = BIG_MENU_NAME[i];
                        dr["BIG_MENU_FOLDER"] = BIG_MENU_FOLDER[i];
                        dr["BIG_MENU_FILE"] = BIG_MENU_FILE[i];
                        dr["BIG_MENU_PARAM"] = BIG_MENU_PARAM[i];
                        dr["BIG_MENU_BIGO"] = BIG_MENU_BIGO[i];
                        dr["BIG_SEQ"] = BIG_SEQ[i];
                        dr["MENU_SID"] = MENU_SID[i];
                        temp.Rows.Add(dr);
                    }
                }
                saveDs.Tables.Add(temp);

                DataTable secontemp = new DataTable();
                secontemp.TableName = "MENU_SUB";
                secontemp.Columns.Add("CHOICE_MENU_SID");
                secontemp.Columns.Add("SUB_MENU_NAME");
                secontemp.Columns.Add("SUB_MENU_FOLDER");
                secontemp.Columns.Add("SUB_MENU_FILE");
                secontemp.Columns.Add("SUB_MENU_PARAM");
                secontemp.Columns.Add("SUB_MENU_BIGO");
                secontemp.Columns.Add("SUB_SEQ");
                secontemp.Columns.Add("SUB_MENU_SID");

                if (SUB_MENU_SID != null)
                {
                    for (int i = 0; i < SUB_MENU_SID.Length; i++)
                    {
                        DataRow dr = secontemp.NewRow();
                        dr["CHOICE_MENU_SID"] = CHOICE_SID;
                        dr["SUB_MENU_NAME"] = SUB_MENU_NAME[i];
                        dr["SUB_MENU_FOLDER"] = SUB_MENU_FOLDER[i];
                        dr["SUB_MENU_FILE"] = SUB_MENU_FILE[i];
                        dr["SUB_MENU_PARAM"] = SUB_MENU_PARAM[i];
                        dr["SUB_MENU_BIGO"] = SUB_MENU_BIGO[i];
                        dr["SUB_SEQ"] = SUB_SEQ[i];
                        dr["SUB_MENU_SID"] = SUB_MENU_SID[i];
                        secontemp.Rows.Add(dr);
                    }
                }
                saveDs.Tables.Add(secontemp);
            }
        }
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;
using Newtonsoft.Json;

namespace drKidAdmin.Source.admin.stock
{
    public partial class A_STOCK_GRINSERT : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string flag = "";

        //GR NO Checking
        public string GR_NO = "";
        public string GR_DT = "";

        public Int64 GR_SID = 0;
        public string STATUS = "";
        public string GR_EST = "";

        string[] STOCK_COD;
        string[] GR_PCS;
        string[] GR_SEQ;

        DataSet saveDs;

        public DataTable listtable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request["GR_NO"]))
                {
                    GR_NO = Request["GR_NO"];
                    inquery();
                }
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        saveGR();
                        break;
                    default:
                        cp_ret_status = "Y";
                        cp_ret_message = "잘못된 접근입니다.";
                        break;
                }
            }
        }

        private void saveGR()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_INSERT");
                hs.Add("I_PERSON_NO","DRKID");
                hs.Add("I_GR_NO",GR_NO);
                hs.Add("I_GR_SID",GR_SID);
                hs.Add("I_STATUS",STATUS);
                hs.Add("I_GR_EST",GR_EST.Replace("-",""));
                hs.Add("I_XML",saveDs.GetXml());
                hs.Add("I_PIC_NAME",baseUser.userName);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRINSERT");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    GR_NO = ds.Tables["O_RESULT_CURSOR"].Rows[0]["S_GR_NO"].ToString();
                    GR_SID = BizUtil.getInt64(ds.Tables["O_RESULT_CURSOR"].Rows[0]["S_GR_SID"]);
                    //UpDate Stock Master
                    //입고가 완료됬으므로,
                    if (STATUS == "C")
                    {
                        //history Save
                        hs.Clear();
                        hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_HIST_SAVE");
                        hs.Add("I_PERSON_NO", "DRKID");
                        hs.Add("I_GR_SID", GR_SID);

                        hs.Add("I_LANGUAGE_CODE", "KOR");
                        hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRINSERT");

                        ds = biz.operationSPTr(hs);

                        cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "N")
                        {
                            //mst Update
                            hs.Clear();
                            hs.Add("SP_NAME", "PKG_WM_STOCK.PWM_STOCK_HIST_APPLY");
                            hs.Add("I_PERSON_NO", "DRKID");
                            hs.Add("I_SRC_SID", GR_SID);

                            hs.Add("I_LANGUAGE_CODE", "KOR");
                            hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                            hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                            hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                            hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRINSERT");

                            ds = biz.operationSPTr(hs);

                            cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                            cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                            if (cp_ret_status == "N")
                            {

                            }
                        }
                    }

                    biz.baseCommit();


                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_SELECT");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_GR_NO", GR_NO);

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRINSERT");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        if (ds.Tables["O_RESULT_CURSOR"].Rows.Count > 0)
                        {
                            GR_NO = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_NO"].ToString();
                            GR_SID = BizUtil.getInt64(ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_SID"]);
                            STATUS = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STATUS"].ToString();
                            GR_EST = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_EST"].ToString();
                            GR_DT = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_DT"].ToString();

                            listtable = ds.Tables["O_RESULT_CURSOR_DET"];
                        }
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
            GR_NO = Request.Form["GR_NO"];
            GR_SID = BizUtil.getInt64(Request.Form["GR_SID"]);
            STATUS = Request.Form["STATUS"];
            GR_EST = Request.Form["GR_EST"];

            STOCK_COD = Request.Form.GetValues("STOCK_COD");
            GR_PCS = Request.Form.GetValues("GR_PCS");
            GR_SEQ = Request.Form.GetValues("GR_SEQ");

            if(flag == "save")
            {
                saveDs = new DataSet();
                DataTable temptable = new DataTable();
                temptable.TableName = "GR_DET_TEMP";
                temptable.Columns.Add("STOCK_COD");
                temptable.Columns.Add("GR_PCS");
                temptable.Columns.Add("GR_SEQ");

                if(STOCK_COD != null && STOCK_COD.Length > 0)
                {
                    for(int i = 0; i < STOCK_COD.Length; i++)
                    {
                        DataRow dr = temptable.NewRow();
                        dr["STOCK_COD"] = STOCK_COD[i];
                        dr["GR_PCS"] = GR_PCS[i];
                        dr["GR_SEQ"] = GR_SEQ[i];
                        temptable.Rows.Add(dr);
                    }
                }
                saveDs.Tables.Add(temptable);
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
                hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_SELECT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_GR_NO", GR_NO);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRINSERT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    if(ds.Tables["O_RESULT_CURSOR"].Rows.Count > 0)
                    {
                        GR_NO = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_NO"].ToString();
                        GR_SID = BizUtil.getInt64(ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_SID"]);
                        STATUS = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STATUS"].ToString();
                        GR_EST = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_EST"].ToString();
                        GR_DT = ds.Tables["O_RESULT_CURSOR"].Rows[0]["GR_DT"].ToString();

                        listtable = ds.Tables["O_RESULT_CURSOR_DET"];
                    }
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
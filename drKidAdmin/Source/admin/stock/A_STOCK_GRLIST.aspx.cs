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
    public partial class A_STOCK_GRLIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string flag = "";

        public string STOCK_COD = "";
        public string STATUS = "";
        public string GR_EST = "";
        public string GR_EST_TO = "";

        //페이징 관련
        public int custom_Paging = 0;
        public int offset = 0;
        public int matches = 20;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;

        public DataTable listTable = new DataTable();

        //컨펌 관련
        string[] GR_SID_CHECKBOX;
        DataSet saveDs;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            GR_EST = DateTime.Now.ToString("yyyy-MM-dd");
            GR_EST_TO = DateTime.Now.ToString("yyyy-MM-dd");
            STATUS = "I";
            if (!IsPostBack)
            {
                setNaviString();
                inquery();
            }
            else
            {
                flag = Request.Form["flag"];

                switch (flag)
                {
                    case "inquery":
                        setNaviString();
                        inquery();
                        break;
                    case "confirm":
                        setNaviString();
                        setParam();
                        confirmData();
                        break;
                    default:
                        cp_ret_status = "Y";
                        cp_ret_message = "잘못된 접근입니다.";
                        break;
                }
            }
        }

        private void confirmData()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            if (custom_Paging > 0)
            {
                offset = custom_Paging;
            }
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_CONFRIM");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", saveDs.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRLIST");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    biz.baseCommit();

                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_LIST");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_STOCK_COD", STOCK_COD);
                    hs.Add("I_STATUS", STATUS);
                    hs.Add("I_GR_EST", GR_EST.Replace("-", ""));
                    hs.Add("I_GR_EST_TO", GR_EST_TO.Replace("-", ""));

                    hs.Add("I_OFFSET", offset);
                    hs.Add("I_MATCHES", matches);

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRLIST");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        listTable = ds.Tables["O_RESULT_CURSOR"];
                        if (ds.Tables["O_RESULT_CURSOR_CNT"].Rows.Count > 0)
                        {
                            totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_CNT"].Rows[0]["TOTAL_COUNT"] + "");
                        }
                        else
                        {
                            totalCount = 0;
                        }
                        pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
            GR_SID_CHECKBOX = Request.Form.GetValues("GR_SID_CHECKBOX");
            if(flag == "confirm")
            {
                saveDs = new DataSet();
                DataTable temp = new DataTable();
                temp.TableName = "CONFRIM_TEMP_SID";
                temp.Columns.Add("GR_SID");
                if(GR_SID_CHECKBOX.Length > 0 && GR_SID_CHECKBOX != null)
                {
                    for(int i = 0; i < GR_SID_CHECKBOX.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["GR_SID"] = GR_SID_CHECKBOX[i];
                        temp.Rows.Add(dr);
                    }
                }
                saveDs.Tables.Add(temp);
            }
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

            if (!String.IsNullOrEmpty(Request["STOCK_COD"]))
            {
                STOCK_COD = Request["STOCK_COD"];
            }
            if (!String.IsNullOrEmpty(Request["STATUS"]))
            {
                STATUS = Request["STATUS"];
            }
            if (!String.IsNullOrEmpty(Request["GR_EST"]))
            {
                GR_EST = Request["GR_EST"];
            }
            if (!String.IsNullOrEmpty(Request["GR_EST_TO"]))
            {
                GR_EST_TO = Request["GR_EST_TO"];
            }
            if (flag == "inquery")
            {
                if (!String.IsNullOrEmpty(Request.Form["STOCK_COD"]))
                {
                    STOCK_COD = Request.Form["STOCK_COD"];
                }
                if (!String.IsNullOrEmpty(Request.Form["STATUS"]))
                {
                    STATUS = Request.Form["STATUS"];
                }
                if (!String.IsNullOrEmpty(Request.Form["GR_EST"]))
                {
                    GR_EST = Request.Form["GR_EST"];
                }
                if (!String.IsNullOrEmpty(Request.Form["GR_EST_TO"]))
                {
                    GR_EST_TO = Request.Form["GR_EST_TO"];
                }
            }

            naviQuery.Add("STOCK_COD", STOCK_COD);
            naviQuery.Add("STATUS", STATUS);
            naviQuery.Add("GR_EST", GR_EST);
            naviQuery.Add("GR_EST_TO", GR_EST_TO);

            //Search 조건 Setting

            string queryString = "";
            foreach (KeyValuePair<string, string> query in naviQuery)
            {
                queryString += (queryString == "" ? "" : "&") + query.Key + "=" + query.Value;
            }

            naviUrl = naviUrl + "?" + queryString;
        }

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_STOCK_GR.PSG_STOCK_GR_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_STOCK_COD", STOCK_COD);
                hs.Add("I_STATUS", STATUS);
                hs.Add("I_GR_EST", GR_EST.Replace("-",""));
                hs.Add("I_GR_EST_TO", GR_EST_TO.Replace("-", ""));

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_GRLIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    listTable = ds.Tables["O_RESULT_CURSOR"];
                    if (ds.Tables["O_RESULT_CURSOR_CNT"].Rows.Count > 0)
                    {
                        totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_CNT"].Rows[0]["TOTAL_COUNT"] + "");
                    }
                    else
                    {
                        totalCount = 0;
                    }
                    pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
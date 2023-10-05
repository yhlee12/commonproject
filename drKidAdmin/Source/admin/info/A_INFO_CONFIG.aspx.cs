using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;

namespace drKidAdmin.Source.admin.info
{
    public partial class A_INFO_CONFIG : PageBase
    {
        public DataTable USER_CONFIGS = null;

        public string I_PERSON_NO = "";
        public string USER_TYPE = "";
        public string USER_TYPE_NAME = "";
        public string PV_CREATE_RATE = "";
        public string REFERRAL_REWARD = "";
        public string LINK_REWARD = "";
        public string IGR_REWARD = "";
        public string BV_DISCOUNT_RATE = "";

        public int offset = 0;
        public int matches = 20;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;

        public string flag = "";
        public string authId = "";
        public string alert_flag = "";


        public string cp_ret_message = "";
        public string cp_ret_status = "";

        public DataTable category_info = null;

        DataSet CONFIG_DS = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            authId = baseUser.userId;
            alert_flag = "";

            if (!IsPostBack)
            {
                setNaviString();
                configList();
            }
            else
            {
                if (!String.IsNullOrEmpty(Request.Form["flag"]))
                {
                    flag = Request.Form["flag"];
                    if (flag == "save")
                    {
                        setParam();
                        setNaviString();
                        saveUserConfig();
                        configList();
                    }
                    else
                    {

                    }
                }
            }
        }

        

        private void setParam()
        {
            USER_TYPE = Request.Form["USER_TYPE"];
            USER_TYPE_NAME = Request.Form["USER_TYPE_NAME"];
            PV_CREATE_RATE = Request.Form["PV_CREATE_RATE"];
            REFERRAL_REWARD = Request.Form["REFERRAL_REWARD"];
            LINK_REWARD = Request.Form["LINK_REWARD"];
            IGR_REWARD = Request.Form["IGR_REWARD"];
            BV_DISCOUNT_RATE = Request.Form["BV_DISCOUNT_RATE"];

            CONFIG_DS = new DataSet();
            DataTable tempTable = new DataTable();
            tempTable.TableName = "CONFIG_SAVE";
            tempTable.Columns.Add("USER_TYPE");
            tempTable.Columns.Add("PV_CREATE_RATE");
            tempTable.Columns.Add("REFERRAL_REWARD");
            tempTable.Columns.Add("LINK_REWARD");
            tempTable.Columns.Add("IGR_REWARD");
            tempTable.Columns.Add("BV_DISCOUNT_RATE");

            for (int i = 0; i < USER_TYPE.Split(',').Length; i++)
            {
                DataRow dr = tempTable.NewRow();
                dr["USER_TYPE"] = USER_TYPE.Split(',')[i];
                dr["PV_CREATE_RATE"] = PV_CREATE_RATE.Split(',')[i];
                dr["REFERRAL_REWARD"] = REFERRAL_REWARD.Split(',')[i];
                dr["LINK_REWARD"] = LINK_REWARD.Split(',')[i];
                dr["IGR_REWARD"] = IGR_REWARD.Split(',')[i];
                dr["BV_DISCOUNT_RATE"] = BV_DISCOUNT_RATE.Split(',')[i];
                tempTable.Rows.Add(dr);
            }
            CONFIG_DS.Tables.Add(tempTable);
            
        }

        private void saveUserConfig()
        {
            Hashtable hs = null;
            DataSet ds = null;
            bizHelper biz = null;

            try
            {
                hs = new Hashtable();
                ds = new DataSet();
                biz = new bizHelper();

                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_CONFIG_UPDATE");   ////PKG_INFO_MASTER.PIM_CONFIG_UPDATE
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", CONFIG_DS.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_CONFIG");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "Y")
                {
                    biz.baseRollBack();
                    return;
                }
                else
                {
                    biz.baseCommit();
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_CONFIG_LIST");   //PKG_MEMBER_MASTER$PMM_MEMBER_LIST
                    hs.Add("I_PERSON_NO", "DRKID");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_CONFIG");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        USER_CONFIGS = (DataTable)ds.Tables["O_RESULT_CURSOR"];
                        totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                        pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);

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

        private void setNaviString()
        {
            naviUrl = Request.Url.AbsolutePath;
            naviQuery = new Dictionary<string, string>();

            //offset은 있을경우 항상 받는것으로 처리
            if (!String.IsNullOrEmpty(Request["offset"]))
            {
                offset = BizUtil.getInt(Request["offset"]);
            }


            string queryString = "";
            foreach (KeyValuePair<string, string> query in naviQuery)
            {
                queryString += (queryString == "" ? "" : "&") + query.Key + "=" + query.Value;
            }

            naviUrl = naviUrl + "?" + queryString;
        }

        private void configList()
        {
            Hashtable hs = null;
            DataSet ds = null;
            bizHelper biz = null;

            try
            {
                hs = new Hashtable();
                ds = new DataSet();
                biz = new bizHelper();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_CONFIG_LIST");//PKG_MEMBER_MASTER$PMM_MEMBER_LIST
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_CONFIG");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    USER_CONFIGS = (DataTable)ds.Tables["O_RESULT_CURSOR"];
                    //Session[SSID_MANAGER_LIST] = (DataTable)ds.Tables["O_RESULT_CURSOR"];
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
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
        private void inquery()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER
                                        WHERE   CLASS_CODE = 'CP_TYPE'
                                                ORDER BY	ORDER_SEQ 
                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            category_info = (DataTable)ds.Tables[0];
        }
    }
}
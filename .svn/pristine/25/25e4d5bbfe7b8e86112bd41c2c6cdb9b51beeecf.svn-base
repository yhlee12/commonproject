using DevExpress.Web;
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

namespace drKidAdmin.Source.admin.product
{
    public partial class A_PRODUCT_TEMPLATE : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        public string del_flag = "";
        
        //템플릿
        public string template_type = "DELIVERY";
        public DataTable TEMPLATE_LIST = null;

        //리스트에서 삭제했던 TEMPLATE의 SID
        string[] DELETE_SID_LIST_BEFORE = null;
        string delete_sid_values = null;

        DataSet DEL_TEMPLATE_DS = new DataSet();//선택 삭제 SID

        //페이징 관련
        public int custom_Paging = 0;
        public string search_btn_click_flag = "";
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            search_btn_click_flag = Request["search_btn_click_flag"];

            if (!IsPostBack)
            {

                inquiry();

            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "TEM_DELIVERY":
                        inquiry();
                        break;

                    case "TEM_EXCHANGE":
                        template_type = "EXCHANGE";
                        inquiry();
                        break;

                    case "del":
                        del_template();
                        break;
                }
            }

        }

        private void del_template() {

            DELETE_SID_LIST_BEFORE = Request.Form.GetValues("DELETE_SID");
            delete_sid_values = DELETE_SID_LIST_BEFORE[0];
            //삭제할 SID가 기존 100900,100901 ... 이런식인것을 , 제거하고 배열로 저장됨
            DELETE_SID_LIST_BEFORE = delete_sid_values.Split(',').Select(s => s.Trim()).ToArray();

            //temp
            DataTable temp = new DataTable();
            temp.TableName = "TEMPLATE_DEL_TEMP";
            temp.Columns.Add("DEL_SID");

            for (int i = 0; i < DELETE_SID_LIST_BEFORE.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["DEL_SID"] = DELETE_SID_LIST_BEFORE[i];
                temp.Rows.Add(dr);
            }
            //삭제할 SID들의 집합
            DEL_TEMPLATE_DS.Tables.Add(temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_TERMS_CONFIG.TEMPLATE_DEL_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", DEL_TEMPLATE_DS.GetXml());


                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_TEMPLATE");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    del_flag = "Y";
                    inquiry();
                }
                else
                {
                    biz.baseRollBack();
                    return;
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
        private void inquiry() {
            

            if (search_btn_click_flag == "Y")
            {
                offset = 0;
            }
            setNaviString();

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_TERMS_CONFIG.PTC_TEMPLATE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_TEMPLATE_TYPE", template_type);
          

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_BOARDLIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    TEMPLATE_LIST = ds.Tables["O_RESULT_CURSOR"];
                    //페이징관련
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
        private void setNaviString()
        {
            naviUrl = Request.Url.AbsolutePath;
            naviQuery = new Dictionary<string, string>();

            //offset은 있을경우 항상 받는것으로 처리
            if (!String.IsNullOrEmpty(Request["offset"]))
            {
                offset = BizUtil.getInt(Request["offset"]);
            }

            //Search 조건 Setting

            string queryString = "";
            foreach (KeyValuePair<string, string> query in naviQuery)
            {
                queryString += (queryString == "" ? "" : "&") + query.Key + "=" + query.Value;
            }

            naviUrl = naviUrl + "?" + queryString;
        }
        protected void UploadControl_FilesUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }
    }
}
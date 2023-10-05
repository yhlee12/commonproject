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
    public partial class A_PRODUCT_TEMEDIT : PageBase
    {

        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        public string save_flag = "";

        //템플릿
        public string template_type = "DELIVERY";
        public string I_TEMPLATE_TITLE = "";
        public string I_TEMPLATE_MESSAGE = "";
        public Int64  I_TEMPLATE_SID = -1;
        //
        public string request_sid = ""; //리스트페이지에서 넘김
        public DataTable request_info = null; //sid로 검색된 TEMPLATE 정보 
        public string request_title = "";
        public string request_detail = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            request_sid = Request["request_sid"];
            if (!IsPostBack)
            {
                template_type = Request["template_type"];
                sid_request();

            }
            else
            {
                flag = Request["flag"];
                template_type = Request["template_type"];

                switch (flag)
                {
                    case "save":
                        sid_request();
                        saveTemplate();
                        break;
                    //case "TEM_DELIVERY":

                    //    break;

                    //case "TEM_EXCHANGE":
                    //    template_type = "EXCHANGE";

                    //    break;
                }
            }

        }

        private void sid_request()
        {

            request_sid = Request["request_sid"];

            if (!string.IsNullOrEmpty(request_sid))
            {
                I_TEMPLATE_SID = Int64.Parse(request_sid);
                bizHelper biz = new bizHelper();
                DataSet ds = null;
                string sql = @"
                            SELECT       *   
 
                                        FROM    TCM_TERMS_CONFIG 
                                        WHERE   TEMPLATE_SID =" + I_TEMPLATE_SID +
                          ";";

                ds = biz.baseSQLDataset(sql);
                request_info = (DataTable)ds.Tables[0];
                //여기서 인풋에 바로 값 넣어줌
                if (request_info != null)
                {
                    request_title = request_info.Rows[0]["TITLE"].ToString();
                    request_detail = request_info.Rows[0]["BODY"].ToString();

                }

                biz.Dispose();
                biz = null;
            }
        }
        private void saveTemplate() {
            I_TEMPLATE_TITLE = Request["I_TITLE"];
            I_TEMPLATE_MESSAGE = Request["smarteditor"];

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_TERMS_CONFIG.PTC_TEMPLATE_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_TEMPLATE_SID", I_TEMPLATE_SID);

                hs.Add("I_TEMPLATE_CLASS", template_type); //TEMPLATE CLASS TYPE : DELIVERY OR EXCHANGE

                hs.Add("I_TEMPLATE_TITLE", I_TEMPLATE_TITLE);
                hs.Add("I_TEMPLATE_MESSAGE", I_TEMPLATE_MESSAGE);
   
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_TEMEDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    sid_request();
                    save_flag = "Y";
                   
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

        protected void UploadControl_FilesUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }
    }
}
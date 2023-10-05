using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.my
{
    public partial class C_MY_MODIFYINFO : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        //USER
        public DataTable BANK = null;
        public DataTable USER_TABLE = null;
        public DataTable BUSINESS_EDMS = null;
        //GetUserData
        public string USER_ID = "";
        public string EMAIL_ADDRESS = "";
        public string MOBILE_NO = "";
        public string ZIP_CODE = "";
        public string NEW_BUSINESS_ADDRESS1 = "";
        public string NEW_BUSINESS_ADDRESS2 = "";
        public string BANK_CODE = "";
        public string ACCOUNT_NO = "";
        public string ACCOUNT_HOLDER_NM = "";
        public string USER_NAME = "";
        public string RECOMMENDER_ID = "";
        //EDMS
        public string EDMS_DEL_FLAG = "";
        string[] image_upload_byte;
        string[] image_upload_name;
        string[] image_upload_ext;
        string[] image_upload_sid;
        string[] EDNS_REMARK; // EDMS 테이블 REMARK 컬럼에 메인 이미지면 REVIEW_MAIN_IMAGE 아니면 공백 들어감
        public string ERROR_MESSAGE = "";
        DataSet EDMS_DS = new DataSet();

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
                switch (flag)
                {
                    case "save":
                    saveUserData();
                    break;
                }
            }

        }

        
        private void saveUserData()
        {
            // 계좌, 예금주 
            BANK_CODE = Request["BANK_CODE"];
            ACCOUNT_HOLDER_NM = Request["ACCOUNT_HOLDER_NM"];
            ACCOUNT_NO = Request["ACCOUNT_NO"];

            ////사업자 등록증 EDMS
            image_upload_byte = Request.Form.GetValues("image_upload_byte");
            image_upload_name = Request.Form.GetValues("image_upload_name");
            image_upload_ext = Request.Form.GetValues("image_upload_ext");
            image_upload_sid = Request.Form.GetValues("image_upload_sid");
            EDNS_REMARK = Request.Form.GetValues("EDNS_REMARK");
            EDMS_DEL_FLAG = Request["EDMS_DEL_FLAG"];

            DataTable temp = new DataTable();
            temp.TableName = "EDMS_SAVE_TEMP";
            temp.Columns.Add("EDMS_SID");
            temp.Columns.Add("FILE_NAME");
            temp.Columns.Add("SAVE_FILE_NAME");
            temp.Columns.Add("FULL_PATH");
            temp.Columns.Add("SAVE_PATH");
            temp.Columns.Add("EXT");
            temp.Columns.Add("LENGTH");
            temp.Columns.Add("NUMBER");
            temp.Columns.Add("REMARK");
            temp.Columns.Add("DOC_SID");
            if (image_upload_byte != null) {
                for (int i = 0; i < image_upload_byte.Length; i++)
                {
                    try
                    {
                        //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                        //
                        if (Convert.ToInt32(image_upload_sid[i]) < 0)
                        {
                            var byteData = Convert.FromBase64String(image_upload_byte[i]);
                            ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                            if (resultData.status != "Y")
                            {
                                //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                                //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                                //resultData.FullPath; //저장된 Full Path
                                //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                                //resultData.ext; //확장자
                                DataRow dr = temp.NewRow();
                                dr["EDMS_SID"] = image_upload_sid[i];
                                dr["FILE_NAME"] = image_upload_name[i];
                                dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                                dr["FULL_PATH"] = resultData.FullPath;
                                dr["SAVE_PATH"] = resultData.SavePath;
                                dr["EXT"] = image_upload_ext[i];
                                dr["LENGTH"] = resultData.length;
                                dr["NUMBER"] = i + 1;
                                dr["REMARK"] = EDNS_REMARK[i];
                                dr["DOC_SID"] = baseUser.userSid; //I_TARGET_SID 역할 
                                temp.Rows.Add(dr);
                            }
                            else
                            {
                                ERROR_MESSAGE = resultData.message;
                                break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                        ERROR_MESSAGE = ex.Message;
                        break;
                    }
                }
            }
            
            EDMS_DS.Tables.Add(temp);
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();
                hs.Clear();
                hs.Add("SP_NAME", "TCM_USER_MASTER.SAVE_USER_DATA");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BANK_CODE", BANK_CODE); //여기 리뷰 sid 넣으면 됨
                hs.Add("I_ACCOUNT_HOLDER_NM", ACCOUNT_HOLDER_NM);
                hs.Add("I_ACCOUNT_NO", ACCOUNT_NO);
                hs.Add("I_EDMS_DEL_FLAG", EDMS_DEL_FLAG);

                hs.Add("I_XML", EDMS_DS.GetXml());
                hs.Add("I_TARGET_SID", baseUser.userSid); //여기 리뷰 sid 넣으면 됨
                hs.Add("I_DOC_TYPE", "EDMS");
                hs.Add("I_DOC_NO", "");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_MODIFYINFO");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    biz.baseCommit();
                    inquery();
                }
                else
                {
                    biz.baseRollBack();
                    inquery();
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
        private void GetUserData()
        {
            USER_ID = USER_TABLE.Rows[0]["USER_ID"].ToString();
            EMAIL_ADDRESS = USER_TABLE.Rows[0]["EMAIL_ADDRESS"].ToString();
            MOBILE_NO = USER_TABLE.Rows[0]["MOBILE_NO"].ToString();
            ZIP_CODE = USER_TABLE.Rows[0]["ZIP_CODE"].ToString();
            NEW_BUSINESS_ADDRESS1 = USER_TABLE.Rows[0]["NEW_BUSINESS_ADDRESS1"].ToString();
            NEW_BUSINESS_ADDRESS2 = USER_TABLE.Rows[0]["NEW_BUSINESS_ADDRESS2"].ToString();
            BANK_CODE = USER_TABLE.Rows[0]["BANK_CODE"].ToString();
            ACCOUNT_NO = USER_TABLE.Rows[0]["ACCOUNT_NO"].ToString();
            ACCOUNT_HOLDER_NM = USER_TABLE.Rows[0]["ACCOUNT_HOLDER_NM"].ToString();
            USER_NAME = USER_TABLE.Rows[0]["USER_NAME"].ToString();
            RECOMMENDER_ID = USER_TABLE.Rows[0]["RECOMMENDER_ID"].ToString();
        }

        private void inquery() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "TCM_USER_MASTER.INQUERY_USER_DATA");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_SID", baseUser.userSid);
            
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_MODIFYINFO");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BANK = ds.Tables["O_RESULT_CURSOR_BANK"];
                    USER_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    BUSINESS_EDMS = ds.Tables["O_RESULT_CURSOR_BUSINESS_EDMS"];
                    GetUserData();
                }

                else
                {

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
        protected void uploader_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
    }
}
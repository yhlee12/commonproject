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

namespace drKidAdmin.Source.admin.info
{
    public partial class A_INFO_META : PageBase
    {

        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        string flag = "";

        string OG_URL ="";
        string OG_TITLE ="";
        string OG_DESCRIPTION ="";
        string OG_SITENAME ="";
        int OG_IMAGE = 0;

        string KEYWORD = "";
        string NAVER_SITE_TAG="";
        string GOOGLE_SITE_TAG = "";
        int FAVICON = 0;


        //EDMS
        string image_upload_byte = "";
        string image_upload_name = "";
        string image_upload_ext = "";
        string image_upload_sid = "";

        string image_upload_byte2 = "";
        string image_upload_name2 = "";
        string image_upload_ext2 = "";
        string image_upload_sid2 = "";

        string OG_EDMS_SID ="";
        string OG_FILE_NAME=""; 
        string OG_SAVE_FILE_NAME="";
        string OG_FULL_PATH ="";
        string OG_SAVE_PATH ="";
        string OG_EXT ="";
        int OG_LENGTH =0;
        int OG_NUMBER =1;
        string OG_DOC_SID = "";

        string FA_EDMS_SID = "";
        string FA_FILE_NAME = "";
        string FA_SAVE_FILE_NAME = "";
        string FA_FULL_PATH = "";
        string FA_SAVE_PATH = "";
        string FA_EXT = "";
        int FA_LENGTH = 0;
        int FA_NUMBER = 2;
        string FA_DOC_SID = "";

        public string ERROR_MESSAGE = "";
        DataSet EDMS_DS = new DataSet();

        string request_meta_sid = "";

        public DataTable META_TABLE = new DataTable();
        public DataTable EMDS_TABLE = new DataTable();
        
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
                        saveMeta();
                        break;
                }

            }
        }

        private void saveMeta()
        {
            OG_URL = Request.Form["I_OG_URL"];
            OG_TITLE = Request.Form["I_OG_TITLE"];
            OG_DESCRIPTION = Request.Form["I_OG_DESCRIPTION"];
            OG_SITENAME = Request.Form["I_OG_SITENAME"];
            OG_IMAGE = Int32.Parse(Request.Form["I_OG_IMAGE"]);

            KEYWORD = Request.Form["I_KEYWORD"];
            NAVER_SITE_TAG = Request.Form["I_NAVER_SITE_TAG"];
            GOOGLE_SITE_TAG = Request.Form["I_GOOGLE_SITE_TAG"];
            FAVICON = Int32.Parse(Request.Form["I_FAVICON"]);

            ////EDMS
            image_upload_byte = Request.Form["image_upload_byte"];
            image_upload_name = Request.Form["image_upload_name"];
            image_upload_ext = Request.Form["image_upload_ext"];
            image_upload_sid = Request.Form["image_upload_sid"];

            if (OG_IMAGE < 0)
            {
                var byteData = Convert.FromBase64String(image_upload_byte);
                ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name, image_upload_ext);
                
                OG_EDMS_SID = image_upload_sid;
                OG_FILE_NAME = image_upload_name;
                OG_SAVE_FILE_NAME = resultData.targerFileName;
                OG_FULL_PATH = resultData.FullPath;
                OG_SAVE_PATH = resultData.SavePath;
                OG_EXT = image_upload_ext;
                OG_LENGTH = resultData.length;
                //OG_NUMBER = Int32.Parse(Request.Form["FA_NUMBER"]);
                OG_DOC_SID = ""; //I_TARGET_SID 역할 
            }


            

            ////EDMS
            image_upload_byte2 = Request.Form["image_upload_byte2"];
            image_upload_name2 = Request.Form["image_upload_name2"];
            image_upload_ext2 = Request.Form["image_upload_ext2"];
            image_upload_sid2 = Request.Form["image_upload_sid2"];

            if (FAVICON < 0)
            {
                var byteData2 = Convert.FromBase64String(image_upload_byte2);
                ResultData resultData2 = UploadUtil.FileByteToWriteServer(byteData2, image_upload_name2, image_upload_ext2);
                FA_EDMS_SID = image_upload_sid2;
                FA_FILE_NAME = image_upload_name2;
                FA_SAVE_FILE_NAME = resultData2.targerFileName;
                FA_FULL_PATH = resultData2.FullPath;
                FA_SAVE_PATH = resultData2.SavePath;
                FA_EXT = image_upload_ext2;
                FA_LENGTH = resultData2.length;
                //FA_NUMBER = Int32.Parse(Request.Form["FA_NUMBER"]);
                FA_DOC_SID = ""; //I_TARGET_SID 역할 
            }

            

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_META_SAVE");//PKG_INFO_MASTER$PIM_META_SAVE
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_OG_URL", OG_URL);
                hs.Add("I_OG_TITLE", OG_TITLE);
                hs.Add("I_OG_DESCRIPTION", OG_DESCRIPTION);
                hs.Add("I_OG_SITENAME", OG_SITENAME);
                hs.Add("I_OG_IMAGE", OG_IMAGE);
                hs.Add("I_KEYWORD", KEYWORD);
                hs.Add("I_NAVER_SITE_TAG", NAVER_SITE_TAG);
                hs.Add("I_GOOGLE_SITE_TAG", GOOGLE_SITE_TAG);
                hs.Add("I_FAVICON", FAVICON);

                hs.Add("I_OG_EDMS_SID", null); //OG_EDMS_SID
                hs.Add("I_OG_FILE_NAME", OG_FILE_NAME);
                hs.Add("I_OG_SAVE_FILE_NAME", OG_SAVE_FILE_NAME);
                hs.Add("I_OG_FULL_PATH", OG_FULL_PATH);
                hs.Add("I_OG_SAVE_PATH", OG_SAVE_PATH);
                hs.Add("I_OG_EXT", OG_EXT);
                hs.Add("I_OG_LENGTH", OG_LENGTH);
                //hs.Add("OG_NUMBER", OG_NUMBER);
                hs.Add("I_OG_DOC_SID", OG_DOC_SID);  //EDMS SID  넣을 필요 없음.

                hs.Add("I_FA_EDMS_SID", null);//FA_EDMS_SID
                hs.Add("I_FA_FILE_NAME", FA_FILE_NAME);
                hs.Add("I_FA_SAVE_FILE_NAME", FA_SAVE_FILE_NAME);
                hs.Add("I_FA_FULL_PATH", FA_FULL_PATH);
                hs.Add("I_FA_SAVE_PATH", FA_SAVE_PATH);
                hs.Add("I_FA_EXT", FA_EXT);
                hs.Add("I_FA_LENGTH", FA_LENGTH);
                //hs.Add("FA_NUMBER", FA_NUMBER);
                hs.Add("I_FA_DOC_SID", FA_DOC_SID);  //EDMS SID  넣을 필요 없음.

                hs.Add("I_DOC_TYPE", "EDMS");
                hs.Add("I_DOC_NO", "");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_INFO_META");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    biz.baseCommit();
                    //if (OG_IMAGE < 0)
                    //{
                    //   var byteData = Convert.FromBase64String(image_upload_byte);
                    //   ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name, image_upload_ext);
                    //}
                    //if (FAVICON < 0)
                    //{
                    //    var byteData2 = Convert.FromBase64String(image_upload_byte2);
                    //    ResultData resultData = UploadUtil.FileByteToWriteServer(byteData2, image_upload_name2, image_upload_ext2);
                    //}

                    ////EDMS
                    //image_upload_byte = Request.Form("image_upload_byte");
                    //image_upload_name = Request.Form("image_upload_name");
                    //image_upload_ext = Request.Form("image_upload_ext");
                    //image_upload_sid = Request.Form("image_upload_sid");

                    //DataTable temp = new DataTable();
                    //temp.TableName = "EDMS_SAVE_TEMP";
                    //temp.Columns.Add("EDMS_SID");
                    //temp.Columns.Add("FILE_NAME");
                    //temp.Columns.Add("SAVE_FILE_NAME");
                    //temp.Columns.Add("FULL_PATH");
                    //temp.Columns.Add("SAVE_PATH");
                    //temp.Columns.Add("EXT");
                    //temp.Columns.Add("LENGTH");
                    //temp.Columns.Add("NUMBER");
                    //temp.Columns.Add("DOC_SID");
                    //for (int i = 0; i < image_upload_byte.Length; i++)
                    //{
                    //    try
                    //    {
                    //        //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                    //        //
                    //        if (Convert.ToInt32(image_upload_sid[i]) < 0)
                    //        {
                    //            var byteData = Convert.FromBase64String(image_upload_byte[i]);
                    //            ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                    //            if (resultData.status != "Y")
                    //            {
                    //                //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                    //                //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                    //                //resultData.FullPath; //저장된 Full Path
                    //                //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                    //                //resultData.ext; //확장자
                    //                DataRow dr = temp.NewRow();
                    //                dr["EDMS_SID"] = image_upload_sid[i];
                    //                dr["FILE_NAME"] = image_upload_name[i];
                    //                dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                    //                dr["FULL_PATH"] = resultData.FullPath;
                    //                dr["SAVE_PATH"] = resultData.SavePath;
                    //                dr["EXT"] = image_upload_ext[i];
                    //                dr["LENGTH"] = resultData.length;
                    //                dr["NUMBER"] = i + 1;
                    //                dr["DOC_SID"] = ""; //I_TARGET_SID 역할 
                    //                temp.Rows.Add(dr);
                    //            }
                    //            else
                    //            {
                    //                ERROR_MESSAGE = resultData.message;
                    //                break;
                    //            }
                    //        }
                    //        //이다음 SP 써서 Save 처리...
                    //        //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                    //        //SP 이름 
                    //    }
                    //    catch (Exception ex)
                    //    {
                    //        //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                    //        ERROR_MESSAGE = ex.Message;
                    //        break;
                    //    }
                    //}
                    //EDMS_DS.Tables.Add(temp);
                    //var a = EDMS_DS.GetXml();
                    ////Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
                    //string TARGET_SID = "1111";

                    //bizHelper _biz = new bizHelper();
                    //Hashtable _hs = new Hashtable();
                    //DataSet _ds = new DataSet();

                    //try
                    //{
                    //    _biz.baseBeginTran();

                    //    _hs.Clear();
                    //    _hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_SAVE_OBJECT_XML_META");//PKG_EDMS_MASTER$EDMS_SAVE_OBJECT_XML_META
                    //    _hs.Add("I_PERSON_NO", "DRKID");
                    //    _hs.Add("I_XML", EDMS_DS.GetXml());
                    //    _hs.Add("I_TARGET_SID", TARGET_SID); //여기 배너 sid 넣으면 됨
                    //    _hs.Add("I_DOC_TYPE", "EDMS");
                    //    _hs.Add("I_DOC_NO", "");

                    //    _hs.Add("I_LANGUAGE_CODE", "KOR");
                    //    _hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    //    _hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    //    _hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    //    //_hs.Add("I_REQUEST_USER_ID", "guest");
                    //    //_hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                    //    _hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_MIDDLE");

                    //    _ds = _biz.operationSPTr(_hs);

                    //    cp_ret_status = _ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    //    cp_ret_message = _ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    //    if (cp_ret_status == "N")
                    //    {
                    //        inquery();
                    //        save_flag = "Y";
                    //    }
                    //    else
                    //    {
                    //        _biz.baseRollBack();
                    //        return;
                    //    }
                    //}
                    //catch (Exception ex)
                    //{
                    //    cp_ret_status = "Y";
                    //    cp_ret_message = ex.Message;
                    //}
                    //finally
                    //{
                    //    if (biz != null)
                    //    {
                    //        biz.Dispose();
                    //        biz = null;
                    //    }
                    //}
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

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_INFO_MASTER.PIM_META_SELECT");//PKG_INFO_MASTER$PIM_META_SELECT
                hs.Add("I_PERSON_NO", "DRKID");
                
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_MIDDLE");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    META_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    EMDS_TABLE = ds.Tables["O_RESULT_CURSOR_2"];
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

        protected void uploader_FileUploadComplete2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
    }
}
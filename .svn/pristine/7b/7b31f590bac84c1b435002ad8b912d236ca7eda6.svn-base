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
using Newtonsoft.Json;

namespace drKidAdmin.Source.common.devExample
{
    public partial class commonUploadExample : System.Web.UI.Page
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string flag = "";
        string[] image_upload_byte;
        string[] image_upload_name;
        string[] image_upload_ext;
        string[] image_upload_sid;

        public string ERROR_MESSAGE = "";

        DataSet SaveDs = new DataSet();
        public DataTable listTable = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        image_upload_byte = Request.Form.GetValues("image_upload_byte");
                        image_upload_name = Request.Form.GetValues("image_upload_name");
                        image_upload_ext = Request.Form.GetValues("image_upload_ext");
                        image_upload_sid = Request.Form.GetValues("image_upload_sid");
                        //추후 SP로 저장시에 SID가 -1즉 0보다 작은 친구들은 신규 생성 최초에 뿌릴때 0보다 큰 값(즉 SID가 배정된 친구)는
                        //Update 하는식으로 SP를 구성을 해두었음. 참고하여 응용.
                        //Image Upload만 구성해두었지만, UploadUtil.UploadFileToByte 를 이용하면, 똑같이 구현이 가능하다.
                        //사실상 이미지를 저장하는 것에서 -> 파일을 저장하는 것으로 바뀌었을 뿐임
                        //저장할때 File Write 하는 이유 -----> 저장할때 File Write를 안하고 Upload하자마자 File Write할 경우, 서버의 용량에 큰 부담이됨.
                        //저장하지 않을때에는 서버에 저장하지 않기 위함.
                        SaveFile();
                        inquery();
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
                hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_INQUERY_SAMPLE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_TARGET_SID", "1111");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "A_TEST_DATA");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    listTable = ds.Tables["O_RESULT_CURSOR"];
                    //DOWNLOAD시 FULLPATH필요해서 우선 넣어둠. 다운로드 구현에 문제가있을경우 이쪽 항목을 업데이트 하겠음.
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

        private void SaveFile()
        {
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
            for (int i = 0; i < image_upload_byte.Length; i++) {
                try
                {
                    //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                    //
                    if (Convert.ToInt32(image_upload_sid[i]) < 0) {
                        var byteData = Convert.FromBase64String(image_upload_byte[i]);
                        ResultData resultData =  UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                        if(resultData.status != "Y")
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
                            temp.Rows.Add(dr);
                        }
                        else
                        {
                            ERROR_MESSAGE = resultData.message;
                            break;
                        }
                    }
                    //이다음 SP 써서 Save 처리...
                    //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                    //SP 이름 
                }
                catch(Exception ex)
                {
                    //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                    ERROR_MESSAGE = ex.Message;
                    break;
                }
            }
            SaveDs.Tables.Add(temp);
            var a = SaveDs.GetXml();
            //Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
            string TARGET_SID = "1111";

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_SAVE_OBJECT_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", SaveDs.GetXml());
                hs.Add("I_TARGET_SID", TARGET_SID);
                hs.Add("I_DOC_TYPE", "EDMS");
                hs.Add("I_DOC_NO", "");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "A_TEST_DATA");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

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

        #region 이미지 업로드 Region
        protected void uploader_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        #endregion
    }
}
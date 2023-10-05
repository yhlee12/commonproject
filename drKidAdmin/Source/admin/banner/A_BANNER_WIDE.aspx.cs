﻿using drKid;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.banner
{
    public partial class A_BANNER_WIDE : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        string flag = "";

        //메인
        string[] MAIN_SID;
        string[] MAIN_SEQ;
        string[] I_TITLE;
        string[] I_SUBTITLE;
        string[] I_URL;
        DataSet MAIN_DS = new DataSet();

        //배너
        string[] BANNER_SID;
        string[] PARENT_SID;
        string[] BANNER_TYPE;
        DataSet BANNER_DS = new DataSet();

        //EDMS
        string[] image_upload_byte;
        string[] image_upload_name;
        string[] image_upload_ext;
        string[] image_upload_sid;
        public string ERROR_MESSAGE = "";
        DataSet EDMS_DS = new DataSet();

        Int64 CLASS_CHOCIE_SID = 0;


        //메인,배너 테이블 후 등록된 배너 sid
        public DataTable request_banner_sid_dt = null;
        List<string> request_banner_sid = new List<string>();

        //기존 배너정보 
        public DataTable mainTable = new DataTable(); //제목,부제목, url 정보
        public DataTable bannerTable = new DataTable(); // 배너sid, edms sid 정보
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
                        saveMainAndBanner();
                        break;
                }

            }
        }

        private void saveMainAndBanner()
        {
            //메인
            MAIN_SID = Request.Form.GetValues("MAIN_SID");
            MAIN_SEQ = Request.Form.GetValues("MAIN_SEQ");
            I_TITLE = Request.Form.GetValues("I_TITLE");//I_MIDDLE_TITLE
            I_SUBTITLE = Request.Form.GetValues("I_SUBTITLE");//I_MIDDDLE_SUBTITLE
            I_URL = Request.Form.GetValues("I_URL");//I_MIDDLE_URL

            //배너
            BANNER_SID = Request.Form.GetValues("BANNER_SID");
            PARENT_SID = Request.Form.GetValues("PARENT_SID");
            BANNER_TYPE = Request.Form.GetValues("BANNER_TYPE");

            //메인 temp
            DataTable main_temp = new DataTable();
            main_temp.TableName = "MAIN_SAVE_TEMP";
            main_temp.Columns.Add("MAIN_SID");
            main_temp.Columns.Add("MAIN_SEQ");
            main_temp.Columns.Add("I_TITLE");
            main_temp.Columns.Add("I_SUBTITLE");
            main_temp.Columns.Add("I_URL");
            for (int i = 0; i < MAIN_SID.Length; i++)
            {
                DataRow main_dr = main_temp.NewRow();
                main_dr["MAIN_SID"] = MAIN_SID[i];
                main_dr["MAIN_SEQ"] = MAIN_SEQ[i];
                main_dr["I_TITLE"] = I_TITLE[i];
                main_dr["I_SUBTITLE"] = I_SUBTITLE[i];
                main_dr["I_URL"] = I_URL[i];
                main_temp.Rows.Add(main_dr);
            }
            MAIN_DS.Tables.Add(main_temp);

            //배너 temp
            DataTable banner_temp = new DataTable();
            banner_temp.TableName = "BANNER_SAVE_TEMP";
            banner_temp.Columns.Add("BANNER_SID");
            banner_temp.Columns.Add("PARENT_SID");
            banner_temp.Columns.Add("BANNER_TYPE");
            for (int i = 0; i < BANNER_SID.Length; i++)
            {
                DataRow banner_dr = banner_temp.NewRow();
                banner_dr["BANNER_SID"] = BANNER_SID[i];
                banner_dr["PARENT_SID"] = PARENT_SID[i];
                banner_dr["BANNER_TYPE"] = BANNER_TYPE[i];
                banner_temp.Rows.Add(banner_dr);
            }
            BANNER_DS.Tables.Add(banner_temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BANNER_MASTER.BANNER_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML_MAIN", MAIN_DS.GetXml());
                hs.Add("I_XML_BANNER", BANNER_DS.GetXml());
                hs.Add("I_MAIN_TYPE", "WIDE");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_WIDE");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //여기서 RESULT 커서로  edms테이블  DOC_SID 넣을  배너마스터 sid들 가져와야함
                    request_banner_sid_dt = ds.Tables["O_RESULT_CURSOR"];
                    if (request_banner_sid_dt != null && request_banner_sid_dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < request_banner_sid_dt.Rows.Count; i++)
                        {
                            string bannerSid = request_banner_sid_dt.Rows[i]["BANNER_SID"].ToString();
                            request_banner_sid.Add(bannerSid);
                        }

                    }

                    ////EDMS
                    image_upload_byte = Request.Form.GetValues("image_upload_byte");
                    image_upload_name = Request.Form.GetValues("image_upload_name");
                    image_upload_ext = Request.Form.GetValues("image_upload_ext");
                    image_upload_sid = Request.Form.GetValues("image_upload_sid");

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
                    temp.Columns.Add("DOC_SID");
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
                                    dr["DOC_SID"] = request_banner_sid[i]; //I_TARGET_SID 역할 
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
                        catch (Exception ex)
                        {
                            //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                            ERROR_MESSAGE = ex.Message;
                            break;
                        }
                    }
                    EDMS_DS.Tables.Add(temp);
                    var a = EDMS_DS.GetXml();
                    //Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
                    string TARGET_SID = "1111";

                    bizHelper _biz = new bizHelper();
                    Hashtable _hs = new Hashtable();
                    DataSet _ds = new DataSet();

                    try
                    {
                        _biz.baseBeginTran();

                        _hs.Clear();
                        _hs.Add("SP_NAME", "PKG_EDMS_MASTER.BANNER_EDMSOBJECT_SAVE");
                        _hs.Add("I_PERSON_NO", "DRKID");
                        _hs.Add("I_XML", EDMS_DS.GetXml());
                        _hs.Add("I_TARGET_SID", TARGET_SID); //여기 배너 sid 넣으면 됨
                        _hs.Add("I_DOC_TYPE", "EDMS");
                        _hs.Add("I_DOC_NO", "");

                        _hs.Add("I_LANGUAGE_CODE", "KOR");
                        _hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        _hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        _hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        //_hs.Add("I_REQUEST_USER_ID", "guest");
                        //_hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                        _hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_WIDE");

                        _ds = _biz.operationSPTr(_hs);

                        cp_ret_status = _ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = _ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "N")
                        {
                            inquery();
                            save_flag = "Y";
                        }
                        else
                        {
                            _biz.baseRollBack();
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
                        if (_biz != null)
                        {
                            _biz.Dispose();
                            _biz = null;
                        }
                    }
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

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BANNER_MASTER.PBM_BANNER_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_MAIN_TYPE", "WIDE");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_WIDE");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //mainTable = ds.Tables["O_MAIN_RESULT_CURSOR"];
                    //bannerTable = ds.Tables["O_BANNER_EDMS_RESULT_CURSOR"];
                    //커서명 안먹어서 임시 
                    mainTable = ds.Tables["O_RESULT_CURSOR_1"];
                    bannerTable = ds.Tables["O_RESULT_CURSOR_3"];
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
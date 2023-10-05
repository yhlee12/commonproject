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
    public partial class C_MY_ORDERLIST : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        string flag = "";
        string save_flag = "";
        //REVIEW
        public string I_REVIEW_TITLE = "";
        public string I_REVIEW_BODY = "";
        public int I_PRODUCT_SCORE;
        public string EDMS_SAVE_FLAG = "N";
        public string REQUEST_REVIEW_SID = "";
        //EDMS
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
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "save":
                        saveReview();
                        break;
                }
            }
        }
        private void saveReview()
        {
            I_REVIEW_TITLE = Request.Form["I_REVIEW_TITLE"];
            I_REVIEW_BODY = Request.Form["I_DETAIL"];
            I_PRODUCT_SCORE = BizUtil.getInt(Request.Form["PRODUCT_SCORE"]);
            EDMS_SAVE_FLAG = Request.Form["EDMS_SAVE_FLAG"];

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();
                hs.Clear();
                hs.Add("SP_NAME", "PKG_REVIEW_MASTER.PRM_REVIEW_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_REVIEW_SID", 0);
                hs.Add("I_PRODUCT_SID", 1001354);//"ㅈㅎ 상품테스트"  상품
                hs.Add("I_PRODUCT_ORDER_SID", 0);//주문기능 아직 구현안되어 임시로 0넣음 
                hs.Add("I_USER_SID", baseUser.userSid);

                hs.Add("I_REVIEW_TITLE", I_REVIEW_TITLE);
                hs.Add("I_REVIEW_BODY", I_REVIEW_BODY);
                hs.Add("I_POST_USER_ID", baseUser.userId);
                hs.Add("I_PRODUCT_SCORE", I_PRODUCT_SCORE);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_ORDERLIST");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                    biz.baseCommit();
                    //biz.baseCommit();
                    REQUEST_REVIEW_SID = ds.Tables["O_RESULT_CURSOR"].Rows[0]["REVIEW_SID"].ToString();
                    if (!string.IsNullOrEmpty(REQUEST_REVIEW_SID) && EDMS_SAVE_FLAG == "Y")
                    {
                        ////EDMS
                        image_upload_byte = Request.Form.GetValues("image_upload_byte");
                        image_upload_name = Request.Form.GetValues("image_upload_name");
                        image_upload_ext = Request.Form.GetValues("image_upload_ext");
                        image_upload_sid = Request.Form.GetValues("image_upload_sid");
                        EDNS_REMARK = Request.Form.GetValues("EDNS_REMARK");

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
                                        //dr["DOC_SID"] = request_board_sid[i]; //I_TARGET_SID 역할 
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
                        EDMS_DS.Tables.Add(temp);
                        bizHelper _biz = new bizHelper();
                        Hashtable _hs = new Hashtable();
                        DataSet _ds = new DataSet();
                        try
                        {
                            _biz.baseBeginTran();
                            _hs.Clear();
                            _hs.Add("SP_NAME", "PKG_REVIEW_MASTER.PRM_REVIEW_EDMS");
                            _hs.Add("I_PERSON_NO", "DRKID");
                            _hs.Add("I_XML", EDMS_DS.GetXml());
                            _hs.Add("I_TARGET_SID", REQUEST_REVIEW_SID); //여기 리뷰 sid 넣으면 됨
                            _hs.Add("I_DOC_TYPE", "EDMS");
                            _hs.Add("I_DOC_NO", "");

                            _hs.Add("I_LANGUAGE_CODE", "KOR");
                            _hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                            _hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                            _hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                            _hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_ORDERLIST");

                            _ds = _biz.operationSPTr(_hs);

                            cp_ret_status = _ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                            cp_ret_message = _ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                            if (cp_ret_status == "N")
                            {

                                save_flag = "Y";
                                _biz.baseCommit();
                            }
                            else
                            {
                                save_flag = "N";
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
                }
                else
                {
                    save_flag = "N";
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

        protected void uploader_FileUploadComplete6(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
    }
}
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
    public partial class A_STOCK_INSERT : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string flag = "";

        public string image_src = "/Source/image/no_img.svg";

        //Image Upload 관련
        public string image_upload_byte;
        public string image_upload_name;
        public string image_upload_ext;
        public string image_upload_sid;
        public string image_upload_useble = "N";

        //wekeep 관련
        public string WEKEEP_CODE;
        public string WEKEEP_NAME;
        public string WEKEEP_BOXCODE;
        public string WEKEEP_OPTION;

        public string STOCK_HWL_UNIT = "CM";
        public string STOCK_WEIGHT_UNIT = "KG";

        public int STOCK_SID = 0;
        public string STOCK_CD;
        public string STOCK_NM;
        public string STOCK_ENG_NM;
        public string STOCK_ABBR_NM;
        public string STOCK_ABBR_ENG_NM;
        public Decimal STOCK_HEIGHT;
        public Decimal STOCK_WEIGHT;
        public Decimal STOCK_WIDTH;
        public string REMARK;
        public Decimal STOCK_LENGTH;

        //사용여부
        public string USABLE_FLAG = "Y";

        public DataTable BOX_CODE_LIST = new DataTable();

        //첨부 저장용
        public DataSet SaveDs = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request["STOCK_CD"]))
                {
                    STOCK_CD = Request["STOCK_CD"];
                }

                inqeury();
            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        saveData();
                        break;
                    default:
                        break;
                }
            }
        }

        private void inqeury()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_UWM_STOCKCODEM_010.UWM_STOCKCODEM_001");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CUST_CD", "DRKID");
                hs.Add("I_STOCK_CD", STOCK_CD);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    if (ds.Tables["O_RESULT_CURSOR"].Rows.Count > 0)
                    {
                        WEKEEP_CODE = ds.Tables["O_RESULT_CURSOR"].Rows[0]["WEKEEP_CODE"].ToString();
                        WEKEEP_NAME = ds.Tables["O_RESULT_CURSOR"].Rows[0]["WEKEEP_NAME"].ToString();
                        WEKEEP_BOXCODE = ds.Tables["O_RESULT_CURSOR"].Rows[0]["WEKEEP_BOXCODE"].ToString();
                        WEKEEP_OPTION = ds.Tables["O_RESULT_CURSOR"].Rows[0]["WEKEEP_OPTION"].ToString();
                        STOCK_SID = BizUtil.getInt(ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_SID"]);
                        STOCK_NM = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_NM"].ToString();
                        STOCK_ENG_NM = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_ENG_NM"].ToString();
                        STOCK_ABBR_NM = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_ABBR_NM"].ToString();
                        STOCK_ABBR_ENG_NM = ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_ABBR_ENG_NM"].ToString();
                        STOCK_HEIGHT = BizUtil.getDecimal(ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_HEIGHT"]);
                        STOCK_WEIGHT = BizUtil.getDecimal(ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_WEIGHT"]);
                        STOCK_WIDTH = BizUtil.getDecimal(ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_WIDTH"]);
                        REMARK = ds.Tables["O_RESULT_CURSOR"].Rows[0]["REMARK"].ToString();
                        STOCK_LENGTH = BizUtil.getDecimal(ds.Tables["O_RESULT_CURSOR"].Rows[0]["STOCK_LENGTH"]);
                        USABLE_FLAG = ds.Tables["O_RESULT_CURSOR"].Rows[0]["USABLE_FLAG"].ToString();
                    }


                    if (STOCK_SID != 0)
                    {
                        hs.Clear();
                        hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_INQUERY_SAMPLE");
                        hs.Add("I_PERSON_NO", "DRKID");
                        hs.Add("I_TARGET_SID", STOCK_SID);

                        hs.Add("I_LANGUAGE_CODE", "KOR");
                        hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                        ds = biz.operationSP(hs);

                        cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                        if (cp_ret_status == "N")
                        {
                            if (ds.Tables["O_RESULT_CURSOR"].Rows.Count > 0)
                            {
                                image_upload_byte = "";
                                image_upload_name = ds.Tables["O_RESULT_CURSOR"].Rows[0]["SOURCE_FILE_NAME"].ToString();
                                image_upload_ext = ds.Tables["O_RESULT_CURSOR"].Rows[0]["EXT"].ToString();
                                image_upload_sid = ds.Tables["O_RESULT_CURSOR"].Rows[0]["EDM_SID"].ToString();
                                image_upload_useble = "N";
                                image_src = ConfigurationManager.AppSettings["EDMS_VIEW"].ToString() + ds.Tables["O_RESULT_CURSOR"].Rows[0]["TARGET_READ_PATH"].ToString();
                            }
                        }
                    }
                    //CODE SELECT 
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_COMMON_CODE.PCM_CODE_LOOKUP");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_GROUP", "WK_BOXT");
                    hs.Add("I_SEARCH_TEXT", "");
                    hs.Add("I_PARAM1", "");
                    hs.Add("I_PARAM2", "");

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                    if (cp_ret_status == "N")
                    {
                        BOX_CODE_LIST = ds.Tables["O_RESULT_CURSOR"];
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

        private void setParam()
        {
            STOCK_SID = BizUtil.getInt(Request.Form["STOCK_SID"]);
            STOCK_CD = Request.Form["STOCK_CD"];
            STOCK_NM = Request.Form["STOCK_NM"];
            STOCK_ENG_NM = Request.Form["STOCK_ENG_NM"];
            STOCK_ABBR_NM = Request.Form["STOCK_ABBR_NM"];
            STOCK_ABBR_ENG_NM = Request.Form["STOCK_ABBR_ENG_NM"];
            STOCK_HEIGHT = BizUtil.getDecimal(Request.Form["STOCK_HEIGHT"].ToString().Replace(",",""));
            STOCK_WEIGHT = BizUtil.getDecimal(Request.Form["STOCK_WEIGHT"].ToString().Replace(",", ""));
            STOCK_LENGTH = BizUtil.getDecimal(Request.Form["STOCK_LENGTH"].ToString().Replace(",", ""));
            STOCK_WIDTH = BizUtil.getDecimal(Request.Form["STOCK_WIDTH"].ToString().Replace(",", ""));
            REMARK = Request.Form["REMARK"];
            WEKEEP_CODE = Request.Form["WEKEEP_CODE"];
            WEKEEP_NAME = Request.Form["WEKEEP_NAME"];
            WEKEEP_BOXCODE = Request.Form["WEKEEP_BOXCODE"];
            WEKEEP_OPTION = Request.Form["WEKEEP_OPTION"];
            image_upload_byte = Request.Form["image_upload_byte"];
            image_upload_name = Request.Form["image_upload_name"];
            image_upload_ext = Request.Form["image_upload_ext"];
            image_upload_sid = Request.Form["image_upload_sid"];
            image_upload_useble = Request.Form["image_upload_useble"];
            USABLE_FLAG = Request.Form["USABLE_FLAG"];
        }

        private void saveData()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_UWM_STOCKCODEM_010.UWM_STOCKCODEM_011");
                hs.Add("I_PERSON_NO","DRKID");
                hs.Add("I_CUST_CD","DRKID");
                hs.Add("I_STOCK_CD",STOCK_CD);
                
                hs.Add("I_STOCK_NM",STOCK_NM);
                hs.Add("I_STOCK_ENG_NM",STOCK_ENG_NM);
                hs.Add("I_STOCK_ABBR_NM",STOCK_ABBR_NM);
                hs.Add("I_STOCK_ABBR_ENG_NM",STOCK_ABBR_ENG_NM);
                hs.Add("I_STOCK_CLS_CD","");
                hs.Add("I_STOCK_CLS_NM", "");
                hs.Add("I_USECUST_CD", "");
                hs.Add("I_USECUST_NM", "");
                hs.Add("I_CUST_STOCK_CD", "");
                hs.Add("I_CUST_STOCK_NM", "");
                hs.Add("I_STOCK_GRP", "");
                hs.Add("I_STOCK_PCS_UNIT", "");
                hs.Add("I_LOT_NO_YN", "N");
                hs.Add("I_STOCK_BAR_CD", "");
                hs.Add("I_HS_CD", "");
                hs.Add("I_SNMAG", "");
                hs.Add("I_QTY_CHANGE", "");
                hs.Add("I_ISVISIHIDDEN", "N");
                hs.Add("I_STOCK_HEIGHT",STOCK_HEIGHT);
                hs.Add("I_STOCK_WIDTH", STOCK_WIDTH);
                hs.Add("I_STOCK_LENGTH", STOCK_LENGTH);
                hs.Add("I_STOCK_HEIGHT_CTN","");
                hs.Add("I_STOCK_WIDTH_CTN","");
                hs.Add("I_STOCK_LENGTH_CT","");
                hs.Add("I_STOCK_HWL_UNIT",STOCK_HWL_UNIT);
                hs.Add("I_STOCK_WEIGHT",STOCK_WEIGHT);
                hs.Add("I_STOCK_WEIGHT_UN",STOCK_WEIGHT_UNIT);
                hs.Add("I_PLT_CBM",0);
                hs.Add("I_CTN_CBM",0);
                hs.Add("I_LT_CTN",0);
                
                hs.Add("I_PLT2CTN",0);
                hs.Add("I_ACC_PLT2CTN",0);
                hs.Add("I_CTN2PCS",0);
                hs.Add("I_CTN2PCS_IN",0);
                hs.Add("I_USABLE_FLAG", USABLE_FLAG);
                hs.Add("I_CURR_CD","KRW");
                hs.Add("I_BUY_RATE",0);
                hs.Add("I_SALE_RATE",0);
                hs.Add("I_STD_RATE",0);
                hs.Add("I_STOCK_DAY",0);
                hs.Add("I_STOCK_WEEK",0);
                hs.Add("I_REMARK",REMARK);
                hs.Add("I_PLT_TYPE","B");
                
                hs.Add("I_WEKEEP_CODE",WEKEEP_CODE);
                hs.Add("I_WEKEEP_NAME",WEKEEP_NAME);
                hs.Add("I_WEKEEP_BOXCODE",WEKEEP_BOXCODE);
                hs.Add("I_WEKEEP_OPTION",WEKEEP_OPTION);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    if (STOCK_SID == 0)
                    {
                        //WH CD와 WH_LOC_CD는 현재, DRKID뿐이므로 DRKID로 넣는다.
                        //UNIT은 PCS로 지정 CTN 물량은 쇼핑몰 단계에서는 없으므로...
                        //맨처음 생성시에는 SID가 존재하지 않고, QTY가 없으므로 0으로 진입
                        hs.Clear();
                        hs.Add("SP_NAME", "PKG_WM_STOCK.PWM_STOCK_MST_SAVE");
                        hs.Add("I_PERSON_NO", "DRKID");
                        hs.Add("I_CUST_CD", "DRKID");
                        hs.Add("I_WH_CD", "DRKID");
                        hs.Add("I_WH_LOC_CD", "DRKID");
                        hs.Add("I_STOCK_CD", STOCK_CD);
                        hs.Add("I_LOT_NO", "");
                        hs.Add("I_BIN_NO", "");
                        hs.Add("I_UNIT", "PCS");
                        hs.Add("I_CTN_QTY", 0);
                        hs.Add("I_PCS_QTY", 0);
                        hs.Add("O_STOCK_SID", STOCK_SID);

                        hs.Add("I_LANGUAGE_CODE", "KOR");
                        hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                        ds = biz.operationSPTr(hs);

                        cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                        if (cp_ret_status == "N")
                        {
                            STOCK_SID = BizUtil.getInt(ds.Tables["O_STOCK_SID"].Rows[0]["O_STOCK_SID"]);
                        }
                        else
                        {
                            biz.baseRollBack();
                            return;
                        }
                    }

                    if(image_upload_useble == "Y")
                    {
                        //첨부파일 저장
                        if(!SaveFile(biz, STOCK_SID))
                        {
                            biz.baseRollBack();
                            return;
                        }
                    }
                    biz.baseCommit();
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
            //저장후 inquery 속도보고 안에 통합할지 결정.
            inqeury();
        }

        private bool SaveFile(bizHelper biz,int SID)
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

            try
            {
                //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                //
                if (Convert.ToInt32(image_upload_sid) < 0)
                {
                    var byteData = Convert.FromBase64String(image_upload_byte);
                    ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name, image_upload_ext);
                    if (resultData.status != "Y")
                    {
                        //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                        //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                        //resultData.FullPath; //저장된 Full Path
                        //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                        //resultData.ext; //확장자
                        DataRow dr = temp.NewRow();
                        dr["EDMS_SID"] = image_upload_sid;
                        dr["FILE_NAME"] = image_upload_name;
                        dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                        dr["FULL_PATH"] = resultData.FullPath;
                        dr["SAVE_PATH"] = resultData.SavePath;
                        dr["EXT"] = image_upload_ext;
                        dr["LENGTH"] = resultData.length;
                        dr["NUMBER"] = 1;
                        temp.Rows.Add(dr);
                    }
                    else
                    {
                        cp_ret_message = resultData.message;
                        return false;
                    }
                }
                //이다음 SP 써서 Save 처리...
                //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                //SP 이름 
            }
            catch (Exception ex)
            {
                //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                cp_ret_message = ex.Message;
                return false;
            }
            SaveDs.Tables.Add(temp);
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_SAVE_OBJECT_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", SaveDs.GetXml());
                hs.Add("I_TARGET_SID", SID);
                hs.Add("I_DOC_TYPE", "EDMS");
                hs.Add("I_DOC_NO", "");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_STOCK_INSERT");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

                }
                else
                {
                    biz.baseRollBack();
                    return false;
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
            return true;
        }

        protected void uploader_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
    }
}
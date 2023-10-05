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
    public partial class A_PRODUCT_EDIT : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";

        public string del_flag = "";

        public DataTable DELIVERY_TEMPLATE_LIST = null; // 배송안내 템플릿 
        public DataTable EXCHANGE_TEMPLATE_LIST = null; // 교환 및 반품안내 템플릿
        
        //Category
        public DataTable CATEGORY_LIST = new DataTable();
        string[] CATEGORY_SID;
        //Product Stock
        public DataTable STOCK_LIST = new DataTable();
        string[] STOCK_CD;
        string[] STOCK_COUNT;
        //Product Field
        public Int64 PRODUCT_SID = 0;
        public string PRODUCT_CD = "";
        public string PRODUCT_NM = "";
        public string PRODUCT_SEARCH_TAG = "";
        public string USED_SELOVE = "";
        public string DELIVERY_CD = "";
        public Int64 DELIVERY_FREE_COST = 0;
        public Int64 DELIVERY_COST = 0;
        public Int64 DELIVERY_COST2 = 0;
        public Int64 SALE_RATE = 0;
        public string VIEW_SALE_FLAG = "";
        public Int64 VIEW_SALE_RATE = 0;
        public Int64 PV_RATE = 0;
        public Int64 BV_RATE = 0;
        public string POINT_FLAG = ""; //HJH 0823
        public decimal POINT_PER = 1.0M; //HJH 0823
        public string AUTO_FLAG = "";
        public Int64 AUTO_RATE = 0;
        public Int64 AUTO_RATE3 = 0;
        public Int64 AUTO_RATE6 = 0;
        public Int64 AUTO_RATE12 = 0;
        public Int64 AUTO_PV_RATE = 0;
        public Int64 AUTO_BV_RATE = 0;
        public string PRODUCT_DELIVERY_INFO = "";
        public string PRODUCT_STORE_INFO = "";
        public string PRODUCT_DETAIL_INFO = "";
        public string VIEW_FLAG = "";
        public string REBUY_FLAG = "";
        public Int64 REBUY_RATE = 0;
        public string USER_SALE_FLAG = "";
        public Int64 USER_SALE_RATE = 0;
        //Option
        public DataTable OPTION_LIST = new DataTable();
        public string OPTION_USED_FLAG = "";
        string[] OPTION_SID;
        string[] OPTION_NAME;
        string[] OPTION_SALE_TYPE;
        string[] OPTION_SALE_RATE;
        string[] OPTION_VIEW_SALE_FLAG;
        string[] OPTION_VIEW_SALE_TYPE;
        string[] OPTION_VIEW_SALE_RATE;
        string[] OPTION_PV_RATE;
        string[] OPTION_BV_RATE;
        string[] OPTION_AUTO_FLAG;
        public string OPTION_AUTO_FLAG_VALUES = null; //HJH 0828
        string[] OPTION_AUTO_RATE;
        string[] OPTION_AUTO_PV_RATE;
        string[] OPTION_AUTO_BV_RATE;
        //Option Stock
        public DataTable OPTION_STOCK = new DataTable();
        string[] OPTION_STOCK_CD;
        string[] STOCK_OPTION_SID;
        string[] OPTION_STOCK_COUNT;
        //SP를 SAVEDS를 4개만들어버려서 통합하지않고 일단 분해
        DataSet SaveDs = null;
        DataSet SaveDs2 = null;
        DataSet SaveDs3 = null;
        DataSet SaveDs4 = null;
        //image Upload
        string[] image_upload_byte;
        string[] image_upload_name;
        string[] image_upload_ext;
        string[] image_upload_sid;
        string[] image_upload_useble;
        string[] image_upload_type;
        DataTable imageTable = new DataTable();

        //HJH
        public string request_sid = "";
        public DataTable REQUEST_PROD_MASTER = null;
        public DataTable REQUEST_PROD_CATE = null;
        public DataTable REQUEST_PROD_STOCK = null;
        public DataTable REQUEST_PROD_IMG = null;
        public DataTable REQUEST_PROD_OPTION = null;
        public DataTable REQUEST_PROD_OPTION_STOCK = null;
        public int connected_StockCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            bizHelper biz = new bizHelper();

            search_Delivery_Template(biz);// 배송안내 템플릿 리스트 조회
            search_Exchange_Template(biz); // 교환 및 반품안내 템플릿 조회
            request_sid = Request["request_sid"];

            if (!string.IsNullOrEmpty(request_sid))
            {
                inqeury(biz);
            }

            if (biz != null)
            {
                biz.Dispose();
                biz = null;
            }

            if (!IsPostBack)
            {
                
            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "save":
                        setParam();
                        saveProduct();
                        saveInqeury();
                        break;

                    case "del":
                        delProduct();
                        break;


                }
            }
        }
        private void delProduct()
        {
            PRODUCT_SID = BizUtil.getInt64(Request.Form["PRODUCT_SID"]);
            if (PRODUCT_SID != 0) {
                bizHelper biz = new bizHelper();
                Hashtable hs = new Hashtable();
                DataSet ds = new DataSet();
                try
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_DELETE");
                    hs.Add("I_PERSON_NO", "DRKID");
                    hs.Add("I_PRODUCT_SID", PRODUCT_SID);

                    hs.Add("I_LANGUAGE_CODE", "KOR");
                    hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                    hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                    hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                    hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");
                    ds = biz.operationSP(hs);
                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        del_flag = "Y";
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
            
        }
        private void set_DetailData()
        {
            //inqeury에서 조회한 상품 디테일 데이터 세팅
            //1.REQUEST_PROD_MASTER
            PRODUCT_SID = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["PRODUCT_SID"]) ;
            PRODUCT_CD = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_CD"].ToString();
            PRODUCT_NM = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_NM"].ToString();
            PRODUCT_SEARCH_TAG = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_SEARCH_TAG"].ToString();
            VIEW_FLAG = REQUEST_PROD_MASTER.Rows[0]["VIEW_FLAG"].ToString();
            USED_SELOVE = REQUEST_PROD_MASTER.Rows[0]["USED_SELOVE"].ToString();
            SALE_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["SALE_RATE"]);
            VIEW_SALE_FLAG = REQUEST_PROD_MASTER.Rows[0]["VIEW_SALE_FLAG"].ToString();
            VIEW_SALE_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["VIEW_SALE_RATE"]);
            PV_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["PV_RATE"]);
            BV_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["BV_RATE"]);
            DELIVERY_CD = REQUEST_PROD_MASTER.Rows[0]["DELIVERY_CD"].ToString();
            DELIVERY_COST = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["DELIVERY_COST"]);
            DELIVERY_COST2 = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["DELIVERY_COST2"]);
            DELIVERY_FREE_COST = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["DELIVERY_FREE_COST"]);
            POINT_FLAG = REQUEST_PROD_MASTER.Rows[0]["POINT_FLAG"].ToString();
            POINT_PER = BizUtil.getDecimal(REQUEST_PROD_MASTER.Rows[0]["POINT_PER"]);
            AUTO_FLAG = REQUEST_PROD_MASTER.Rows[0]["AUTO_FLAG"].ToString();
            AUTO_RATE = Convert.ToInt64(REQUEST_PROD_MASTER.Rows[0]["AUTO_RATE3"]);
            AUTO_PV_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["AUTO_PV_RATE"]);
            AUTO_BV_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["AUTO_BV_RATE"]);
            OPTION_USED_FLAG = REQUEST_PROD_MASTER.Rows[0]["OPTION_USED_FLAG"].ToString();
            REBUY_FLAG = REQUEST_PROD_MASTER.Rows[0]["REBUY_FLAG"].ToString();
            REBUY_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["REBUY_RATE"]);
            USER_SALE_FLAG = REQUEST_PROD_MASTER.Rows[0]["USER_SALE_FLAG"].ToString();
            USER_SALE_RATE = BizUtil.getInt64(REQUEST_PROD_MASTER.Rows[0]["USER_SALE_RATE"]);
            PRODUCT_DELIVERY_INFO = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_DELIVERY_INFO"].ToString();
            PRODUCT_STORE_INFO = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_STORE_INFO"].ToString();
            PRODUCT_DETAIL_INFO = REQUEST_PROD_MASTER.Rows[0]["PRODUCT_DETAIL_INFO"].ToString();
            //2.REQUEST_PROD_CATE
            CATEGORY_LIST = REQUEST_PROD_CATE;
            //3.REQUEST_PROD_STOCK
            connected_StockCount = REQUEST_PROD_STOCK.Rows.Count;
            //4.REQUEST_PROD_IMG 
            //5.REQUEST_PROD_OPTION 
            
            //6.REQUEST_PROD_OPTION_STOCK 

        }
        private void inqeury(bizHelper biz)
        {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_DETAIL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", request_sid);
             
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");
                ds = biz.operationSP(hs);
                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    REQUEST_PROD_MASTER = ds.Tables["O_RESULT_CURSOR"];
                    REQUEST_PROD_CATE = ds.Tables["O_RESULT_CURSOR_CATE"];
                    REQUEST_PROD_STOCK = ds.Tables["O_RESULT_CURSOR_STOCK"];
                    REQUEST_PROD_IMG = ds.Tables["O_RESULT_CURSOR_IMAGE"];
                    REQUEST_PROD_OPTION = ds.Tables["O_RESULT_CURSOR_OPTION"];
                    REQUEST_PROD_OPTION_STOCK = ds.Tables["O_RESULT_CURSOR_OPTION_STOCK"];
                    set_DetailData();
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
        }
        private void saveInqeury()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_DETAIL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");
                ds = biz.operationSP(hs);
                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    REQUEST_PROD_MASTER = ds.Tables["O_RESULT_CURSOR"];
                    REQUEST_PROD_CATE = ds.Tables["O_RESULT_CURSOR_CATE"];
                    REQUEST_PROD_STOCK = ds.Tables["O_RESULT_CURSOR_STOCK"];
                    REQUEST_PROD_IMG = ds.Tables["O_RESULT_CURSOR_IMAGE"];
                    REQUEST_PROD_OPTION = ds.Tables["O_RESULT_CURSOR_OPTION"];
                    REQUEST_PROD_OPTION_STOCK = ds.Tables["O_RESULT_CURSOR_OPTION_STOCK"];
                    set_DetailData();
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

        private void saveProduct()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID",PRODUCT_SID);
                hs.Add("I_PRODUCT_CD",PRODUCT_CD);
                hs.Add("I_PRODUCT_NM",PRODUCT_NM);
                //hs.Add("I_PRODUCT_SEARCH_TAG", CATEGORY_SID);
                hs.Add("I_PRODUCT_SEARCH_TAG", PRODUCT_SEARCH_TAG);
                hs.Add("I_DELIVERY_CD",DELIVERY_CD);
                hs.Add("I_DELIVERY_FREE_COST",DELIVERY_FREE_COST);
                hs.Add("I_DELIVERY_COST",DELIVERY_COST);
                hs.Add("I_DELIVERY_COST2",DELIVERY_COST2);
                hs.Add("I_SALE_RATE",SALE_RATE);
                hs.Add("I_VIEW_SALE_FLAG",VIEW_SALE_FLAG);
                hs.Add("I_VIEW_SALE_RATE",VIEW_SALE_RATE);
                hs.Add("I_PV_RATE",PV_RATE);
                hs.Add("I_BV_RATE",BV_RATE);
                hs.Add("I_VIEW_FLAG",VIEW_FLAG);
                hs.Add("I_AUTO_FLAG",AUTO_FLAG);
                hs.Add("I_AUTO_RATE",AUTO_RATE);
                hs.Add("I_AUTO_RATE3",AUTO_RATE3);
                hs.Add("I_AUTO_RATE6",AUTO_RATE6);
                hs.Add("I_AUTO_RATE12",AUTO_RATE12);
                hs.Add("I_AUTO_SALE_RATE",SALE_RATE);
                hs.Add("I_AUTO_VIEW_SALE_FLAG", "N");
                hs.Add("I_AUTO_VIEW_SALE_RATE", AUTO_RATE);
                hs.Add("I_AUTO_PV_RATE",AUTO_PV_RATE);
                hs.Add("I_AUTO_BV_RATE",AUTO_BV_RATE);
                hs.Add("I_PRODUCT_DELIVERY_INFO",PRODUCT_DELIVERY_INFO);
                hs.Add("I_PRODUCT_STORE_INFO",PRODUCT_STORE_INFO);
                hs.Add("I_PRODUCT_DETAIL_INFO",PRODUCT_DETAIL_INFO);
                
                hs.Add("I_OPTION_USED_FLAG", OPTION_USED_FLAG);
                hs.Add("I_XML",SaveDs.GetXml());
                hs.Add("I_XML_CATE", SaveDs4.GetXml());
                hs.Add("I_XML_STOCK", SaveDs3.GetXml());
                hs.Add("I_XML_OP_STOCK", SaveDs2.GetXml());
                hs.Add("I_USED_SELOVE",USED_SELOVE);
                hs.Add("I_REBUY_FLAG",REBUY_FLAG);
                hs.Add("I_REBUY_RATE",REBUY_RATE);
                hs.Add("I_USER_SALE_FLAG",USER_SALE_FLAG);
                hs.Add("I_USER_SALE_RATE",USER_SALE_RATE);
                hs.Add("I_POINT_FLAG", POINT_FLAG); // HJH 0823
                hs.Add("I_POINT_PER", POINT_PER); // HJH 0823

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    PRODUCT_SID = BizUtil.getInt64(ds.Tables["O_RESULT_CURSOR"].Rows[0]["S_PRODUCT_SID"]);

                    //image Upload
                    if (!SaveFile(biz, PRODUCT_SID))
                    {
                        biz.baseRollBack();
                        return;
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
        }

        private bool SaveFile(bizHelper biz, Int64 SID)
        {
            DataSet edmsDs = new DataSet();
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
            temp.Columns.Add("TYPE");

            image_upload_byte = Request.Form.GetValues("image_upload_byte");
            image_upload_name = Request.Form.GetValues("image_upload_name");
            image_upload_ext = Request.Form.GetValues("image_upload_ext");
            image_upload_sid = Request.Form.GetValues("image_upload_sid");
            image_upload_useble = Request.Form.GetValues("image_upload_useble");
            image_upload_type = Request.Form.GetValues("image_upload_type");
            try
            {
                for (int i = 0; i < image_upload_useble.Length; i++)
                {
                    ResultData resultData = new ResultData();
                    if (Convert.ToInt32(image_upload_sid[i]) < 0)
                    {
                        var byteData = Convert.FromBase64String(image_upload_byte[i]);
                        resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                        if (resultData.status != "Y")
                        {

                        }
                        else
                        {
                            cp_ret_message = resultData.message;
                            return false;
                        }
                    }
                    else
                    {
                        resultData.targerFileName = "";
                        resultData.FullPath = "";
                        resultData.SavePath = "";
                    }
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
                    dr["NUMBER"] = i;
                    dr["TYPE"] = image_upload_type[i];
                    temp.Rows.Add(dr);
                }
                
            }
            catch (Exception ex)
            {
                //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                cp_ret_message = ex.Message;
                return false;
            }
            edmsDs.Tables.Add(temp);
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_EDMS_MASTER.EDMS_SAVE_OBJECT_IMAGE_PRODUCT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", edmsDs.GetXml());
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

        private void setParam()
        {
            PRODUCT_SID = BizUtil.getInt64(Request.Form["PRODUCT_SID"]);
            PRODUCT_CD = Request.Form["PRODUCT_CD"];
            PRODUCT_NM = Request.Form["PRODUCT_NM"];
            PRODUCT_SEARCH_TAG = Request.Form["PRODUCT_SEARCH_TAG"];
            USED_SELOVE = Request.Form["USED_SELOVE"];
            DELIVERY_CD = Request.Form["DELIVERY_CD"];
            DELIVERY_FREE_COST = BizUtil.getInt64(Request.Form["DELIVERY_FREE_COST"]);
            DELIVERY_COST = BizUtil.getInt64(Request.Form["DELIVERY_COST"]);
            DELIVERY_COST2 = BizUtil.getInt64(Request.Form["DELIVERY_COST2"]);
            SALE_RATE = BizUtil.getInt64(Request.Form["SALE_RATE"]);
            VIEW_SALE_FLAG = Request.Form["VIEW_SALE_FLAG"];
            VIEW_SALE_RATE = BizUtil.getInt64(Request.Form["VIEW_SALE_RATE"]);
            PV_RATE = BizUtil.getInt64(Request.Form["PV_RATE"]);
            BV_RATE = BizUtil.getInt64(Request.Form["BV_RATE"]);
            POINT_FLAG = Request.Form["POINT_FLAG"]; // HJH 0823
            POINT_PER = BizUtil.getDecimal(Request["POINT_PER"]); // HJH 0823
            AUTO_FLAG = Request.Form["AUTO_FLAG"];
            AUTO_RATE = BizUtil.getInt64(Request.Form["AUTO_RATE"]);
            AUTO_RATE3 = BizUtil.getInt64(Request.Form["AUTO_RATE3"]);
            AUTO_RATE6 = BizUtil.getInt64(Request.Form["AUTO_RATE6"]);
            AUTO_RATE12 = BizUtil.getInt64(Request.Form["AUTO_RATE12"]);
            AUTO_PV_RATE = BizUtil.getInt64(Request.Form["AUTO_PV_RATE"]);
            AUTO_BV_RATE = BizUtil.getInt64(Request.Form["AUTO_BV_RATE"]);
            PRODUCT_DELIVERY_INFO = Request.Form["PRODUCT_DELIVERY_INFO"];
            PRODUCT_STORE_INFO = Request.Form["PRODUCT_STORE_INFO"];
            PRODUCT_DETAIL_INFO = Request.Form["PRODUCT_DETAIL_INFO"];
            VIEW_FLAG = Request.Form["VIEW_FLAG"];
            REBUY_FLAG = Request.Form["REBUY_FLAG"];
            REBUY_RATE = BizUtil.getInt64(Request.Form["REBUY_RATE"]);
            USER_SALE_FLAG = Request.Form["USER_SALE_FLAG"];
            USER_SALE_RATE = BizUtil.getInt64(Request.Form["USER_SALE_RATE"]);
            //Option
            OPTION_USED_FLAG = Request.Form["OPTION_USED_FLAG"];
            OPTION_SID = Request.Form.GetValues("OPTION_SID");
            OPTION_NAME = Request.Form.GetValues("OPTION_NAME");
            OPTION_SALE_TYPE = Request.Form.GetValues("OPTION_SALE_TYPE");
            OPTION_SALE_RATE = Request.Form.GetValues("OPTION_SALE_RATE");
            OPTION_VIEW_SALE_FLAG = Request.Form.GetValues("OPTION_VIEW_SALE_FLAG");
            OPTION_VIEW_SALE_TYPE = Request.Form.GetValues("OPTION_VIEW_SALE_TYPE");
            OPTION_VIEW_SALE_RATE = Request.Form.GetValues("OPTION_VIEW_SALE_RATE");
            OPTION_PV_RATE = Request.Form.GetValues("OPTION_PV_RATE");
            OPTION_BV_RATE = Request.Form.GetValues("OPTION_BV_RATE");
            // HJH 0828 OPTION_AUTO_FLAG 수정
            //OPTION_AUTO_FLAG = Request.Form.GetValues("OPTION_AUTO_FLAG");
            OPTION_AUTO_FLAG = Request.Form.GetValues("OPTION_AUTO_FLAG_LIST");
            OPTION_AUTO_FLAG_VALUES = OPTION_AUTO_FLAG[0];
            OPTION_AUTO_FLAG = OPTION_AUTO_FLAG_VALUES.Split(',').Select(s => s.Trim()).ToArray();

            OPTION_AUTO_RATE = Request.Form.GetValues("OPTION_AUTO_RATE");
            OPTION_AUTO_PV_RATE = Request.Form.GetValues("OPTION_AUTO_PV_RATE");
            OPTION_AUTO_BV_RATE = Request.Form.GetValues("OPTION_AUTO_BV_RATE");
            //OptionStock
            OPTION_STOCK_CD = Request.Form.GetValues("OPTION_STOCK_CD");
            STOCK_OPTION_SID = Request.Form.GetValues("STOCK_OPTION_SID");
            OPTION_STOCK_COUNT = Request.Form.GetValues("OPTION_STOCK_COUNT");
            //Stock
            STOCK_CD = Request.Form.GetValues("STOCK_CD");
            STOCK_COUNT = Request.Form.GetValues("STOCK_COUNT");
            //Category
            CATEGORY_SID = Request.Form.GetValues("CATEGORY_SID");
            if (flag == "save")
            {
                SaveDs = new DataSet();
                SaveDs2 = new DataSet();
                SaveDs3 = new DataSet();
                SaveDs4 = new DataSet();
                //option Setup
                DataTable temp = new DataTable();
                temp.TableName = "OPTION_TEMP";
                temp.Columns.Add("OPTION_SID");
                temp.Columns.Add("OPTION_CD");
                temp.Columns.Add("OPTION_NAME");
                temp.Columns.Add("OPTION_SALE_TYPE");
                temp.Columns.Add("OPTION_SALE_RATE");
                temp.Columns.Add("OPTION_VIEW_SALE_FLAG");
                temp.Columns.Add("OPTION_VIEW_SALE_TYPE");
                temp.Columns.Add("OPTION_VIEW_SALE_RATE");
                temp.Columns.Add("OPTION_PV_RATE");
                temp.Columns.Add("OPTION_BV_RATE");
                temp.Columns.Add("OPTION_SEQ");
                temp.Columns.Add("OPTION_AUTO_FLAG");
                temp.Columns.Add("OPTION_AUTO_PV_RATE");
                temp.Columns.Add("OPTION_AUTO_BV_RATE");
                temp.Columns.Add("OPTION_AUTO_RATE");
                if (OPTION_SID != null)
                {
                    for (int i = 0; i < OPTION_SID.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["OPTION_SID"] = OPTION_SID[i];
                        dr["OPTION_CD"] = "";
                        dr["OPTION_NAME"] = OPTION_NAME[i];
                        dr["OPTION_SALE_TYPE"] = OPTION_SALE_TYPE[i];
                        dr["OPTION_SALE_RATE"] = OPTION_SALE_RATE[i].Replace(",","");
                        dr["OPTION_VIEW_SALE_FLAG"] = OPTION_VIEW_SALE_FLAG[i];
                        dr["OPTION_VIEW_SALE_TYPE"] = OPTION_VIEW_SALE_TYPE[i];
                        dr["OPTION_VIEW_SALE_RATE"] = OPTION_VIEW_SALE_RATE[i].Replace(",", "");
                        dr["OPTION_PV_RATE"] = OPTION_PV_RATE[i].Replace(",", "");
                        dr["OPTION_BV_RATE"] = OPTION_BV_RATE[i].Replace(",", "");
                        dr["OPTION_SEQ"] = i+1;
                        dr["OPTION_AUTO_FLAG"] = OPTION_AUTO_FLAG[i];
                        dr["OPTION_AUTO_PV_RATE"] = OPTION_AUTO_PV_RATE[i].Replace(",", "");
                        dr["OPTION_AUTO_BV_RATE"] = OPTION_AUTO_BV_RATE[i].Replace(",", "");
                        dr["OPTION_AUTO_RATE"] = OPTION_AUTO_RATE[i].Replace(",", "");
                        temp.Rows.Add(dr);
                    }
                }
                SaveDs.Tables.Add(temp);

                DataTable temp2 = new DataTable();
                temp2.TableName = "STOCK_OP_TEMP";
                temp2.Columns.Add("PRODUCT_SID");
                temp2.Columns.Add("STOCK_CD");
                temp2.Columns.Add("STOCK_SEQ");
                temp2.Columns.Add("STOCK_COUNT");

                if (OPTION_STOCK_CD != null)
                {
                    for (int i = 0; i < OPTION_STOCK_CD.Length; i++)
                    {
                        DataRow dr = temp2.NewRow();
                        dr["PRODUCT_SID"] = STOCK_OPTION_SID[i];
                        dr["STOCK_CD"] = OPTION_STOCK_CD[i];
                        dr["STOCK_SEQ"] = i + 1;
                        dr["STOCK_COUNT"] = OPTION_STOCK_COUNT[i].Replace(",", "");
                        temp2.Rows.Add(dr);
                    }
                }
                SaveDs2.Tables.Add(temp2);

                DataTable temp3 = new DataTable();
                temp3.TableName = "STOCK_TEMP";
                temp3.Columns.Add("STOCK_CD");
                temp3.Columns.Add("STOCK_SEQ");
                temp3.Columns.Add("STOCK_COUNT");

                if (STOCK_CD != null)
                {
                    for (int i = 0; i < STOCK_CD.Length; i++)
                    {
                        DataRow dr = temp3.NewRow();
                        dr["STOCK_CD"] = STOCK_CD[i];
                        dr["STOCK_SEQ"] = i + 1;
                        dr["STOCK_COUNT"] = STOCK_COUNT[i].Replace(",", "");
                        temp3.Rows.Add(dr);
                    }
                }
                SaveDs3.Tables.Add(temp3);

                DataTable temp4 = new DataTable();
                temp4.TableName = "CATEGORY_TEMP";
                temp4.Columns.Add("CATEGORY_SID");
                temp4.Columns.Add("CATEGORY_SEQ");

                if (CATEGORY_SID != null)
                {
                    for (int i = 0; i < CATEGORY_SID.Length; i++)
                    {
                        DataRow dr = temp4.NewRow();
                        dr["CATEGORY_SID"] = CATEGORY_SID[i];
                        dr["CATEGORY_SEQ"] = i + 1;
                        temp4.Rows.Add(dr);
                    }
                }
                SaveDs4.Tables.Add(temp4);
            }
        }

        private void search_Exchange_Template(bizHelper biz) {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_TERMS_CONFIG.PTC_TEMPLATE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_TEMPLATE_TYPE", "EXCHANGE");
                hs.Add("I_OFFSET", 0);
                hs.Add("I_MATCHES", 200);
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    EXCHANGE_TEMPLATE_LIST = ds.Tables["O_RESULT_CURSOR"];
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
        }

        private void search_Delivery_Template(bizHelper biz) 
        {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_TERMS_CONFIG.PTC_TEMPLATE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_TEMPLATE_TYPE", "DELIVERY");
                hs.Add("I_OFFSET", 0);
                hs.Add("I_MATCHES", 200);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    DELIVERY_TEMPLATE_LIST = ds.Tables["O_RESULT_CURSOR"];
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
        }

        protected void UploadControl_FilesUploadComplete1(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }
        protected void UploadControl_FilesUploadComplete2(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }

        protected void UploadControl_FilesUploadComplete3(object sender, FileUploadCompleteEventArgs e)
        {

            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }

        protected void uploader4_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
    }
}
using DevExpress.Web;
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
    public partial class C_MY_CELEBRITY : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        public Int64 SELOVE_REFERRAL = 0;
        string[] CHOICE_PRODUCT_SID;
        DataSet PRODUCT_DS =null;
        //
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
        public string AUTO_FLAG = "N";
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
        public DataTable SELOVE_SUB_TABLE = null;
        public DataTable SELOVE_TABLE = null;

        public string REFFERRAL_FLAG = "Y";
        public Int64 REFFERRAL_PER = 0; 
        public string request_sid = "";
        public DataTable REQUEST_PROD_MASTER = null;
        public DataTable REQUEST_PROD_CATE = null;
        public DataTable REQUEST_PROD_STOCK = null;
        public DataTable REQUEST_PROD_IMG = null;
        public DataTable REQUEST_PROD_OPTION = null;
        public DataTable REQUEST_PROD_OPTION_STOCK = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();// 나중에 INIT으로 바꿀것
            bizHelper biz = new bizHelper();
            inqueryBaseData(biz);
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
                        CHOICE_PRODUCT_SID = Request.Form.GetValues("CHOICE_PRODUCT_SID"); // 셀럽상품으로 묶은 PRODUCT_SID
                        DataTable main_temp = new DataTable();
                        main_temp.TableName = "PRODUCT_TEMP";
                        main_temp.Columns.Add("PRODUCT_SID");
                        for (int i = 0; i < CHOICE_PRODUCT_SID.Length; i++)
                        {
                            DataRow main_dr = main_temp.NewRow();
                            main_dr["PRODUCT_SID"] = CHOICE_PRODUCT_SID[i];
                            main_temp.Rows.Add(main_dr);
                        }
                        PRODUCT_DS.Tables.Add(main_temp);
                        if (CHOICE_PRODUCT_SID.Length > 0)
                        {
                            // 묶은 상품들의 정보 조회 후 세팅(상품가,판매가,할인정보,배송비정보,PV,BV)
                            getSeloveProduct_Data();
                            setSeloveProduct_Data();
                        }
                        break;
                }
            }
        }
        private void inqueryBaseData(bizHelper biz)
        {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_CONFOG.PUC_SELOVE_REFERRAL");
                hs.Add("I_PERSON_NO", "DRKID");
   
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_CELEBRITY_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    SELOVE_REFERRAL = BizUtil.getInt64(ds.Tables["O_RESULT_CURSOR"].Rows[0]["REFERRAL_REWARD"]);
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
        }
        private void getSeloveProduct_Data()
        { 
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            REFFERRAL_FLAG = Request.Form["REFFERRAL_FLAG"];
            REFFERRAL_PER = BizUtil.getInt64(Request.Form["REFFERRAL_PER"]);
            try
            {
                //biz.baseBeginTran();
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.SELOVE_PROD_CALC");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", PRODUCT_DS.GetXml());
                hs.Add("I_REFFERRAL_FLAG", REFFERRAL_FLAG);
                hs.Add("I_REFFERRAL_PER", REFFERRAL_PER);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MY_CELEBRITY_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    SELOVE_SUB_TABLE = ds.Tables["O_RESULT_CURSOR_SUB"];
                    SELOVE_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    setSeloveProduct_Data();
                    //biz.baseCommit();
                }
                //else
                //{
                //    biz.baseRollBack();
                //    return;
                //}
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
        private void setSeloveProduct_Data()
        {
            //셀럽상품전용
            //REFFERRAL_FLAG가 리퍼럴 할인율을 통한 판매가를 계산하기 때문에 VIEW_SALE_FLAG와 REFFERRAL_FLAG는 같아야 함.
            VIEW_SALE_FLAG = REFFERRAL_FLAG; 


            //기존코드 (주석하거나 셀럽상품에서 필요없는 값은 하드코딩 처리, 주석있음)
            //아래부터 주석처리 된 것은 SELOVE_PROD_CALC SP에서 구한 묶은 상품들의 값을 위에서 처리
            PRODUCT_SID = BizUtil.getInt64(Request.Form["PRODUCT_SID"]);
            PRODUCT_CD = Request.Form["PRODUCT_CD"];
            PRODUCT_NM = Request.Form["PRODUCT_NM"];
            PRODUCT_SEARCH_TAG = Request.Form["PRODUCT_SEARCH_TAG"];
            USED_SELOVE = "N";//셀럽상품을 다시 셀럽상품으로 묶을 수 없기에 N 처리
            DELIVERY_CD = Request.Form["DELIVERY_CD"];
            DELIVERY_FREE_COST = BizUtil.getInt64(Request.Form["DELIVERY_FREE_COST"]);
            DELIVERY_COST = BizUtil.getInt64(Request.Form["DELIVERY_COST"]);
            DELIVERY_COST2 = BizUtil.getInt64(Request.Form["DELIVERY_COST2"]);
            //SALE_RATE = BizUtil.getInt64(Request.Form["SALE_RATE"]);
            //VIEW_SALE_FLAG = Request.Form["VIEW_SALE_FLAG"];
           
            //VIEW_SALE_RATE = BizUtil.getInt64(Request.Form["VIEW_SALE_RATE"]);
            
            //PV_RATE = BizUtil.getInt64(Request.Form["PV_RATE"]); 
            //BV_RATE = BizUtil.getInt64(Request.Form["BV_RATE"]);
            //POINT_FLAG = Request.Form["POINT_FLAG"]; // HJH 0823
            //POINT_PER = BizUtil.getDecimal(Request["POINT_PER"]); // HJH 0823
            AUTO_FLAG = "N";//셀럽상품에는 정기배송 여부에 관계없기 때문에 N처리
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
                        dr["OPTION_SALE_RATE"] = OPTION_SALE_RATE[i].Replace(",", "");
                        dr["OPTION_VIEW_SALE_FLAG"] = OPTION_VIEW_SALE_FLAG[i];
                        dr["OPTION_VIEW_SALE_TYPE"] = OPTION_VIEW_SALE_TYPE[i];
                        dr["OPTION_VIEW_SALE_RATE"] = OPTION_VIEW_SALE_RATE[i].Replace(",", "");
                        dr["OPTION_PV_RATE"] = OPTION_PV_RATE[i].Replace(",", "");
                        dr["OPTION_BV_RATE"] = OPTION_BV_RATE[i].Replace(",", "");
                        dr["OPTION_SEQ"] = i + 1;
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
    }
}
﻿using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using NPOI;
using NPOI.SS.UserModel;
using NPOI.XSSF;
using NPOI.XSSF.UserModel;
using System.Configuration;

namespace drKidAdmin.Source.admin.product
{
    public partial class A_PRODUCT_CHECK : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        public string search_flag = "";
        public string DATEUI = "7"; //사용자가 세팅한 상품등록일자 검색UI 정보(today,7,15,30 ...), 디폴트가 7일
        public string PRODUCT_NM = ""; //상품명
        public string PRODUCT_CD = ""; //상품코드
        public string VIEW_FLAG = ""; //전시상태
        public string CREATED_PROD_FROM = ""; //상품등록일자 FROM
        public string CREATED_PROD_TO = ""; //상품등록일자 TO
        public string[] CATEGORY_NAME_ARRY; //카테고리 ( 공백 ~ 여러개 이상)
        public string CATEGORY_NAME = "";// 카테고리
        public string[] CATEGORY_SID;// 카테고리
        public string AUTO_FLAG = "";//정기배송 플래그
        public DataTable PROD_TABLE = null;// 검색된 상품 리스트 
        public int PROD_TOTAL = 0;//검색된 상품 리스트 TOTAL

        public DataTable PROD_STATUS_TOTAL = null; // 전체,전시,전시중지 카운트 
        public string ALL_COUNT = "";
        public string VIEW_COUNT = "";
        public string NOVIEW_COUNT = "";

        //전시상태 변경 관련
        DataSet CHANGE_PROD_DS = new DataSet();
        string[] change_sid;
        string change_sid_values = null;
        public string change_flag = "";
        public string change_value = "";

        //페이징 관련
        public int custom_Paging = 0;
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string search_btn_click_flag = "";

        public DataSet listset = new DataSet();// 엑셀 관련
        DataSet PROD_SID_LIST_DS = new DataSet();
        public string[] PROD_SID_LIST;

        public DataSet RPDS = new DataSet();
        //EXCEL 다운로드 관련
        string _retFileName = "";
        string _retErrMsg = "";
        const int cA = 0;
        const int cB = 1;
        const int cC = 2;
        const int cD = 3;
        const int cE = 4;
        const int cF = 5;
        const int cG = 6;
        const int cH = 7;
        const int cI = 8;
        const int cJ = 9;
        const int cK = 10;
        const int cL = 11;
        const int cM = 12;
        const int cN = 13;
        const int cO = 14;
        const int cP = 15;
        const int cQ = 16;
        const int cR = 17;
        const int cS = 18;
        const int cT = 19;
        const int cU = 20;
        const int cV = 21;
        const int cW = 22;
        const int cX = 23;
        const int cY = 24;
        const int cZ = 25;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            bizHelper biz = new bizHelper();
            search_ProdCount(biz);
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
                    case "search":
                        setParam();
                        setNaviString();
                        search_ProdList();
                        break;

                    case "change":
                        setParam();
                        changeStatus();
                        refresh_ProdCount();
                        break;

                    case "excel":
                        setParam();
                        setNaviString();
                        excel_Inquery();
                        break;


                }
            }
        }
        private void excel_Inquery()
        {

            PROD_SID_LIST = Request.Form.GetValues("PROD_SID_LIST");
            DataTable temp = new DataTable();
            temp.TableName = "PROD_SID_TEMP";
            temp.Columns.Add("PROD_SID");
            for (int i = 0; i < PROD_SID_LIST.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["PROD_SID"] = PROD_SID_LIST[i];
                temp.Rows.Add(dr);
            }
            //삭제할 SID들의 집합
            PROD_SID_LIST_DS.Tables.Add(temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PRODUCT_EXCEL_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_NAME", PRODUCT_NM);
                hs.Add("I_PRODUCT_CODE", PRODUCT_CD);
                hs.Add("I_VIEW_FLAG", VIEW_FLAG);
                hs.Add("I_FROM_DATE", CREATED_PROD_FROM);
                hs.Add("I_TO_DATE", CREATED_PROD_TO);
                hs.Add("I_GROUP_CATEGORY", CATEGORY_NAME);
                hs.Add("I_AUTO_FLAG", AUTO_FLAG);
                hs.Add("I_XML", PROD_SID_LIST_DS.GetXml());

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CHECK");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    //totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    //PROD_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    //pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
                    //search_flag = "Y";


                    listset = ds;
                    reportdown(listset);
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
        private void reportdown(DataSet report)
        {
            string TEMP_PATH = ConfigurationManager.AppSettings["TempPath"];
            string TEMPLATE_PATH = ConfigurationManager.AppSettings["TemplatePath"]; 

            string ret = "";
            RPDS = report;
            string yyyymmdd = DateTime.Now.ToString("yyyyMMdd");//""
            string hhmmss = DateTime.Now.ToString("HHmmss");//""
            string excelCreateFile = "DRKID_PROD_TEM_" + yyyymmdd + "_" + hhmmss + ".xlsx"; //"INVEN_DAILY_REPORT_20230829_142809.xlsx"
            string excelCreatePathFile = TEMP_PATH + "\\" + yyyymmdd + "\\" + excelCreateFile; //"c:\\Temp\\DANSUK\\20230829\\INVEN_DAILY_REPORT_20230829_142809.xlsx"
            string excelTemplatePathFile = TEMPLATE_PATH + "\\DRKID_PROD_TEM.xlsx";//"C:\\Inven\\template\\INVEN_DAILY_REPORT.xlsx"

            if (!Directory.Exists(TEMP_PATH + "\\" + yyyymmdd))
            {
                Directory.CreateDirectory(TEMP_PATH + "\\" + yyyymmdd);
            }
            //파일 삭제
            if (File.Exists(excelCreatePathFile))
            {
                File.Delete(excelCreatePathFile);
            }
            try
            {
                var a = AppDomain.CurrentDomain.BaseDirectory;
                FileStream stream1 = new FileStream(a + excelTemplatePathFile, FileMode.Open, FileAccess.Read);
                XSSFWorkbook wb = new XSSFWorkbook(stream1); // 이부분에서 에러가 납니다.
                stream1.Close();
                ISheet sheet1 = wb.GetSheet("Sheet1");//{Name: /xl/worksheets/sheet1.xml - Content Type: application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml}


                int prodCount = RPDS.Tables["O_RESULT_CURSOR_PROD"].Rows.Count;//제품
                int optionCount = RPDS.Tables["O_RESULT_CURSOR_OPTION"].Rows.Count;//옵션
                //int optionstockCount = RPDS.Tables["O_RESULT_CURSOR_OPTION_STOCK"].Rows.Count;//옵션등록 제품

                int Curr = 0;
                int mergeCount = 0;
                bool mergeFlag = false;
                DataTable ProductGroup = RPDS.Tables["O_RESULT_CURSOR_PROD"].AsEnumerable().GroupBy(r => new { PRODUCT_SID = r["PRODUCT_SID"] }).Select(g => g.OrderBy(r => r["PRODUCT_SID"]).First()).CopyToDataTable();

                //옵션이 있으면
                if (optionCount > 0)
                {
                    for (int i = 0; i < ProductGroup.Rows.Count; i++)//O_RESULT_CURSOR_PROD.rowcount = master
                    {
                        DataRow[] dr = RPDS.Tables["O_RESULT_CURSOR_OPTION"].Select("PARENT_SID = '" + ProductGroup.Rows[i]["PRODUCT_SID"] + "' ");
                        if (dr.Length > 0)
                        {
                            for (int j = 0; j < dr.Length; j++)
                            {
                                //공백은 에러가 나기때문에 헤더를 복사해서 다음줄에 넣음.
                                sheet1.GetRow(3).CopyRowTo(4 + Curr - mergeCount);
                                ////PROD
                                sheet1.GetRow(4 + Curr).GetCell(0).SetCellValue("" + (i + 1));//0.NO
                                sheet1.GetRow(4 + Curr).GetCell(1).SetCellValue(BizUtil.getStr(ProductGroup.Rows[i]["PRODUCT_CD"])); //1.제품코드
                                sheet1.GetRow(4 + Curr).GetCell(2).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_NM"]);  //2.상품명
                                sheet1.GetRow(4 + Curr).GetCell(3).SetCellValue("" + ProductGroup.Rows[i]["GROUP_CATEGORY_NAME"]);//3.카테고리
                                sheet1.GetRow(4 + Curr).GetCell(4).SetCellValue("" + ProductGroup.Rows[i]["RELATION_PROD_NM"]);//4.연결제품
                                sheet1.GetRow(4 + Curr).GetCell(5).SetCellValue("" + ProductGroup.Rows[i]["VIEW_FLAG"]);//5.전시상태
                                sheet1.GetRow(4 + Curr).GetCell(6).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_SEARCH_TAG"]);//6.검색키워드
                                sheet1.GetRow(4 + Curr).GetCell(7).SetCellValue("" + ProductGroup.Rows[i]["USED_SELOVE"]);//7.셀럽여부
                                sheet1.GetRow(4 + Curr).GetCell(8).SetCellValue("" + ProductGroup.Rows[i]["SALE_RATE"]);//8.상품가
                                sheet1.GetRow(4 + Curr).GetCell(9).SetCellValue("" + ProductGroup.Rows[i]["VIEW_SALE_RATE"]);//9.판매가
                                sheet1.GetRow(4 + Curr).GetCell(10).SetCellValue("" + ProductGroup.Rows[i]["PV_RATE"]);//10.PV
                                sheet1.GetRow(4 + Curr).GetCell(11).SetCellValue("" + ProductGroup.Rows[i]["BV_RATE"]);//11.BV
                                sheet1.GetRow(4 + Curr).GetCell(12).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_NM"]);//12.배송비종류
                                sheet1.GetRow(4 + Curr).GetCell(13).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST"]);//13.기본배송비
                                sheet1.GetRow(4 + Curr).GetCell(14).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST2"]);//14.추가배송비 (제주/도서산간)
                                sheet1.GetRow(4 + Curr).GetCell(15).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_FREE_COST"] + "원 이상");//15.배송비조건(무료배송조건)
                                sheet1.GetRow(4 + Curr).GetCell(16).SetCellValue("" + ProductGroup.Rows[i]["AUTO_FLAG"]);//16.정기배송 여부
                                sheet1.GetRow(4 + Curr).GetCell(17).SetCellValue("" + ProductGroup.Rows[i]["AUTO_RATE3"]);//17.정기구매가
                                sheet1.GetRow(4 + Curr).GetCell(18).SetCellValue("" + ProductGroup.Rows[i]["AUTO_PV_RATE"]);//18.정기배송 PV
                                sheet1.GetRow(4 + Curr).GetCell(19).SetCellValue("" + ProductGroup.Rows[i]["AUTO_BV_RATE"]);//19.정기배송 BV
                                sheet1.GetRow(4 + Curr).GetCell(20).SetCellValue("" + ProductGroup.Rows[i]["REBUY_FLAG"]);//20.재구매 할인여부
                                sheet1.GetRow(4 + Curr).GetCell(21).SetCellValue("" + ProductGroup.Rows[i]["REBUY_RATE"]);//21.재구매 할인율
                                sheet1.GetRow(4 + Curr).GetCell(22).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_FLAG"]);//22.회원 할인여부
                                sheet1.GetRow(4 + Curr).GetCell(23).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_RATE"] + "%");//23.회원 할인율
                                sheet1.GetRow(4 + Curr).GetCell(24).SetCellValue("" + ProductGroup.Rows[i]["POINT_FLAG"]);//24.포인트여부
                                sheet1.GetRow(4 + Curr).GetCell(25).SetCellValue("" + ProductGroup.Rows[i]["POINT_PER"] + "%");//25.포인트 할인율
                                //OPTION
                                sheet1.GetRow(4 + Curr).GetCell(26).SetCellValue("" + dr[j]["OPTION_NAME"]);//26.옵션명
                                sheet1.GetRow(4 + Curr).GetCell(27).SetCellValue("" + dr[j]["OPTION_SALE_TYPE"] + dr[j]["OPTION_SALE_RATE"]);//27.옵션 상품가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션상품가
                                sheet1.GetRow(4 + Curr).GetCell(28).SetCellValue("" + dr[j]["OPTION_VIEW_SALE_TYPE"] + dr[j]["OPTION_VIEW_SALE_RATE"]);//28.옵션 판매가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션판매가
                                sheet1.GetRow(4 + Curr).GetCell(29).SetCellValue("" + dr[j]["PV_RATE"]);//29.옵션 PV
                                sheet1.GetRow(4 + Curr).GetCell(30).SetCellValue("" + dr[j]["BV_RATE"]);//30.옵션 BV
                                sheet1.GetRow(4 + Curr).GetCell(31).SetCellValue("" + dr[j]["OPTION_RELATION_STOCK"]);//31.옵션 연결제품
                                sheet1.GetRow(4 + Curr).GetCell(32).SetCellValue("" + dr[j]["AUTO_FLAG"]);//32.옵션 정기배송 여부
                                sheet1.GetRow(4 + Curr).GetCell(33).SetCellValue("" + dr[j]["AUTO_RATE3"]);//33.옵션 정기배송비
                                sheet1.GetRow(4 + Curr).GetCell(34).SetCellValue("" + dr[j]["AUTO_PV_RATE"]);//34.옵션 정기배송 PV
                                sheet1.GetRow(4 + Curr).GetCell(35).SetCellValue("" + dr[j]["AUTO_BV_RATE"]);//34.옵션 정기배송 BV
                                mergeFlag = true;
                                Curr++;
                            }
                        }

                        else
                        {
                            //일부 옵션만 없으면
                            sheet1.GetRow(3).CopyRowTo(4 + Curr);
                            if (i == 0)
                            {
                                //PROD
                                sheet1.GetRow(4).GetCell(0).SetCellValue("" + (i + 1));//0.NO
                                sheet1.GetRow(4).GetCell(1).SetCellValue(BizUtil.getStr(ProductGroup.Rows[i]["PRODUCT_CD"])); //1.제품코드
                                sheet1.GetRow(4).GetCell(2).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_NM"]);  //2.상품명
                                sheet1.GetRow(4).GetCell(3).SetCellValue("" + ProductGroup.Rows[i]["GROUP_CATEGORY_NAME"]);//3.카테고리
                                sheet1.GetRow(4).GetCell(4).SetCellValue("" + ProductGroup.Rows[i]["RELATION_PROD_NM"]);//4.연결제품
                                sheet1.GetRow(4).GetCell(5).SetCellValue("" + ProductGroup.Rows[i]["VIEW_FLAG"]);//5.전시상태
                                sheet1.GetRow(4).GetCell(6).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_SEARCH_TAG"]);//6.검색키워드
                                sheet1.GetRow(4).GetCell(7).SetCellValue("" + ProductGroup.Rows[i]["USED_SELOVE"]);//7.셀럽여부
                                sheet1.GetRow(4).GetCell(8).SetCellValue("" + ProductGroup.Rows[i]["SALE_RATE"]);//8.상품가
                                sheet1.GetRow(4).GetCell(9).SetCellValue("" + ProductGroup.Rows[i]["VIEW_SALE_RATE"]);//9.판매가
                                sheet1.GetRow(4).GetCell(10).SetCellValue("" + ProductGroup.Rows[i]["PV_RATE"]);//10.PV
                                sheet1.GetRow(4).GetCell(11).SetCellValue("" + ProductGroup.Rows[i]["BV_RATE"]);//11.BV
                                sheet1.GetRow(4).GetCell(12).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_NM"]);//12.배송비종류
                                sheet1.GetRow(4).GetCell(13).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST"]);//13.기본배송비
                                sheet1.GetRow(4).GetCell(14).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST2"]);//14.추가배송비 (제주/도서산간)
                                sheet1.GetRow(4).GetCell(15).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_FREE_COST"] + "원 이상");//15.배송비조건(무료배송조건)
                                sheet1.GetRow(4).GetCell(16).SetCellValue("" + ProductGroup.Rows[i]["AUTO_FLAG"]);//16.정기배송 여부
                                sheet1.GetRow(4).GetCell(17).SetCellValue("" + ProductGroup.Rows[i]["AUTO_RATE3"]);//17.정기구매가
                                sheet1.GetRow(4).GetCell(18).SetCellValue("" + ProductGroup.Rows[i]["AUTO_PV_RATE"]);//18.정기배송 PV
                                sheet1.GetRow(4).GetCell(19).SetCellValue("" + ProductGroup.Rows[i]["AUTO_BV_RATE"]);//19.정기배송 BV
                                sheet1.GetRow(4).GetCell(20).SetCellValue("" + ProductGroup.Rows[i]["REBUY_FLAG"]);//20.재구매 할인여부
                                sheet1.GetRow(4).GetCell(21).SetCellValue("" + ProductGroup.Rows[i]["REBUY_RATE"]);//21.재구매 할인율
                                sheet1.GetRow(4).GetCell(22).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_FLAG"]);//22.회원 할인여부
                                sheet1.GetRow(4).GetCell(23).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_RATE"] + "%");//23.회원 할인율
                                sheet1.GetRow(4).GetCell(24).SetCellValue("" + ProductGroup.Rows[i]["POINT_FLAG"]);//24.포인트여부
                                sheet1.GetRow(4).GetCell(25).SetCellValue("" + ProductGroup.Rows[i]["POINT_PER"] + "%");//25.포인트 할인율

                                //OPTION
                                sheet1.GetRow(4).GetCell(26).SetCellValue("");//26.옵션명
                                sheet1.GetRow(4).GetCell(27).SetCellValue("");//27.옵션 상품가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션상품가
                                sheet1.GetRow(4).GetCell(28).SetCellValue("");//28.옵션 판매가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션판매가
                                sheet1.GetRow(4).GetCell(29).SetCellValue("");//29.옵션 PV
                                sheet1.GetRow(4).GetCell(30).SetCellValue("");//30.옵션 BV
                                sheet1.GetRow(4).GetCell(31).SetCellValue("");//31.옵션 연결제품
                                sheet1.GetRow(4).GetCell(32).SetCellValue(""); ;//32.옵션 정기배송 여부
                                sheet1.GetRow(4).GetCell(33).SetCellValue("");//33.옵션 정기배송비
                                sheet1.GetRow(4).GetCell(34).SetCellValue("");//34.옵션 정기배송 PV
                                sheet1.GetRow(4).GetCell(35).SetCellValue("");//35.옵션 정기배송 BV

                            }
                            ////PROD
                            sheet1.GetRow(4 + Curr).GetCell(0).SetCellValue("" + (i + 1));//0.NO
                            sheet1.GetRow(4 + Curr).GetCell(1).SetCellValue(BizUtil.getStr(ProductGroup.Rows[i]["PRODUCT_CD"])); //1.제품코드
                            sheet1.GetRow(4 + Curr).GetCell(2).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_NM"]);  //2.상품명
                            sheet1.GetRow(4 + Curr).GetCell(3).SetCellValue("" + ProductGroup.Rows[i]["GROUP_CATEGORY_NAME"]);//3.카테고리
                            sheet1.GetRow(4 + Curr).GetCell(4).SetCellValue("" + ProductGroup.Rows[i]["RELATION_PROD_NM"]);//4.연결제품
                            sheet1.GetRow(4 + Curr).GetCell(5).SetCellValue("" + ProductGroup.Rows[i]["VIEW_FLAG"]);//5.전시상태
                            sheet1.GetRow(4 + Curr).GetCell(6).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_SEARCH_TAG"]);//6.검색키워드
                            sheet1.GetRow(4 + Curr).GetCell(7).SetCellValue("" + ProductGroup.Rows[i]["USED_SELOVE"]);//7.셀럽여부
                            sheet1.GetRow(4 + Curr).GetCell(8).SetCellValue("" + ProductGroup.Rows[i]["SALE_RATE"]);//8.상품가
                            sheet1.GetRow(4 + Curr).GetCell(9).SetCellValue("" + ProductGroup.Rows[i]["VIEW_SALE_RATE"]);//9.판매가
                            sheet1.GetRow(4 + Curr).GetCell(10).SetCellValue("" + ProductGroup.Rows[i]["PV_RATE"]);//10.PV
                            sheet1.GetRow(4 + Curr).GetCell(11).SetCellValue("" + ProductGroup.Rows[i]["BV_RATE"]);//11.BV
                            sheet1.GetRow(4 + Curr).GetCell(12).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_NM"]);//12.배송비종류
                            sheet1.GetRow(4 + Curr).GetCell(13).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST"]);//13.기본배송비
                            sheet1.GetRow(4 + Curr).GetCell(14).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST2"]);//14.추가배송비 (제주/도서산간)
                            sheet1.GetRow(4 + Curr).GetCell(15).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_FREE_COST"] + "원 이상");//15.배송비조건(무료배송조건)
                            sheet1.GetRow(4 + Curr).GetCell(16).SetCellValue("" + ProductGroup.Rows[i]["AUTO_FLAG"]);//16.정기배송 여부
                            sheet1.GetRow(4 + Curr).GetCell(17).SetCellValue("" + ProductGroup.Rows[i]["AUTO_RATE3"]);//17.정기구매가
                            sheet1.GetRow(4 + Curr).GetCell(18).SetCellValue("" + ProductGroup.Rows[i]["AUTO_PV_RATE"]);//18.정기배송 PV
                            sheet1.GetRow(4 + Curr).GetCell(19).SetCellValue("" + ProductGroup.Rows[i]["AUTO_BV_RATE"]);//19.정기배송 BV
                            sheet1.GetRow(4 + Curr).GetCell(20).SetCellValue("" + ProductGroup.Rows[i]["REBUY_FLAG"]);//20.재구매 할인여부
                            sheet1.GetRow(4 + Curr).GetCell(21).SetCellValue("" + ProductGroup.Rows[i]["REBUY_RATE"]);//21.재구매 할인율
                            sheet1.GetRow(4 + Curr).GetCell(22).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_FLAG"]);//22.회원 할인여부
                            sheet1.GetRow(4 + Curr).GetCell(23).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_RATE"] + "%");//23.회원 할인율
                            sheet1.GetRow(4 + Curr).GetCell(24).SetCellValue("" + ProductGroup.Rows[i]["POINT_FLAG"]);//24.포인트여부
                            sheet1.GetRow(4 + Curr).GetCell(25).SetCellValue("" + ProductGroup.Rows[i]["POINT_PER"] + "%");//25.포인트 할인율
                            //OPTION             
                            sheet1.GetRow(4 + Curr).GetCell(26).SetCellValue("");//26.옵션명
                            sheet1.GetRow(4 + Curr).GetCell(27).SetCellValue("");//27.옵션 상품가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션상품가
                            sheet1.GetRow(4 + Curr).GetCell(28).SetCellValue("");//28.옵션 판매가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션판매가
                            sheet1.GetRow(4 + Curr).GetCell(29).SetCellValue("");//29.옵션 PV
                            sheet1.GetRow(4 + Curr).GetCell(30).SetCellValue("");//30.옵션 BV
                            sheet1.GetRow(4 + Curr).GetCell(31).SetCellValue("");//31.옵션 연결제품
                            sheet1.GetRow(4 + Curr).GetCell(32).SetCellValue(""); ;//32.옵션 정기배송 여부
                            sheet1.GetRow(4 + Curr).GetCell(33).SetCellValue("");//33.옵션 정기배송비
                            sheet1.GetRow(4 + Curr).GetCell(34).SetCellValue("");//34.옵션 정기배송 PV
                            sheet1.GetRow(4 + Curr).GetCell(35).SetCellValue("");//35.옵션 정기배송 BV
                            Curr++;
                        }
                    }
                }
                //전체 옵션 CURSOR의 ROWS.COUNT가 하나도 없으면
                else
                {
                    for (int i = 0; i < ProductGroup.Rows.Count; i++)//O_RESULT_CURSOR_PROD.rowcount = master
                    {
                        sheet1.GetRow(3).CopyRowTo(4 + Curr);
                        if (i == 0)
                        {
                            //PROD
                            sheet1.GetRow(4).GetCell(0).SetCellValue("" + (i + 1));//0.NO
                            sheet1.GetRow(4).GetCell(1).SetCellValue(BizUtil.getStr(ProductGroup.Rows[i]["PRODUCT_CD"])); //1.제품코드
                            sheet1.GetRow(4).GetCell(2).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_NM"]);  //2.상품명
                            sheet1.GetRow(4).GetCell(3).SetCellValue("" + ProductGroup.Rows[i]["GROUP_CATEGORY_NAME"]);//3.카테고리
                            sheet1.GetRow(4).GetCell(4).SetCellValue("" + ProductGroup.Rows[i]["RELATION_PROD_NM"]);//4.연결제품
                            sheet1.GetRow(4).GetCell(5).SetCellValue("" + ProductGroup.Rows[i]["VIEW_FLAG"]);//5.전시상태
                            sheet1.GetRow(4).GetCell(6).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_SEARCH_TAG"]);//6.검색키워드
                            sheet1.GetRow(4).GetCell(7).SetCellValue("" + ProductGroup.Rows[i]["USED_SELOVE"]);//7.셀럽여부
                            sheet1.GetRow(4).GetCell(8).SetCellValue("" + ProductGroup.Rows[i]["SALE_RATE"]);//8.상품가
                            sheet1.GetRow(4).GetCell(9).SetCellValue("" + ProductGroup.Rows[i]["VIEW_SALE_RATE"]);//9.판매가
                            sheet1.GetRow(4).GetCell(10).SetCellValue("" + ProductGroup.Rows[i]["PV_RATE"]);//10.PV
                            sheet1.GetRow(4).GetCell(11).SetCellValue("" + ProductGroup.Rows[i]["BV_RATE"]);//11.BV
                            sheet1.GetRow(4).GetCell(12).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_NM"]);//12.배송비종류
                            sheet1.GetRow(4).GetCell(13).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST"]);//13.기본배송비
                            sheet1.GetRow(4).GetCell(14).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST2"]);//14.추가배송비 (제주/도서산간)
                            sheet1.GetRow(4).GetCell(15).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_FREE_COST"] + "원 이상");//15.배송비조건(무료배송조건)
                            sheet1.GetRow(4).GetCell(16).SetCellValue("" + ProductGroup.Rows[i]["AUTO_FLAG"]);//16.정기배송 여부
                            sheet1.GetRow(4).GetCell(17).SetCellValue("" + ProductGroup.Rows[i]["AUTO_RATE3"]);//17.정기구매가
                            sheet1.GetRow(4).GetCell(18).SetCellValue("" + ProductGroup.Rows[i]["AUTO_PV_RATE"]);//18.정기배송 PV
                            sheet1.GetRow(4).GetCell(19).SetCellValue("" + ProductGroup.Rows[i]["AUTO_BV_RATE"]);//19.정기배송 BV
                            sheet1.GetRow(4).GetCell(20).SetCellValue("" + ProductGroup.Rows[i]["REBUY_FLAG"]);//20.재구매 할인여부
                            sheet1.GetRow(4).GetCell(21).SetCellValue("" + ProductGroup.Rows[i]["REBUY_RATE"]);//21.재구매 할인율
                            sheet1.GetRow(4).GetCell(22).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_FLAG"]);//22.회원 할인여부
                            sheet1.GetRow(4).GetCell(23).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_RATE"]);//23.회원 할인율
                            sheet1.GetRow(4).GetCell(24).SetCellValue("" + ProductGroup.Rows[i]["POINT_FLAG"]);//24.포인트여부
                            sheet1.GetRow(4).GetCell(25).SetCellValue("" + ProductGroup.Rows[i]["POINT_PER"] + "%");//25.포인트 할인율
                            //OPTION
                            sheet1.GetRow(4).GetCell(26).SetCellValue("");//26.옵션명
                            sheet1.GetRow(4).GetCell(27).SetCellValue("");//27.옵션 상품가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션상품가
                            sheet1.GetRow(4).GetCell(28).SetCellValue("");//28.옵션 판매가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션판매가
                            sheet1.GetRow(4).GetCell(29).SetCellValue("");//29.옵션 PV
                            sheet1.GetRow(4).GetCell(30).SetCellValue("");//30.옵션 BV
                            sheet1.GetRow(4).GetCell(31).SetCellValue("");//31.옵션 연결제품
                            sheet1.GetRow(4).GetCell(32).SetCellValue(""); ;//32.옵션 정기배송 여부
                            sheet1.GetRow(4).GetCell(33).SetCellValue("");//33.옵션 정기배송비
                            sheet1.GetRow(4).GetCell(34).SetCellValue("");//34.옵션 정기배송 PV
                            sheet1.GetRow(4).GetCell(35).SetCellValue("");//35.옵션 정기배송 BV
                        }
                        ////PROD
                        sheet1.GetRow(4 + Curr).GetCell(0).SetCellValue("" + (i + 1));//0.NO
                        sheet1.GetRow(4 + Curr).GetCell(1).SetCellValue(BizUtil.getStr(ProductGroup.Rows[i]["PRODUCT_CD"])); //1.제품코드
                        sheet1.GetRow(4 + Curr).GetCell(2).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_NM"]);  //2.상품명
                        sheet1.GetRow(4 + Curr).GetCell(3).SetCellValue("" + ProductGroup.Rows[i]["GROUP_CATEGORY_NAME"]);//3.카테고리
                        sheet1.GetRow(4 + Curr).GetCell(4).SetCellValue("" + ProductGroup.Rows[i]["RELATION_PROD_NM"]);//4.연결제품
                        sheet1.GetRow(4 + Curr).GetCell(5).SetCellValue("" + ProductGroup.Rows[i]["VIEW_FLAG"]);//5.전시상태
                        sheet1.GetRow(4 + Curr).GetCell(6).SetCellValue("" + ProductGroup.Rows[i]["PRODUCT_SEARCH_TAG"]);//6.검색키워드
                        sheet1.GetRow(4 + Curr).GetCell(7).SetCellValue("" + ProductGroup.Rows[i]["USED_SELOVE"]);//7.셀럽여부
                        sheet1.GetRow(4 + Curr).GetCell(8).SetCellValue("" + ProductGroup.Rows[i]["SALE_RATE"]);//8.상품가
                        sheet1.GetRow(4 + Curr).GetCell(9).SetCellValue("" + ProductGroup.Rows[i]["VIEW_SALE_RATE"]);//9.판매가
                        sheet1.GetRow(4 + Curr).GetCell(10).SetCellValue("" + ProductGroup.Rows[i]["PV_RATE"]);//10.PV
                        sheet1.GetRow(4 + Curr).GetCell(11).SetCellValue("" + ProductGroup.Rows[i]["BV_RATE"]);//11.BV
                        sheet1.GetRow(4 + Curr).GetCell(12).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_NM"]);//12.배송비종류
                        sheet1.GetRow(4 + Curr).GetCell(13).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST"]);//13.기본배송비
                        sheet1.GetRow(4 + Curr).GetCell(14).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_COST2"]);//14.추가배송비 (제주/도서산간)
                        sheet1.GetRow(4 + Curr).GetCell(15).SetCellValue("" + ProductGroup.Rows[i]["DELIVERY_FREE_COST"] + "원 이상");//15.배송비조건(무료배송조건)
                        sheet1.GetRow(4 + Curr).GetCell(16).SetCellValue("" + ProductGroup.Rows[i]["AUTO_FLAG"]);//16.정기배송 여부
                        sheet1.GetRow(4 + Curr).GetCell(17).SetCellValue("" + ProductGroup.Rows[i]["AUTO_RATE3"]);//17.정기구매가
                        sheet1.GetRow(4 + Curr).GetCell(18).SetCellValue("" + ProductGroup.Rows[i]["AUTO_PV_RATE"]);//18.정기배송 PV
                        sheet1.GetRow(4 + Curr).GetCell(19).SetCellValue("" + ProductGroup.Rows[i]["AUTO_BV_RATE"]);//19.정기배송 BV
                        sheet1.GetRow(4 + Curr).GetCell(20).SetCellValue("" + ProductGroup.Rows[i]["REBUY_FLAG"]);//20.재구매 할인여부
                        sheet1.GetRow(4 + Curr).GetCell(21).SetCellValue("" + ProductGroup.Rows[i]["REBUY_RATE"]);//21.재구매 할인율
                        sheet1.GetRow(4 + Curr).GetCell(22).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_FLAG"]);//22.회원 할인여부
                        sheet1.GetRow(4 + Curr).GetCell(23).SetCellValue("" + ProductGroup.Rows[i]["USER_SALE_RATE"]);//23.회원 할인율
                        sheet1.GetRow(4 + Curr).GetCell(24).SetCellValue("" + ProductGroup.Rows[i]["POINT_FLAG"]);//24.포인트여부
                        sheet1.GetRow(4 + Curr).GetCell(25).SetCellValue("" + ProductGroup.Rows[i]["POINT_PER"] + "%");//25.포인트 할인율
                        //OPTION
                        sheet1.GetRow(4 + Curr).GetCell(26).SetCellValue("");//26.옵션명
                        sheet1.GetRow(4 + Curr).GetCell(27).SetCellValue("");//27.옵션 상품가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션상품가
                        sheet1.GetRow(4 + Curr).GetCell(28).SetCellValue("");//28.옵션 판매가 ex) OPTION_VIEW_SALE_TYPE(+,-) 옵션판매가
                        sheet1.GetRow(4 + Curr).GetCell(29).SetCellValue("");//29.옵션 PV
                        sheet1.GetRow(4 + Curr).GetCell(30).SetCellValue("");//30.옵션 BV
                        sheet1.GetRow(4 + Curr).GetCell(31).SetCellValue("");//31.옵션 연결제품
                        sheet1.GetRow(4 + Curr).GetCell(32).SetCellValue(""); ;//32.옵션 정기배송 여부
                        sheet1.GetRow(4 + Curr).GetCell(33).SetCellValue("");//33.옵션 정기배송비
                        sheet1.GetRow(4 + Curr).GetCell(34).SetCellValue("");//34.옵션 정기배송 PV
                        sheet1.GetRow(4 + Curr).GetCell(35).SetCellValue("");//35.옵션 정기배송 BV
                        Curr++;
                    }
                }


                //병합 1
                //if (mergeFlag)
                //{
                //    ICell compare_cellRow1;
                //    ICell compare_cellRow2;
                //    string compare_Value1;
                //    string compare_Value2;

                //    for (int k = 0; k < ProductGroup.Rows.Count; k++)
                //    {
                //        compare_cellRow1 = sheet1.GetRow(4 + k).GetCell(k);
                //        compare_cellRow2 = sheet1.GetRow(4 + k + 1).GetCell(k);
                //        compare_Value1 = compare_cellRow1.StringCellValue;
                //        compare_Value2 = compare_cellRow2.StringCellValue;
                //        if (compare_Value1 == compare_Value2)
                //        {
                //            for (int z = 0; z < 26; z++)
                //            {
                //                sheet1.AddMergedRegion(new NPOI.SS.Util.CellRangeAddress((4 + k ), (4 + k + 1 ), z, z));

                //            }
                //            //mergeCount++;
                //            k++;

                //        }
                //    }
                //}

                //병합 2
                //if (mergeFlag)
                //{
                //    ICell compare_cellRow1;
                //    ICell compare_cellRow2;
                //    string compare_Value1;
                //    string compare_Value2;
                //    bool detailMarge_Flag = false;
                //    int compareIndex = 0;
                //    int compareCount = 0;
                //    List<int> compareValue_List;

                //    for (int k = 0; k < ProductGroup.Rows.Count; k++)
                //    {
                //        compare_cellRow1 = sheet1.GetRow(4 + compareIndex).GetCell(k);
                //        compare_cellRow2 = sheet1.GetRow(4 + k + 1).GetCell(k);
                //        compare_Value1 = compare_cellRow1.StringCellValue;
                //        compare_Value2 = compare_cellRow2.StringCellValue;

                //        if (compare_Value1 == compare_Value2)
                //        {
                //            detailMarge_Flag = true;
                //            compareCount++;
                //            compareValue_List.Add(compareIndex);
                //        }
                //        compareIndex++;
                //    }

                //    if (detailMarge_Flag)
                //    {
                //        for (int z = 0; z < 26; z++)
                //        {
                //            sheet1.AddMergedRegion(new NPOI.SS.Util.CellRangeAddress((4 + k + compareCount), (4 + k + 1 + compareCount), z, z));

                //        }
                //        k++;
                //        detailMarge_Flag = false;
                //    }

                //}

                //sheet1.AddMergedRegion(new NPOI.SS.Util.CellRangeAddress(4, 5, 0, 0));
                //sheet1.AddMergedRegion(new NPOI.SS.Util.CellRangeAddress(6, 7, 0, 0));


                Response.Clear();
                Response.ContentType = "application/octet-stream";

                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Server.UrlEncode("DRKID_PROD_TEM.xlsx"));
                using (MemoryStream memoryStream = new MemoryStream())
                {
                    wb.Write(memoryStream);
                    memoryStream.WriteTo(Response.OutputStream);
                    memoryStream.Close();
                }
                Response.End();
            }
            catch (Exception ex)
            {
                ret = "";
                _retErrMsg = ex.ToString();
            }

        }
        private void refresh_ProdCount()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_COUNT");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CHECK");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    PROD_STATUS_TOTAL = ds.Tables["O_RESULT_CURSOR_COUNT"];
                    ALL_COUNT = PROD_STATUS_TOTAL.Rows[0]["ALL_COUNT"].ToString();
                    VIEW_COUNT = PROD_STATUS_TOTAL.Rows[0]["VIEW_COUNT"].ToString();
                    NOVIEW_COUNT = PROD_STATUS_TOTAL.Rows[0]["NOVIEW_COUNT"].ToString();
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
        private void changeStatus()
        {
            change_value = Request["CHANGE_VALUE"];
            change_sid = Request.Form.GetValues("CHANGE_SID_LIST");
            change_sid_values = change_sid[0];
            // ' , ' 제거
            change_sid = change_sid_values.Split(',').Select(s => s.Trim()).ToArray();


            //temp
            DataTable temp = new DataTable();
            temp.TableName = "PROD_CHANGE_TEMP"; // 매거진 선택삭제 sp 그대로 써서 temp 및 sp 명이 이렇습니다.
            temp.Columns.Add("CHANGE_SID");
            for (int i = 0; i < change_sid.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["CHANGE_SID"] = change_sid[i];
                temp.Rows.Add(dr);
            }
            //전시상태를 변경할 상품 SID들의 데이터셋
            CHANGE_PROD_DS.Tables.Add(temp);
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {

                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PROD_STATUS_CHANGE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", CHANGE_PROD_DS.GetXml());
                hs.Add("I_CHANGE_STATUS", change_value);


                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CHECK");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    change_flag = "Y";
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
        private void search_ProdList()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            if (custom_Paging > 0)
            {
                offset = custom_Paging;
            }
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_NAME", PRODUCT_NM);
                hs.Add("I_PRODUCT_CODE", PRODUCT_CD);
                hs.Add("I_VIEW_FLAG", VIEW_FLAG);
                hs.Add("I_FROM_DATE", CREATED_PROD_FROM);
                hs.Add("I_TO_DATE", CREATED_PROD_TO);
                hs.Add("I_GROUP_CATEGORY", CATEGORY_NAME);
                hs.Add("I_AUTO_FLAG", AUTO_FLAG);
                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CHECK");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    PROD_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
                    search_flag = "Y";
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

        private void search_ProdCount(bizHelper biz)
        {
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.PPM_PRODUCT_COUNT");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_PRODUCT_CHECK");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    PROD_STATUS_TOTAL = ds.Tables["O_RESULT_CURSOR_COUNT"];
                    ALL_COUNT = PROD_STATUS_TOTAL.Rows[0]["ALL_COUNT"].ToString();
                    VIEW_COUNT = PROD_STATUS_TOTAL.Rows[0]["VIEW_COUNT"].ToString();
                    NOVIEW_COUNT = PROD_STATUS_TOTAL.Rows[0]["NOVIEW_COUNT"].ToString();
                }
            }
            catch (Exception ex)
            {
                cp_ret_status = "Y";
                cp_ret_message = ex.Message;
            }
        }
        private void setParam()
        {
            DATEUI = Request["DATEUI"];
            PRODUCT_NM = Request["PRODUCT_NM"]; //상품명
            PRODUCT_CD = Request["PRODUCT_CD"]; //상품코드
            VIEW_FLAG = Request["VIEW_FLAG"]; //전시상태
            CREATED_PROD_FROM = Request["CREATED_PROD_FROM"]; //상품등록일자 FROM
            CREATED_PROD_TO = Request["CREATED_PROD_TO"]; //상품등록일자 TO
            if (!String.IsNullOrEmpty(CREATED_PROD_FROM)) {
                CREATED_PROD_FROM = CREATED_PROD_FROM.Replace("-", "").Trim();
            }
            if (!String.IsNullOrEmpty(CREATED_PROD_TO))
            {
                CREATED_PROD_TO = CREATED_PROD_TO.Replace("-", "").Trim();
            }
            CATEGORY_NAME_ARRY = Request.Form.GetValues("CATEGORY_NAME");//카테고리 ( 공백 ~ 여러개 이상)
            CATEGORY_SID = Request.Form.GetValues("CATEGORY_SID");

            if (CATEGORY_NAME_ARRY != null)
            {
                //등록한 카테고리가 하나 이상이면 배열이 아닌 string 형태로 포맷 ex)"신당케어,비알화강"
                CATEGORY_NAME = string.Join(",", CATEGORY_NAME_ARRY);
            }
            AUTO_FLAG = Request["AUTO_FLAG"];


        }


    }
}
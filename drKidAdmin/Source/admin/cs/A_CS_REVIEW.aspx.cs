using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace drKidAdmin.Source.admin.cs
{
    public partial class A_CS_REVIEW : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";
        public string del_flag = "";
        public string change_flag = "";

        public string FROM = ""; // 리뷰등록일자 FROM
        public string TO = "";// 상품등록일자 TO
        public string DATEUI = "7"; //사용자가 세팅한 상품등록일자 검색UI 정보(today,7,15,30 ...), 디폴트가 7일
        public string BEST_FLAG = ""; //베스트 리뷰 여부
        public Int32 PRODUCT_SCORE = 0;
        public string[] CATEGORY_NAME_ARRY; //카테고리 ( 공백 ~ 여러개 이상)
        public string[] CATEGORY_SID;// 카테고리 sid
        public string CATEGORY_NAME = ""; // 카테고리 명
        public string REVIEW_TITLE = ""; // 리뷰 제목 검색어
        public string SEARCH_TYPE = ""; // 리뷰 제목 검색어
        public DataTable REVIEW_TABLE = null;// 검색된 리뷰 리스트 

        public string[] CHOICE_REVIEW_SID;
        //리뷰 삭제 관련
        DataSet DEL_REVIEW_DS = new DataSet();
        //리뷰 베스트 변경 관련
        DataSet CHANGE_REVIEW_DS = new DataSet();
        public string changeType = "";

        //페이징 관련
        public int offset = 0;
        public int matches = 10;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;
        public string searchBtn_Click_Flag = "";
        public int custom_Paging = 0;
        public string request_userName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            if (!IsPostBack)
            {
                request_userName = Request["USER_ID"];
            }
            else
            {
                flag = Request["flag"];
                switch (flag)
                {
                    case "search":
                        setParam();
                        setNaviString();
                        Inquery();
                        break;

                    case "change":
                        setParam();
                        changeBest();
                        Inquery();
                        break;

                    case "del":
                        setParam();
                        delReview();
                        Inquery();
                        break;

                    case "modalChange":
                        setParam();
                        //모달에서 베스트 선정은 리뷰 1개씩 동작하므로 관련 배열 초기화 
                        CHOICE_REVIEW_SID = new string[1];
                        CHOICE_REVIEW_SID[0] = Request["REVIEWSID_INPUT_CHANGE"];
                        changeBest();
                        Inquery();
                        break;

                    case "modalDel":
                        setParam();
                        CHOICE_REVIEW_SID = new string[1];
                        CHOICE_REVIEW_SID[0] = Request["REVIEWSID_INPUT_DEL"];
                        delReview();
                        Inquery();
                        break;
                }
            }
        }

        private void changeBest()
        {
            changeType = Request["changeType"];
            DataTable temp = new DataTable();
            temp.TableName = "REVIEW_CHANGE_TEMP";
            temp.Columns.Add("CHANGE_SID");
            for (int i = 0; i < CHOICE_REVIEW_SID.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["CHANGE_SID"] = CHOICE_REVIEW_SID[i];
                temp.Rows.Add(dr);
            }
            //전시상태를 변경할 상품 SID들의 데이터셋
            CHANGE_REVIEW_DS.Tables.Add(temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {

                hs.Clear();
                hs.Add("SP_NAME", "PKG_REVIEW_MASTER.REVIEW_STATUS_CHANGE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", CHANGE_REVIEW_DS.GetXml());

                hs.Add("I_CHANGE_STATUS", changeType);
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_REVIEW");

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

        private void delReview()
        {
            DataTable temp = new DataTable();
            temp.TableName = "REVIEW_DEL_TEMP";
            temp.Columns.Add("DEL_SID");
            for (int i = 0; i < CHOICE_REVIEW_SID.Length; i++)
            {
                DataRow dr = temp.NewRow();
                dr["DEL_SID"] = CHOICE_REVIEW_SID[i];
                temp.Rows.Add(dr);
            }
            //전시상태를 변경할 상품 SID들의 데이터셋
            DEL_REVIEW_DS.Tables.Add(temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {

                hs.Clear();
                hs.Add("SP_NAME", "PKG_REVIEW_MASTER.REVIEW_DEL_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", DEL_REVIEW_DS.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_REVIEW");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    del_flag = "Y";
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
        private void setParam()
        {
            CHOICE_REVIEW_SID = Request.Form.GetValues("REVIEW_SID");
            searchBtn_Click_Flag = Request["searchBtn_Click_Flag"];
            DATEUI = Request["DATEUI"];
            FROM = Request["FROM"].Replace("-", "").Trim(); //리뷰등록일자 FROM
            TO = Request["TO"].Replace("-", "").Trim(); //리뷰등록일자 TO
            CATEGORY_SID = Request.Form.GetValues("CATEGORY_SID");
            CATEGORY_NAME_ARRY = Request.Form.GetValues("CATEGORY_NAME");//카테고리 ( 공백 ~ 여러개 이상)
            if (CATEGORY_NAME_ARRY != null)
            {
                //등록한 카테고리가 하나 이상이면 배열이 아닌 string 형태로 포맷 ex)"신당케어,비알화강"
                CATEGORY_NAME = string.Join(",", CATEGORY_NAME_ARRY);
            }
            BEST_FLAG = Request["BEST_FLAG"];
            REVIEW_TITLE = Request["REVIEW_TITLE"];
            PRODUCT_SCORE = BizUtil.getInt(Request["PRODUCT_SCORE"]);
            SEARCH_TYPE = Request["SEARCH_TYPE"];
        }
        private void Inquery()
        {
            if (custom_Paging > 0)
            {
                offset = custom_Paging;
            }
            if (searchBtn_Click_Flag == "Y")
            {
                offset = 0;
            }

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_REVIEW_MASTER.PRM_REVIEW_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_FROM_DATE", FROM);
                hs.Add("I_TO_DATE", TO);
                hs.Add("I_BEST_FLAG", BEST_FLAG);
                hs.Add("I_GROUP_CATEGORY", CATEGORY_NAME);
                hs.Add("I_PRODUCT_SCORE", PRODUCT_SCORE);
                hs.Add("I_SEARCH_TYPE", SEARCH_TYPE);
                hs.Add("I_REVIEW_TITLE", REVIEW_TITLE);
                

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_REVIEW");
                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);

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


    }
}
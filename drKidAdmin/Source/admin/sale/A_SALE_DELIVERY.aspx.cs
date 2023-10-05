using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace drKidAdmin.Source.admin.sale
{
    public partial class A_SALE_DELIVERY : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string flag = "";

        public string SALE_EST = ""; //캘린더 날짜
        public string SALE_EST_TO = "";//캘린더 날짜

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

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            custom_Paging = BizUtil.getInt(Request["custom_Paging"]);
            SALE_EST = DateTime.Now.ToString("yyyy-MM-dd");
            SALE_EST_TO = DateTime.Now.ToString("yyyy-MM-dd");

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

//search_FAQ 안에 넣으면 됩니다
//검색 조건 리셋안되게 추가 해야 하니 작업 후 추가 할 것 
//if (custom_Paging > 0)
//{
//    offset = custom_Paging;
//}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.member.ajax
{
    public partial class C_PRODUCT_BESTREVIEW : PageBase
    {
        public string PRODUCT_SID = "";
        public string BEST_FLAG = "";
        public string ORDER_TYPE = "";
        public string REVIEW_TITLE = "";
        public string CATEGORY_NAME = "";
        public int offset = 0;
        public int matches = 9;
        public int totalCount = 0;
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string more_btn_flag = "";

        public DataTable REVIEW_TABLE = null;
        public DataTable BEST_REVIEW_TABLE = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            PRODUCT_SID = Request["PRODUCT_SID"];
            BEST_FLAG = Request["BEST_FLAG"];
            ORDER_TYPE = Request["ORDER_TYPE"];
            REVIEW_TITLE = Request["REVIEW_TITLE"];
            CATEGORY_NAME = Request["CATEGORY_NAME"];
            offset = BizUtil.getInt(Request["offset"]);
            inqeury();
        }

        private void inqeury()
        {
            DataSet ds = null;
            bizHelper biz = null;
            Hashtable hs = new Hashtable();

            try
            {
                biz = new bizHelper();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_REIVEW_MASTER.PRM_REVIEW_AJAX");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_PRODUCT_SID", PRODUCT_SID);
                hs.Add("I_BEST_FLAG", BEST_FLAG);
                hs.Add("I_ORDER_TYPE", ORDER_TYPE);
                hs.Add("I_REVIEW_TITLE", REVIEW_TITLE);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "(pgm_id)");

                ds = biz.operationSP(hs); //검색된 데이터

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    REVIEW_TABLE = ds.Tables["O_RESULT_CURSOR"];
                    DataSet bestReivewset = ds;
                    if (REVIEW_TABLE.Rows.Count > 0)
                    {
                        BEST_REVIEW_TABLE = bestReivewset.Tables["O_RESULT_CURSOR"]
                        .AsEnumerable()
                         .Where(row => row.Field<string>("BEST_FLAG") == "Y")
                        .CopyToDataTable();
                        totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["BEST_COUNT"] + "");

                        if (totalCount > matches) //전체 데이터가 1개 보다 많으므로 more 버튼 유지
                        {
                            more_btn_flag = "Y";

                            if (BEST_REVIEW_TABLE.Rows.Count < matches) //더보기 클릭 시 1개씩 보여주는데 1개가 안되면 더보기 버튼 숨김
                            {
                                more_btn_flag = "N";
                            }
                        }

                        else   //데이터가 비었으므로  more 버튼 비활성화 
                        {
                            more_btn_flag = "N";
                        }
                    }
                    
                    
                    

                }

            }
            catch (Exception ex)
            {

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
}
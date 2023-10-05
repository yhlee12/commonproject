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
    public partial class C_COMMUNITY_RECOMMEND : System.Web.UI.Page
    {

        public string BOARD_SID = "";
        public string USER_SID = "";
        public string USER_ID = "";
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public int STATUS = 0;
        public int RECOMMEND_COUNT = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            BOARD_SID   =   Request["BOARD_SID"];
            USER_SID    =   Request["USER_SID"];
            USER_ID     =   Request["USER_ID"];
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
                hs.Add("SP_NAME", "PKG_RECOMMEND_MASTER.PBM_RECOMMEND_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", BOARD_SID);
                hs.Add("I_USER_SID", USER_SID);


                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", USER_ID);
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_COMM_REC");

                ds = biz.operationSP(hs); //검색된 데이터

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                
                    {
                        STATUS = Int32.Parse(ds.Tables["O_RESULT_CURSOR_RECOMMEND_STATUS"].Rows[0]["RECOMMEND_STATUS"] + "");
                        RECOMMEND_COUNT = Int32.Parse(ds.Tables["O_RESULT_CURSOR_RECOMMEND_COUNT"].Rows[0]["RECOMMEND_COUNT"] + "");
                }
                else   //데이터가 비었으므로  more 버튼 비활성화 
                {      
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
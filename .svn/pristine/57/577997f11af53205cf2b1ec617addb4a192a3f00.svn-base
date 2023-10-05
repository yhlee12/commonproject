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
    public partial class A_CS_EDIT : PageBase
    {

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string flag = "";
        public string eidt_flag = "";
        public string del_flag = "";
        public string save_flag = "";

        public string I_QUESTION = "";
        public string I_ANSWER = "";
        public string _QUESTION = "";
        public string _ANSWER = "";
        public string _FAQ_TYPE = "";

        public Int64 _BOARD_SID = 0;

        public string edit_flag = "";
        public string request_sid = "";
        public DataTable request_info = null;
        public DataTable category_info = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            edit_flag = Request["edit_flag"]; //질문 목록 페이지에서 리스트의 수정버튼을 눌러서 열린 페이지 인지 체크
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
                        inquery();
                        save_qa();
                        break;

                    case "del":
                        inquery();
                        del_qa();
                        break;
                }
            }
        }

        private void inquery()
        {
            _QUESTION = T_QUESTION.Value;
            _ANSWER = T_ANSWER.Value;
            _FAQ_TYPE = T_FAQ_TYPE.Value;

            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER TASA
                                        WHERE   CLASS_CODE = 'FAQ_CLASS'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            category_info = (DataTable)ds.Tables[0];

            if (edit_flag == "Y")
            {
                request();
            }

        }

        private void request()
        {

            request_sid = Request["request_sid"];

            if (!string.IsNullOrEmpty(request_sid))
            {
                _BOARD_SID = Int64.Parse(request_sid);
                bizHelper biz = new bizHelper();
                DataSet ds = null;
                string sql = @"
                            SELECT       *   
 
                                        FROM    TCM_BOARD_MASTER 
                                        WHERE   BOARD_SID =" + _BOARD_SID +
                          ";";

                ds = biz.baseSQLDataset(sql);
                request_info = (DataTable)ds.Tables[0];
                //여기서 인풋에 바로 값 넣어줌
                if (request_info != null)
                {
                    T_QUESTION.Value = request_info.Rows[0]["BOARD_TITLE"].ToString();
                    T_ANSWER.Value = request_info.Rows[0]["BOARD_MESSAGE"].ToString();
                    T_FAQ_TYPE.Value = request_info.Rows[0]["FAQ_TYPE"].ToString();
                    T_SID.Value = request_info.Rows[0]["BOARD_SID"].ToString();
                    eidt_flag = "Y";
                }

                biz.Dispose();
                biz = null;
            }
           

            


        }
        private void save_qa() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_QA_MASTER.PQM_QA_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", _BOARD_SID);
                hs.Add("I_BOARD_CLASS", "DRKD_QA");

                hs.Add("I_BOARD_TITLE", _QUESTION);
                hs.Add("I_BOARD_MESSAGE", _ANSWER);
                hs.Add("I_POST_USER_NAME", baseUser.userName);
                hs.Add("I_FAQ_TYPE", _FAQ_TYPE);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    request();
                    save_flag = "Y";
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

        private void del_qa() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_FAQLIST_DELETE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", _BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_EDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    request();
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
}
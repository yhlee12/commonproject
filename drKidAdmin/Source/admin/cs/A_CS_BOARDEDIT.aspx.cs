using drKid;
using DevExpress.Web;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

namespace drKidAdmin.Source.admin.cs
{
    public partial class A_CS_BOARDEDIT : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string flag = "";
        public string save_flag = "";
        public string edit_flag = "";
        public string del_flag = "";
        
        public string request_sid = ""; //리스트페이지에서 넘김

        public Int64 I_BOARD_SID = 0;
        public string I_NOTICE_TYPE = "";
        public string I_TITLE = "";
        public string I_DETAIL = "";


       
        public string request_notice_type ="";
        public string request_title ="";
        public string request_detail = "";

        public DataTable request_info = null; //sid로 검색된 NOTICE 정보 

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
            I_NOTICE_TYPE = Request["NOTICE_TYPE"]; //카테고리
            I_TITLE = Request["I_TITLE"]; //제목
            I_DETAIL = Request["smarteditor"]; //내용
            edit_flag = Request["edit_flag"]; //리스트에서 수정버튼 유무

            if (!IsPostBack)
            {

                sid_request();

            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    case "save":
                        sid_request();
                        save_notice();
                        break;

                    case "del":
                        sid_request();
                        del_notice();
                        break;
                }
            }

        }

        protected void UploadControl_FilesUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
   
            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }

        private void save_notice() {

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            
      
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_NOTICE_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", I_BOARD_SID);

                hs.Add("I_BOARD_CLASS", "DRKD_NOTICE");

                hs.Add("I_BOARD_TITLE", I_TITLE);
                hs.Add("I_BOARD_MESSAGE", I_DETAIL);
                hs.Add("I_IMPORTANCE_FLAG", I_NOTICE_TYPE); //중요도 
                hs.Add("I_POST_USER_NAME", baseUser.userName);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_BOARDEDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                    sid_request(); //수정된 내용 새로고침
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

        private void del_notice() {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_NOTICE_DELETE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", I_BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CS_BOARDEDIT");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    sid_request();
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

        private void sid_request()
        {
            
            request_sid = Request["request_sid"];

            if (!string.IsNullOrEmpty(request_sid))
            {
                I_BOARD_SID = Int64.Parse(request_sid);
                bizHelper biz = new bizHelper();
                DataSet ds = null;
                string sql = @"
                            SELECT       *   
 
                                        FROM    TCM_BOARD_MASTER 
                                        WHERE   BOARD_SID =" + I_BOARD_SID +
                          ";";

                ds = biz.baseSQLDataset(sql);
                request_info = (DataTable)ds.Tables[0];
                //여기서 인풋에 바로 값 넣어줌
                if (request_info != null)
                {
   
                   request_title = request_info.Rows[0]["BOARD_TITLE"].ToString();
                   request_detail = request_info.Rows[0]["BOARD_MESSAGE"].ToString();
                   request_notice_type= request_info.Rows[0]["IMPORTANCE_FLAG"].ToString();
                   //I_BOARD_SID = request_info.Rows[0]["BOARD_SID"].ToString();
                   edit_flag = "Y";

                   //I_NOTICE_TYPE = request_notice_type;//카테고리
                   //I_TITLE = request_title; //제목
                   //I_DETAIL = request_detail;
                }

                biz.Dispose();
                biz = null;
            }





        }


    }
}
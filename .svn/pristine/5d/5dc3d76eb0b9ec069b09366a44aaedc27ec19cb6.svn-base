using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;
using Newtonsoft.Json;

namespace drKidAdmin.Source.admin.cs
{
    public partial class AJAX_CS_DELETE : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string BOARD_SID = "";
        string BOARD_DETAIL_SID = "";
        string BOARD_SEQ = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {

            this.basePageLoad();
            if (!String.IsNullOrEmpty(Request["BOARD_SID"]))
            {
                BOARD_SID = Request["BOARD_SID"];
                BOARD_DETAIL_SID = Request["BOARD_DETAIL_SID"];
            }
            answer_del();
            seq_update();
            inquery();
        }

        private void answer_del()
        {
            string BOARD_DETAIL_SID = Request["BOARD_DETAIL_SID"].ToString();
            string sql = @"
                            DELETE  FROM                TCS_BOARD_DETAIL      
				            WHERE	BOARD_DETAIL_SID    =   '$BOARD_DETAIL_SID$'
                            ";
            sql = sql.Replace("$BOARD_DETAIL_SID$", BOARD_DETAIL_SID);

            bizHelper biz = new bizHelper();
            DataSet retDS = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;
        }

        private void seq_update()
        {
            string BOARD_SID = Request["BOARD_SID"].ToString();

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_BOARD_SEQ_UPDATE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CONTACT_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

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
        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BOARD_MASTER.PBM_CSBOARD_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", BOARD_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CONTACT_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

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

            string returnmessage = JsonConvert.SerializeObject(ds);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(returnmessage);
            Response.End();
        }
    }
}
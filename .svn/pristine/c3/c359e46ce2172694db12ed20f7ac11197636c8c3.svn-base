using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.client.cs
{
    public partial class C_CS_HELPDESKDETAIL : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string cp_ret_status2 = "";
        public string cp_ret_message2 = "";

        string BOARD_SID = "";

        public DataTable CS_DETAIL = null;
        public DataTable CS_ANSWER_LIST = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            
            BOARD_SID = Request["bsid"];
            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                inquery();
                contact_delete();
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
                hs.Add("I_REQUEST_USER_ID", baseUser.userId == null ? "guest" : baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress == null ? "-1" : baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_CS_HELP");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    CS_DETAIL = ds.Tables["O_RESULT_CURSOR"];
                    CS_ANSWER_LIST = ds.Tables["O_RESULT_CURSOR_3"];
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

        private void contact_delete()
        {
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            UPDATE  TCS_BOARD_MASTER                TCBM
                            SET     TCBM.USABLE_FLAG        =       'N'
                            ,       TCBM.UPDATED_PROGRAM_ID =       '$PROGRAM_ID$' 
                            ,       TCBM.UPDATED_USER_ID    =       '$USER_ID$' 
                            ,       TCBM.UPDATED_TIME       =       SYSDATE()
                            WHERE   TCBM.BOARD_SID          =       '$BOARD_SID$'
                        "
                        ;

            sql = sql.Replace("$PROGRAM_ID$", "C_CS_HELP");
            sql = sql.Replace("$USER_ID$", baseUser.userId == null ? "guest" : baseUser.userId);
            sql = sql.Replace("$BOARD_SID$", BOARD_SID);

            int ret = biz.baseSQLExecute(sql);

            //error
            if (ret < 1)
            {
                cp_ret_status2 = "N";
            }
            else
            {
                cp_ret_status2 = "Y";
            }

            biz.Dispose();
            biz = null;
        }
    }
}
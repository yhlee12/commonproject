using drKid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.banner
{
    public partial class A_BANNER_BELT : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        string flag = "";
        //메인
        string[] MAIN_SID;
        string[] MAIN_SEQ;
        string[] I_TITLE;
        string[] I_SUBTITLE;
        string[] I_URL;
        DataSet MAIN_DS = new DataSet();

        //메인,배너 테이블 후 등록된 배너 sid
        public DataTable request_banner_sid_dt = null;
        List<string> request_banner_sid = new List<string>();

        //기존 배너정보 
        public DataTable mainTable = new DataTable(); //제목,부제목, url 정보
        public DataTable bannerTable = new DataTable(); // 배너sid, edms sid 정보

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();
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
                        saveMainAndBanner();
                        break;
                }
            }
        }

        private void saveMainAndBanner()
        {
            //메인
            MAIN_SID = Request.Form.GetValues("MAIN_SID");
            MAIN_SEQ = Request.Form.GetValues("MAIN_SEQ");
            I_TITLE = Request.Form.GetValues("I_TITLE");
            I_SUBTITLE = Request.Form.GetValues("I_SUBTITLE");
            I_URL = Request.Form.GetValues("I_URL");// I_URL

            //메인 temp
            DataTable main_temp = new DataTable();
            main_temp.TableName = "MAIN_SAVE_TEMP";
            main_temp.Columns.Add("MAIN_SID");
            main_temp.Columns.Add("MAIN_SEQ");
            main_temp.Columns.Add("I_TITLE");
            main_temp.Columns.Add("I_SUBTITLE");
            main_temp.Columns.Add("I_URL");
            for (int i = 0; i < MAIN_SID.Length; i++)
            {
                DataRow main_dr = main_temp.NewRow();
                main_dr["MAIN_SID"] = MAIN_SID[i];
                main_dr["MAIN_SEQ"] = MAIN_SEQ[i];
                main_dr["I_TITLE"] = I_TITLE[i];
                main_dr["I_SUBTITLE"] = I_SUBTITLE[i];
                main_dr["I_URL"] = I_URL[i];
                main_temp.Rows.Add(main_dr);
            }
            MAIN_DS.Tables.Add(main_temp);



            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BANNER_MASTER.MEDIA_BANNER_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML_MAIN", MAIN_DS.GetXml());
                hs.Add("I_MAIN_TYPE", "BELT");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_MEDIA");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    inquery();
                    save_flag = "Y";
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

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_BANNER_MASTER.PBM_BANNER_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_MAIN_TYPE", "BELT");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_BANNER_MEDIA");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //mainTable = ds.Tables["O_MAIN_RESULT_CURSOR"];
                    //bannerTable = ds.Tables["O_BANNER_EDMS_RESULT_CURSOR"];
                    //커서명 안먹어서 임시 
                    mainTable = ds.Tables["O_RESULT_CURSOR_1"];
                    bannerTable = ds.Tables["O_RESULT_CURSOR_3"];
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
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
    public partial class A_RECOMMEND_MAIN : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        string flag = "";

        //메인
        string[] MAIN_SID;
        string[] MAIN_SEQ;
        DataSet MAIN_DS = new DataSet();

        //릴레이션
        string[] PRODUCT_SID;
        string[] PARENT_SID;
        string[] RELATION_ORDER_SEQ;
        DataSet RELATION_DS = new DataSet();

        public DataTable mainTable = new DataTable(); //탭 명, MAIN_SID , 연결된 상품 수
        public DataTable prodTable = new DataTable(); // 바인드 된 상품 정보
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
                        saveMainAndRelation();
                        break;
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
                hs.Add("SP_NAME", "PKG_OBJECT_RELATION.MAIN_PROD_OBJECT_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_MAIN_TYPE", "RECOMMEND");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_RECOMMEND_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    mainTable = ds.Tables["O_RESULT_CURSOR_MAIN"];
                    prodTable = ds.Tables["O_RESULT_CURSOR_RELATION"];

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
        private void saveMainAndRelation()
        {
            //메인
            MAIN_SID = Request.Form.GetValues("MAIN_SID");
            MAIN_SEQ = Request.Form.GetValues("MAIN_SEQ");

            //릴레이션
            PRODUCT_SID = Request.Form.GetValues("SUB_CHECK_BOX");
            PARENT_SID = Request.Form.GetValues("PARENT_SID");
            RELATION_ORDER_SEQ = Request.Form.GetValues("RELATION_ORDER_SEQ");

            //메인 temp
            DataTable main_temp = new DataTable();
            main_temp.TableName = "MAIN_SAVE_TEMP";
            main_temp.Columns.Add("MAIN_SID");
            main_temp.Columns.Add("MAIN_SEQ");
            main_temp.Columns.Add("I_TITLE");
            main_temp.Columns.Add("I_SUBTITLE");
            main_temp.Columns.Add("I_URL");
            if (MAIN_SID != null)
            {
                for (int i = 0; i < MAIN_SID.Length; i++)
                {
                    DataRow main_dr = main_temp.NewRow();
                    main_dr["MAIN_SID"] = MAIN_SID[i];
                    main_dr["MAIN_SEQ"] = MAIN_SEQ[i];
                    main_dr["I_TITLE"] = null;
                    main_dr["I_SUBTITLE"] = null;
                    main_dr["I_URL"] = null;
                    main_temp.Rows.Add(main_dr);
                }
            }
            MAIN_DS.Tables.Add(main_temp);

            //릴레이션 temp
            DataTable relation_temp = new DataTable();
            relation_temp.TableName = "RELATION_SAVE_TEMP";
            relation_temp.Columns.Add("RELATION_SID");
            relation_temp.Columns.Add("PARENT_SID");
            relation_temp.Columns.Add("ORDER_SEQ");
            if (PRODUCT_SID != null)
            {
                for (int i = 0; i < PRODUCT_SID.Length; i++)
                {
                    DataRow relation_dr = relation_temp.NewRow();
                    relation_dr["RELATION_SID"] = PRODUCT_SID[i];
                    relation_dr["PARENT_SID"] = PARENT_SID[i];
                    relation_dr["ORDER_SEQ"] = RELATION_ORDER_SEQ[i];
                    relation_temp.Rows.Add(relation_dr);
                }
            }
            RELATION_DS.Tables.Add(relation_temp);
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_OBJECT_RELATION.MAIN_PROD_OBJECT_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML_MAIN", MAIN_DS.GetXml());
                hs.Add("I_XML_RELATION", RELATION_DS.GetXml());
                hs.Add("I_MAIN_TYPE", "RECOMMEND");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_RECOMMEND_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                    inquery();
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
    }
}
﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.m_mainProd
{
    public partial class M_MAINPROD_BEST : PageBase
    {
        string flag = "";
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public DataTable BEST_PROD_LIST = null;
        public DataTable BEST_CATE_LIST = null;
        public DataTable BEST_CATE_EDMS = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                inquery();
                //flag = Request["flag"];
                //switch (flag)
                //{

                //    case "search":
                //        break;

                //}

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
                hs.Add("SP_NAME", "PKG_PRODUCT_MASTER.MAIN_PROD_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_MAIN_TYPE", "BEST");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MAINPROD_BEST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    BEST_CATE_LIST = ds.Tables["O_RESULT_CURSOR_BEST_CATE"];
                    BEST_PROD_LIST = ds.Tables["O_RESULT_CURSOR_PROD_LIST"];
                    BEST_CATE_EDMS = ds.Tables["O_RESULT_CURSOR_PROD_EDMS"];

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
﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.sub
{
    public partial class M_S_SUB_PAGE : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string flag = "";

        public Int64 VIEW_SID = 0;
        public string ORDER_BY = "";
        public Int64 CATE_SID = 0;

        public string _title = "";
        public bool S_BANNER_FLAG = false;
        public string S_TYPE = "CATE";

        public int offset = 0;
        public int matches = 4;
        public int searchPages = 5;
        public int totalCount = 0;
        public string naviUrl = null;
        public string pageNavigationStr = null;
        Dictionary<string, string> naviQuery = null;

        public DataTable cateTable = new DataTable();
        public DataTable listTable = new DataTable();
        public DataTable BannerTable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            if (!IsPostBack)
            {
                setNaviString();
                inquery();
            }
            else
            {
                flag = Request.Form["flag"];
                setNaviString();
                switch (flag)
                {
                    case "inquery":
                        inquery();
                        break;
                    default:
                        cp_ret_status = "y";
                        cp_ret_message = "잘못된 접근입니다.";
                        return;
                }
            }
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

            if (!String.IsNullOrEmpty(Request["VIEW_SID"]))
            {
                VIEW_SID = BizUtil.getInt64(Request["VIEW_SID"]);
            }
            if (!String.IsNullOrEmpty(Request["ORDER_BY"]))
            {
                ORDER_BY = Request["ORDER_BY"];
            }
            if (!String.IsNullOrEmpty(Request["CATE_SID"]))
            {
                CATE_SID = BizUtil.getInt64(Request["CATE_SID"]);
            }

            if (flag == "inquery")
            {
                if (!String.IsNullOrEmpty(Request.Form["VIEW_SID"]))
                {
                    VIEW_SID = BizUtil.getInt64(Request.Form["VIEW_SID"]);
                }
                if (!String.IsNullOrEmpty(Request.Form["ORDER_BY"]))
                {
                    ORDER_BY = Request.Form["ORDER_BY"];
                }
                if (!String.IsNullOrEmpty(Request.Form["CATE_SID"]))
                {
                    CATE_SID = BizUtil.getInt64(Request.Form["CATE_SID"]);
                }
            }

            naviQuery.Add("VIEW_SID", VIEW_SID.ToString());
            naviQuery.Add("CATE_SID", CATE_SID.ToString());
            naviQuery.Add("ORDER_BY", ORDER_BY);

            string queryString = "";
            foreach (KeyValuePair<string, string> query in naviQuery)
            {
                queryString += (queryString == "" ? "" : "&") + query.Key + "=" + query.Value;
            }

            naviUrl = naviUrl + "?" + queryString;
        }

        private void inquery()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_SUB_MASTER.VIEW_SID_SUB_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_VIEW_SID", VIEW_SID);
                hs.Add("I_CATE_SID", CATE_SID);
                hs.Add("I_BANNER_TYPE", "MOBILE");
                hs.Add("I_ORDER_BY", ORDER_BY);

                hs.Add("I_OFFSET", offset);
                hs.Add("I_MATCHES", matches);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "M_MAGAZINE_LIST");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    cateTable = ds.Tables["O_RESULT_CURSOR_CATE"];
                    listTable = ds.Tables["O_RESULT_CURSOR"];
                    BannerTable = ds.Tables["O_RESULT_CURSOR_BANNER"];

                    if (listTable.Rows.Count > 0)
                    {
                        _title = listTable.Rows[0]["S_TITLE"].ToString();
                        S_BANNER_FLAG = listTable.Rows[0]["S_BANNER_FLAG"].ToString() == "Y" ? true : false;
                        S_TYPE = listTable.Rows[0]["S_TYPE"].ToString();
                    }

                    //페이징관련
                    totalCount = Int32.Parse(ds.Tables["O_RESULT_CURSOR_TOTAL"].Rows[0]["TOTAL_CNT"] + "");
                    pageNavigationStr = BizUtil.seachNavigation(naviUrl, offset, totalCount, matches, searchPages);
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
﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace drKid.Source.client
{
    public class ViewerMain
    {
        public Int64 mainSid { get; set; }
        public string title { get; set; }
        public string Body { get; set; }
        public string Url { get; set; }
        public string viewPath { get; set; }
    }
    public partial class main : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public DataTable metaTable = new DataTable();
        public DataTable cateGoryTable = new DataTable();
        public DataSet MainViewDs = new DataSet();
        public DataTable bestTable = new DataTable();
        public DataTable recomTable = new DataTable();
        public DataTable magazine = new DataTable();

        public Dictionary<string, List<ViewerMain>> mainViewDic = new Dictionary<string, List<ViewerMain>>();

        protected void Page_Load(object sender, EventArgs e)
        {
            baseUser = BizUtil.getUserInfo(Session, Request);
            if (this.DetectMobile())
            {
                Response.Redirect("/Source/m/m_main.aspx");
            }

            setMainDefaultViewMain();
            setMainData();
        }

        private void setMainDefaultViewMain()
        {
            //Default Main Viewer Setting
            //Hard Coding 현 Main에 뿌리는 데이터를 동적으로 처리하지않았으므로 Main Back에서 처리
            mainViewDic.Add("BELT", new List<ViewerMain>());
            mainViewDic.Add("LOW", new List<ViewerMain>());
            mainViewDic.Add("MEDIA", new List<ViewerMain>());
            mainViewDic.Add("MIDDLE", new List<ViewerMain>());
            mainViewDic.Add("POPUP", new List<ViewerMain>());
            mainViewDic.Add("TOP", new List<ViewerMain>());
            mainViewDic.Add("WIDE", new List<ViewerMain>());
        }

        private void setMainData()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_MAIN_MASTER.MAIN_SELECT_DATA");
                hs.Add("I_PERSON_NO", "DRKID");
                //hs.Add("I_MOBILE", "N");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", "guest");
                hs.Add("I_REQUEST_IP_ADDRESS", "-1");
                hs.Add("I_REQUEST_PROGRAM_ID", "C_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    metaTable = ds.Tables["O_RESULT_CURSOR_META"];
                    cateGoryTable = ds.Tables["O_RESULT_CURSOR"];
                    if(ds.Tables["O_RESULT_CURSOR_IMAGE"] != null)
                    {
                        settingViewMain(ds.Tables["O_RESULT_CURSOR_IMAGE"],"WEB");
                    }
                    bestTable = ds.Tables["O_RESULT_CURSOR_BEST"];
                    recomTable = ds.Tables["O_RESULT_CURSOR_RECOM"];
                    magazine = ds.Tables["O_RESULT_CURSOR_MAGAZI"];

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

        private void settingViewMain(DataTable dt,string Type = "WEB")
        {
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                if(dt.Rows[i]["BANNER_TYPE"].ToString() != Type && dt.Rows[i]["BANNER_TYPE"].ToString() != "") { continue; }
                try
                {
                    string TYPEs = dt.Rows[i]["MAIN_TYPE"].ToString();
                    ViewerMain newMain = new ViewerMain();
                    newMain.mainSid = BizUtil.getInt64(dt.Rows[i]["MAIN_SID"]);
                    newMain.title = dt.Rows[i]["TITLE"].ToString();
                    newMain.Body = dt.Rows[i]["BODY"].ToString();
                    newMain.Url = dt.Rows[i]["URL"].ToString();
                    newMain.viewPath = dt.Rows[i]["TARGET_READ_PATH"].ToString() == "" ? "" : ConfigurationManager.AppSettings["EDMS_VIEW"]+ dt.Rows[i]["TARGET_READ_PATH"].ToString();
                    mainViewDic[TYPEs].Add(newMain);
                }
                catch
                {

                }
            }
        }

        protected void Logout_to_Server_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            HttpCookie aCookie;
            string cookieName;
            int limit = Request.Cookies.Count;
            for (int i = 0; i < limit; i++)
            {
                cookieName = Request.Cookies[i].Name;
                aCookie = new HttpCookie(cookieName);
                aCookie.Expires = DateTime.Now.AddDays(-1); // make it expire yesterday
                Response.Cookies.Add(aCookie); // overwrite it
            }

            Request.Cookies.Clear();
            if (Request.Cookies["drKid"] != null)
            {
                Request.Cookies.Remove("drKid");
            }
            //FormsAuthentication.SignOut();
            //Response.Redirect(HttpContext.Current.Request.Url + "");
            Response.Redirect("/Source/client/member/login/C_LOGIN_Page.aspx");
        }

    }
}
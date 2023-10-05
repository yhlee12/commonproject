﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO;
using System.Web.Security;

namespace drKid
{
    public partial class C_LOGIN_Page : PageBase
    {
        public string flag = "";
        public string USER_ID = "";
        public string USER_PASSWORD = "";
        public string LOGIN_TYPE = "";
        public string SOCIAL_ID = "";
        public string access_token = "";
        public string redirect_flag ="";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string code = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                code = Request["code"];
            }
            else
            {
                if (!String.IsNullOrEmpty(Request.Form["flag"]))
                {
                    flag = Request.Form["flag"];
                }
                if (flag == "login" || flag== "")
                {
                    setParam();

                    if (LOGIN_TYPE == "kakao" || LOGIN_TYPE == "naver")
                    {
                        USER_ID = SOCIAL_ID;
                        USER_PASSWORD = SOCIAL_ID;
                        login();
                        if (cp_ret_status == "Y")
                        {
                            access_token = Request.Form["access_token"];
                            socialMemberJoin();
                        }
                    }
                    else
                    {
                        login();
                    }
                }
                if (flag == "un_login")//비회원 주문/조회
                {
                   
                }
            }
        }
        
        private void setParam()
        {
            USER_ID = Request.Form["idtext"];                                                       //ID
            USER_PASSWORD = Request.Form["passwordtext"];                                           //PW
            LOGIN_TYPE = Request.Form["login_type"] == "" ? "WEB" : Request.Form["login_type"];     //로그인 타입
            SOCIAL_ID = Request.Form["socialid"];                                                   //소셜로그인 id
            if (Session.Count != 0)
            {
                redirect_flag = Session["redirect_flag"].ToString();
            } 
        }

        private void socialMemberJoin()
        {
            Response.Redirect("/Source/client/member/C_MEMBER_JOINGUIDE.aspx?LOGIN_TYPE=" + LOGIN_TYPE + "&SOCIAL_ID=" + SOCIAL_ID + "&access_token=" + access_token);
        }

        private void login()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            
            //암호화
            string Check_Pass = BizUtil.getSHA512(USER_PASSWORD);

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                hs.Add("I_USER_ID", USER_ID);
                hs.Add("I_USER_PASSWORD", USER_PASSWORD);
                hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //로그인 성공                        
                    //BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                    BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                    FormsAuthentication.SetAuthCookie(USER_ID, false);
                    //Response.Redirect("/Source/client/main.aspx");
                }
                else
                {
                    hs.Clear();
                    hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                    hs.Add("I_USER_ID", USER_ID);
                    hs.Add("I_USER_PASSWORD", Check_Pass);
                    hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                    ds = biz.operationSP(hs);

                    cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                    cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                    if (cp_ret_status == "N")
                    {
                        //로그인 성공                        
                        //BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                        BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                        FormsAuthentication.SetAuthCookie(USER_ID, false);
                        //Response.Redirect("/Source/client/main.aspx");
                    }
                    else
                    {
                        hs.Clear();
                        hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                        hs.Add("I_USER_ID", USER_ID);
                        hs.Add("I_USER_PASSWORD", USER_PASSWORD);
                        hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                        ds = biz.operationSP(hs);

                        cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "N")
                        {
                            //로그인 성공                        
                            //BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                            BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                            FormsAuthentication.SetAuthCookie(USER_ID, false);
                            //Response.Redirect("/Source/client/main.aspx");
                        }
                        else
                        {
                            hs.Clear();
                            hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_LOGIN");
                            hs.Add("I_USER_ID", USER_ID);
                            //hs.Add("I_USER_PASSWORD", Check_Pass);
                            hs.Add("I_USER_PASSWORD", Check_Pass);
                            hs.Add("I_LOGIN_TYPE", LOGIN_TYPE);

                            ds = biz.operationSP(hs);

                            cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                            cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                            if (cp_ret_status == "N")
                            {
                                //로그인 성공                        
                                //BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                                BizUtil.setUserInfo(Request, Session, ds.Tables["O_RESULT_CURSOR"]);
                                FormsAuthentication.SetAuthCookie(USER_ID, false);
                                //Response.Redirect("/Source/client/main.aspx");
                            }
                            
                        }
                    }

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
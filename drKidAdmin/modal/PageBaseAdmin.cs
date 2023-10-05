﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using drKid;

namespace drKidAdmin
{
    public class PageBase : drKid.PageBase
    {
        //public drkidUserInfo baseUser = null;
        //public string basePgmId = null;
        bool isAdmin = false;

        public Dictionary<string, menuAdmin> menuData = null;
        public nowAuth pageAuth = null;

        //Admin Flag Checker Flag
        private bool isAdminChecker(string referrer)
        {
            bool _returnBool = false;
            //Start가 / 일경우에 가장 앞의 / 자르기.
            if (referrer.StartsWith("/")) referrer = referrer.Substring(1);
            // /로 Split ex) Source/main.aspx => ["Source","main.aspx"];
            // 각 메인은 admin과 client로 나누어서 처리 필요.
            string[] refferSplit = referrer.Split('/');
            if (refferSplit.Count() > 0)
            {
                if (refferSplit[0].ToLower() == "source")
                {
                    _returnBool = refferSplit[1].ToLower() == "admin" ? true : false;
                }
                else
                {
                    _returnBool = refferSplit[0].ToLower() == "admin" ? true : false;
                }
            }
            return _returnBool;
        }

        public void setAuth()
        {
            menuData = (Dictionary<string, menuAdmin>)Session[BizUtil._menuStr];
            //Sesstion 유지용 초기화.
            Session[BizUtil._menuStr] = menuData;
            string _AbsolutePath = Request.Url.AbsolutePath;
            pageAuth = menuAuth.checkAuth(_AbsolutePath, menuData);
            if(pageAuth.errorCode == "C")
            {
                Response.Redirect("~/Source/admin/logout.aspx?message="+pageAuth.errorMessage);
            }
        }

        public override void basePageInit()
        {
            string referrer = Request.Url.AbsoluteUri;
            string _AbsolutePath = Request.Url.AbsolutePath;

            //신규 Check Admin // Client 나누어서 Checker
            isAdmin = isAdminChecker(_AbsolutePath);
            setAuth();
            if (!Page.User.Identity.IsAuthenticated)
            {
                if (!isAdmin)
                {
                    if (Page.IsCallback)
                    {
                        Response.Redirect("~/Source/client/member/C_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                    else
                    {
                        Response.Redirect("~/Source/client/member/C_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                }
                else
                {
                    if (Page.IsCallback)
                    {
                        Response.Redirect("~/Source/admin/logout.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Source/admin/logout.aspx");
                    }
                }
                return;
            }

            //pgm_id
            if (("" + Request["pgm_id"]).Length == 0)
            {
                basePgmId = "(pgm_id)";
            }
            else
            {
                basePgmId = Request["pgm_id"];
            }

            //사용자 정보
            if (baseUser == null)
            {
                setUser(Request, Session);
            }
            if (baseUser.userId == null)
            {
                if (!isAdmin)
                {
                    if (Page.IsCallback)
                    {
                        Response.Redirect("~/Source/client/member/C_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                    else
                    {
                        Response.Redirect("~/Source/client/member/C_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                }
                else
                {
                    if (Page.IsCallback)
                    {
                        Response.Redirect("~/Source/admin/member/A_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                    else
                    {
                        Response.Redirect("~/Source/admin/member/A_MEMBER_LOGIN.aspx?ReturnUrl=" + referrer);
                    }
                }
                return;
            }

        }

        /*
         * Page load 
         * */
        public override void basePageLoad()
        {
            string referrer = Request.Url.AbsoluteUri;
            // PGM ID
            if (("" + Request["pgm_id"]).Length == 0)
            {
                basePgmId = "(pgm_id)";
            }
            else
            {
                basePgmId = Request["pgm_id"];
            }

            //사용자 정보
            if (baseUser == null)
            {
                setUser(Request, Session);
            }
            if (baseUser.userId == null)
            {
                setUser(Request, Session);
            }
        }

        // 사용자 정보 설정
        private void setUser(System.Web.HttpRequest req, System.Web.SessionState.HttpSessionState ses)
        {
            baseUser = BizUtil.getUserInfo(ses, req);
        }
    }
}
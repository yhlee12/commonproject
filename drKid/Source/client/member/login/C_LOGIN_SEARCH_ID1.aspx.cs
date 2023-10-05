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
using System.Web.Mail;


namespace drKid
{
    public partial class C_LOGIN_SEARCH_ID1 : PageBase
    {
        public string USER_NAME = "";
        public string USER_EMAIL = "";
        public string MOBILE_NO = "";
        public string USER_ID = "";
        public string way = "";

        public string find_flag = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";

        public string sendflag = "";

        public string randomString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            else
            {
                if (!String.IsNullOrEmpty(Request.Form["find_flag"]))
                {
                    find_flag = Request.Form["find_flag"];
                }
                setParam();
                find_ID_check();
                SendMail();
                if (find_flag=="email")
                {
                    way = "이메일";
                }
                if (find_flag=="phone")
                {
                    way = "전화번호";
                }
                Session["check_code"] = randomString;
                Session["find_user_id"] = USER_ID;
            }
        }

        private void setParam()
        {
            USER_NAME = Request.Form["USER_NAME"];
            USER_EMAIL = Request.Form["USER_EMAIL"];
            MOBILE_NO = Request.Form["MOBILE_NO"];
           
        }
        
        private void find_ID_check()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_USER_MASTER.PUM_USER_IDPW_FIND");
                hs.Add("I_USER_NAME", USER_NAME);
                hs.Add("I_USER_EMAIL", USER_EMAIL);
                hs.Add("I_PHONE_NUMBER", MOBILE_NO);
                hs.Add("I_SEND_CHOICE", find_flag);
                hs.Add("I_FIND_TYPE", "ID");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    USER_ID = ds.Tables["O_RESULT_CURSOR"].Rows[0]["USER_ID"].ToString();
                }
                else
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

        private void SendMail()
        {
            string _writer = USER_NAME;             //문의자
            string inquiryemail = USER_EMAIL;       //이메일


            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();

            randomString = new string(Enumerable.Repeat(chars, 6) // 6자리 랜덤 문자열 생성
            .Select(s => s[random.Next(s.Length)]).ToArray());

            try
            {
                MailMessage mail = new MailMessage();
                mail.To = inquiryemail;
                mail.From = "tpls@t2l.co.kr";

                mail.Subject = "Dr.KeyDni 계정 인증메일";
                mail.Body = @"
                    <html>
                      <body>
                        <div style='border:1px solid #bdbdbd; padding:20px 50px 15px 50px; max-width:750px;'>
                          <div>
                            <div style='font-size:30px; margin-top:20px; display:flex; flex-direction:column; align-items:center; '>
                              <div><span style='font-family:Noto Sans Korean;font-weight:500'>ID 찾기 인증번호입니다</span></div>
                              <div><span style='font-family:Noto Sans Korean;font-weight:500'>아래 인증번호를 입력해주세요</span></div>
                            </div>
                          </div>
                          <div style='margin-top:30px;'>
                            <div>
                              <div style='overflow: hidden;border-block: 1px solid #a5a5a5;display: flex;height: 200px;'>
                                <div style='font-family: Pretendard;font-weight: 500;width: 155px; float: left;background-color: #f3f3f3; padding: 12px 26px; font-size: 25px; line-height: 7; text-align: center;'>인증번호</div>
                                <div style='font-family: Pretendard;font-weight: bold; padding: 12px 26px; font-size: 25px; line-height: 7;'>" + randomString + @"</div>
                            </div> 
                            </div>
                            <div style='font-family:Pretendard; font-weight:600; padding: 35px 85px 0px 85px; font-size: 14px;'>
                                <button type=button onclick=window.open('http://www.t2l.co.kr/');  style='border:none; display:flex;justify-content:center; align-items:center; width:100%; height:50px; background-color:#115c5e; color:white; font-family:Noto Sans Korean;font-weight:600; font-size: 14px;'>Dr.KeyDni 바로가기＞</button>
                            </div>
                          </div>
                        </div>
                      </body>
                    </html>";
                //mail.Body = "<html><body>" + randNum + "</body></html>";
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.BodyFormat = MailFormat.Html;
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "mail.t2l.co.kr");
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 25);// 25
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);  //sendusing: cdoSendUsingPort, value 2, for sending the message using the network.
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", false);
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);       // cdoBasic, value 1. Use basic clear-text authentication. 
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "basement@t2l.co.kr");
                mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "xlxndpf0906!@3");

                SmtpMail.Send(mail);
                sendflag = "Y";
            }
            catch (Exception ex)
            {
                sendflag = "N";
                //MessageBox.Show(ex.Message);
            }

        }
    }
}
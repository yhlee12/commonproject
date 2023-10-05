﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Text;
using System.Security.Cryptography;
using Newtonsoft.Json;

namespace drKid.Source.client.payment
{

    public partial class mBillApp : System.Web.UI.Page
    {
        public string key = "rKnPljRn5m6J9Mzz";
        public string type = "Billing"; //요청서비스 ["Billing" 고정]
        public string paymethod = "Card";
        public string timestamp = DateTime.Now.ToString("yyyyMMddHHmmss");
        public string clientIp = "192.0.0.1"; //가맹점 요청 서버IP (추후 거래 확인 등에 사용됨)
        public string mid = "INIBillTst";
        public string url = "inicis.com"; //가맹점 URL
        public string moid = "inicis_test_1234";
        public string goodName = "테스트";
        public string buyerName = "길동이";
        public string buyerEmail = "12@naver.com";
        public string buyerTel = "010-1234-1234";
        public string price = "100";
        public string billKey = "bill_key";
        public string authentification = "00";
        public string cardQuota = "00";
        public string quotaInterest = "0";
        // Hash 암호화
        public string hashInput = "";
        public string hashData = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            billKey = Request["billKey"];
            hashInput = key + type + paymethod + timestamp + clientIp + mid + moid + price + billKey;
            hashData = CalculateSHA512Hash(hashInput);
            StartINIStdReturn();
        }
        
        private void StartINIStdReturn()
        {
             Dictionary<string, string> data = new Dictionary<string, string>
             {
                {"type", type},
                {"paymethod", paymethod},
                {"timestamp", timestamp},
                {"clientIp", clientIp},
                {"mid", mid},
                {"url", url},
                {"moid", moid},
                {"goodName", goodName},
                {"buyerName", buyerName},
                {"buyerEmail", buyerEmail},
                {"buyerTel", buyerTel},
                {"price", price},
                {"billKey", billKey},
                {"authentification", authentification},
                {"cardQuota", cardQuota},
                {"quotaInterest", quotaInterest},
                {"hashData", hashData}
             };
             string apiUrl = "https://iniapi.inicis.com/api/v1/billing";
             string responseContent = "";
             using (HttpClient httpClient = new HttpClient())
             {
                 var content = new FormUrlEncodedContent(data);
                 var response = httpClient.PostAsync(apiUrl, content).Result;
                 responseContent = response.Content.ReadAsStringAsync().Result;

                 // Step 3: 요청 결과
                 Console.WriteLine(responseContent);
             }
             string returnmessage = JsonConvert.SerializeObject(responseContent);
             Response.Clear();
             Response.ContentType = "application/json; charset=utf-8";
             Response.Write(returnmessage);
             Response.End();
        }
        
        static string CalculateSHA512Hash(string input)        
        {
            using (SHA512 sha512 = SHA512.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(input);
                byte[] hashBytes = sha512.ComputeHash(bytes);
                StringBuilder hashBuilder = new StringBuilder();
                foreach (byte b in hashBytes)
                {
                    hashBuilder.Append(b.ToString("x2"));
                }
                return hashBuilder.ToString();
            }
        }
    }
}
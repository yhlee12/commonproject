using System;
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
    public partial class Refund : System.Web.UI.Page
    {

        public string paytype = "";
        public string key = "";
        public string type = "";
        public string paymethod = "";
        public string timestamp = "";
        public string clientIp = "";
        public string mid = "";
        public string tid = "";
        public string msg = "";
        public string hashInput = "";
        public string hashData = "";

        public string price = "";
        public string confirmPrice = "";


        
                    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            else
            {
                setparams();
                if (type == "PartialRefund")
                {
                    price = "500";      //취소요청 금액
                    confirmPrice = "0";   //부분취소 후 남은금액
                    hashInput = key + type + paymethod + timestamp + clientIp + mid + tid + price + confirmPrice;
                }
                else
                {
                    hashInput = key + type + paymethod + timestamp + clientIp + mid + tid;

                }
                hashData = CalculateSHA512Hash(hashInput);
                StartINIStdReturn();
            }
            
        }
        //테스트 MID : INIpayTest
        //용도 : 일반결제
        //signkey    : SU5JTElURV9UUklQTEVERVNfS0VZU1RS
        //INIAPI key : ItEQKi3rY7uvDS8l
        //INIAPI iv   : HYb3yQ4f65QL89==
        //모바일 hashkey : 3CB8183A4BE283555ACC8363C0360223
        //
        //테스트 MID : INIBillTst
        //용도 : 빌링(정기과금), 폼페이, 비인증 결제
        //signkey    : SU5JTElURV9UUklQTEVERVNfS0VZU1RS
        //INIAPI key : rKnPljRn5m6J9Mzz
        //INIAPI iv   : W2KLNKra6Wxc1P==
        //INILite key : b09LVzhuTGZVaEY1WmJoQnZzdXpRdz09
        private void setparams()
        {
            paytype = Request.Form["paytype"];
            if (paytype == "common")
            {
                key = "ItEQKi3rY7uvDS8l";      //INIapi 키
                mid = "INIpayTest";      //상점아이디
            }
            //빌링취소시에는 꼭 bill 승인한뒤에 결제정보가 필요함.
            if (paytype == "bill")
            {
                key = "rKnPljRn5m6J9Mzz";      //INIapi 키
                mid = "INIBillTst";      //상점아이디
            }
            type = Request.Form["type"];    //취소타입(전체취소/부분취소..)

            paymethod = Request.Form["paymethod"];  //지불수단 코드
            timestamp = Request.Form["timestamp"];  //[YYYYMMDDhhmmss]
            clientIp = Request.Form["clientIp"];    //가맹점 요청 서버IP 
            
            tid = Request.Form["tid"];      //취소요청할 승인TID
            msg = Request.Form["msg"];      //취소요청 사유
        }

        private void StartINIStdReturn()
        {
            Dictionary<string, string> data = null;
            if (type == "PartialRefund")
            {
                data = new Dictionary<string, string>
                {
                   {"key", key},
                   {"type", type},
                   {"paymethod", paymethod},
                   {"timestamp", timestamp},
                   {"clientIp", clientIp},
                   {"mid", mid},
                   {"tid", tid},
                   {"msg", msg},
                   {"price", price},
                   {"confirmPrice", confirmPrice},
                   {"hashData", hashData}
                };
            }
            else
            {
                data = new Dictionary<string, string>
                {
                   {"key", key},
                   {"type", type},
                   {"paymethod", paymethod},
                   {"timestamp", timestamp},
                   {"clientIp", clientIp},
                   {"mid", mid},
                   {"tid", tid},
                   {"msg", msg},
                   {"hashData", hashData}
                };
            }
            
            string apiUrl = "https://iniapi.inicis.com/api/v1/refund";
            string responseContent = "";
            using (HttpClient httpClient = new HttpClient())
            {
                var content = new FormUrlEncodedContent(data);
                var response = httpClient.PostAsync(apiUrl, content).Result;
                responseContent = response.Content.ReadAsStringAsync().Result;
                //    {"resultCode":"01"
                //    ,"resultMsg":"기 취소 거래"
                //    ,"cancelDate":"20230912"
                //    ,"cancelTime":"154230"
                //    ,"receiptInfo":""
                //    ,"cshrCancelNum":""
                //    ,"detailResultCode":"512626"}
                // Step 3: 요청 결과
                Console.Write(responseContent);
                Console.WriteLine(responseContent);
            }
            //string returnmessage = JsonConvert.SerializeObject(responseContent);
            //Response.Clear();
            //Response.ContentType = "application/json; charset=utf-8";
            //Response.Write(returnmessage);
            //Response.End();
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

//이니시스 필요 using
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

namespace drKid.Source.client.member
{
    public partial class C_C_PRODUCT_PURCHASE : PageBase
    {
        //이니시스 변수
        public string strMid = "";
        public string strVersion = "";
        public string strGoodName = "";
        public string strPrice = "";
        public string strCurrency = "";
        public string strBuyerName = "";
        public string strBuyerTel = "";
        public string strBuyerEmail = "";
        public string oid = "";
        public string timeTemp = "";
        public string[] artime;
        public string timestamp = "";
        public string signature = "";
        public string mKey = "";
        public string use_chkfake = "";
        public string verification = "";
        public string closeUrl = "";
        public string returnUrl = "";
        public string gopaymethod = "";
        public string merchantData = "";

        //결제 플레그  일반구매/정기구매
        public string payment_flag = "";
        public string t_price = "";
        public string good_count = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();
            if (!Page.IsPostBack)
            {
                if (Session["payment_flag"] != null)
                {
                    payment_flag = Session["payment_flag"].ToString();
                    t_price = Session["t_price"].ToString();
                    good_count = Session["good_count"].ToString();
                }
                StartINIStd();

            }
            Session.Remove("redirect_flag");//화면 세션 플레그 초기화
        }
        private void StartINIStd()
        {
            // 가맹점확인을 위한 signKey 를 해쉬값으로 변경(SHA-256)
            //string signKey = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS";   // 가맹점에 제공된 가맹점 키 (외부유출금지)
            //mKey.Text = ComputeHash(signKey);
            string signKey = "Z3dvU1JTZnVKZ2dQeUVqQ2hwU1Y3dz09";   // 가맹점에 제공된 가맹점 키 (외부유출금지)
            
            //공통 
            strBuyerName = baseUser.userName == "" ? "" : baseUser.userName;
            strBuyerTel = baseUser.userPhone == "" ? "" : baseUser.userPhone;
            strBuyerEmail = baseUser.userEmail == "" ? "" : baseUser.userEmail;

            merchantData = Request.Form["merchantData"];
            //각 필드 설정
            //일반결제
            if (payment_flag == "common")
            {
                gopaymethod = "Card";
                //strMid = "INIpayTest";
                strMid = "oneinterna";
                strVersion = "1.0";
                strGoodName = "신당케어 1box 1+1 120g";
                strPrice = "6500";
                strCurrency = "WON";
                
                //리턴값 테스트
                //returnUrl = "http://localhost:18848/Source/client/payment/INIStdPayReturn.aspx";
                //로딩페이지
                //returnUrl = "http://localhost:18848/Source/client/member/C_PRODUCT_PURCHASE_LODING.aspx";
                returnUrl = "http://211.43.207.2/Source/client/member/C_PRODUCT_PURCHASE_LODING.aspx";
                mKey = ComputeHash(signKey);
            }
            //정기결제
            else {
                gopaymethod = "";
                //strMid = "INIBillTst";
                strMid = "oneinterna";
                strVersion = "1.0";
                strGoodName = "신당케어 1box 1+1 120g";
                strPrice = "6500";
                strCurrency = "WON";
                
                //리턴값 테스트
                //returnUrl = "http://localhost:18848/Source/client/payment/INIbillReturn.aspx";
                //로딩페이지
                //returnUrl = "http://localhost:18848/Source/client/member/C_PRODUCT_PURCHASE_LODING.aspx";
                returnUrl = "http://211.43.207.2/Source/client/member/C_PRODUCT_PURCHASE_LODING.aspx";
                mKey = ComputeHash(signKey);
            }

            // TimeStamp 생성
            timeTemp = "" + DateTime.UtcNow.Subtract(DateTime.MinValue.AddYears(1969)).TotalMilliseconds;
            artime = timeTemp.Split('.');
            timestamp = artime[0];

            oid = strMid + "_" + timeTemp;

            //Signature 생성 - 알파벳 순으로 정렬후 hash
            //string param = "oid=" + oid.Text + "&price=" + price.Text + "&timestamp=" + timestamp.Text;
            //signature.Text = ComputeHash(param);
            string param = "oid=" + oid + "&price=" + strPrice + "&timestamp=" + timestamp;
            signature = ComputeHash(param);

            //PC보안강화 사용 선언 및 verification 정렬후 hash
            //string strUse_chkfake = "Y";
            //use_chkfake.Text = strUse_chkfake;
            string strUse_chkfake = "Y";
            use_chkfake = strUse_chkfake;


            //string param2 = "oid=" + oid.Text + "&price=" + price.Text + "&signKey=" + signKey + "&timestamp=" + timestamp.Text;
            //verification.Text = ComputeHash(param2);
            string param2 = "oid=" + oid + "&price=" + strPrice + "&signKey=" + signKey + "&timestamp=" + timestamp;
            verification = ComputeHash(param2);

            //closeURL
            //string close = "https://[가맹점도메인]/close.aspx";
            //string close = "http://localhost:18848/Source/client/payment/close.aspx";
            //closeUrl.Text = close;
            closeUrl = "http://localhost:18848/Source/client/payment/close.aspx";
            closeUrl = "http://211.43.207.2/Source/client/payment/close.aspx";
            
        }

        // SHA256  256bit 암호화
        private string ComputeHash(string input)
        {
            System.Security.Cryptography.SHA256 algorithm = System.Security.Cryptography.SHA256Managed.Create();
            Byte[] inputBytes = Encoding.UTF8.GetBytes(input);
            Byte[] hashedBytes = algorithm.ComputeHash(inputBytes);

            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < hashedBytes.Length; i++)
            {
                sb.Append(String.Format("{0:x2}", hashedBytes[i]));
            }
            return sb.ToString();
        }

    }
}


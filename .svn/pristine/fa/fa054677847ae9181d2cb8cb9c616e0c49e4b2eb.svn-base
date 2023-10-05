using System;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Collections.Specialized;
using System.Text;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.IO;


public partial class mINIbillReturn : System.Web.UI.Page
{
    public string resultcode = "";
    public string resultmsg = "";
    public string tid = "";
    public string billkey = "";
    public string orderid = "";
    public string pgauthdate = "";
    public string pgauthtime = "";
    public string cardcd = "";
    public string cardno = "";
    public string cardkind = "";
    public string CheckFlag = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        setparam();
        StartINIStdReturn();
    }


    private void setparam()
    {
        resultcode = Request["resultcode"];
        resultmsg = Request["resultmsg"];
        tid = Request["tid"];
        billkey = Request["billkey"];
        orderid = Request["orderid"];
        pgauthdate = Request["pgauthdate"];
        pgauthtime = Request["pgauthtime"];
        cardcd = Request["cardcd"];
        cardno = Request["cardno"];
        cardkind = Request["cardkind"];
        CheckFlag = Request["CheckFlag"];
    }

    private void StartINIStdReturn()
    {
        NameValueCollection parameters = Request.Params;

        IEnumerator enumerator = parameters.GetEnumerator();

        StringBuilder sb = new StringBuilder("paramMap : ");
        while (enumerator.MoveNext())
        {
            // get the current query parameter
            string key = enumerator.Current.ToString();

            // insert the parameter into the url
            sb.Append(string.Format("{0}={1}&", key, HttpUtility.UrlEncode(parameters[key])));

        }

        Console.WriteLine(sb.ToString());
        foreach (var kvp in parameters)
        {
            //Console.WriteLine("Key: " + kvp.Key + ", Value: " + kvp.Value);
            Response.Write("Key: " + kvp.ToString() + ", Value: " + kvp);

        }
        Response.Write("<pre>");
        Response.Write("<table width='565' border='0' cellspacing='0' cellpadding='0'>");
        if ("00".Equals(parameters["resultcode"]))
        {

            /*****************************************************************************
            * 여기에 가맹점 내부 DB에 결제 결과를 반영하는 관련 프로그램 코드를 구현한다.  
		    		   
              [중요!] 승인내용에 이상이 없음을 확인한 뒤 가맹점 DB에 해당건이 정상처리 되었음을 반영함
                      처리중 에러 발생시 망취소를 한다.
            ******************************************************************************/
           
            Response.Write("<tr><th class='td01'><p>거래 성공 여부</p></th>");
            Response.Write("<td class='td02'><p>성공</p></td></tr>");
            Response.Write("<tr><th class='line' colspan='2'><p></p></th></tr>");
            Response.Write("<tr><th class='td01'><p>결과 코드</p></th>");
            Response.Write("<td class='td02'><p>" + (parameters["resultcode"]) + "</p></td></tr>");
            Response.Write("<tr><th class='line' colspan='2'><p></p></th></tr>");
            Response.Write("<tr><th class='td01'><p>결과 내용</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["resultmsg"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>거래일자[YYYYMMDD]</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["pgauthdate"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>거래시간</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["pgauthtime"]) + "</p></td></tr>");

            Response.Write("<tr><th class='td01'><p>거래일자[YYYYMMDD]</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["payDate"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>거래시간</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["payTime"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>승인번호</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["payAuthCode"]) + "</p></td></tr>");

            Response.Write("<tr><th class='td01'><p>거래번호</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["tid"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>상점아이디</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["mid"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>주문번호(빌키발급 요청 시 세팅한 값)</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["orderid"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>발급된 빌링키</p></th>");
            Response.Write("<td class='td02 BillKey'><p>" + (Request["billkey"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>빌링인즈 트렌젝션ID</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["authkey"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>상점 예약필드(임의 데이터)</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["merchantreserved"]) + "</p></td></tr>");
        }
        else
        {
            Response.Write("<tr><th class='td01'><p>거래 성공 여부</p></th>");
            Response.Write("<td class='td02'><p>실패</p></td></tr>");
            Response.Write("<tr><th class='line' colspan='2'><p></p></th></tr>");
            Response.Write("<tr><th class='td01'><p>결과 코드</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["resultcode"]) + "</p></td></tr>");
            Response.Write("<tr><th class='td01'><p>결과 내용</p></th>");
            Response.Write("<td class='td02'><p>" + (Request["resultmsg"]) + "</p></td></tr>");
        }
        Response.Write("</pre>");

    }
}

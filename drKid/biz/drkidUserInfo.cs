﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace drKid
{
    public static class GloBalD
    {
        public static string _RefferSesstion = "SessionRefferCode";
    }
    [Serializable()]   
    public class drkidUserInfo
    {
        public Int64 userSid { get; set; }   /// long(Int64) : –9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807
        public string userId { get; set; } // USER ID
        public string userName { get; set; } // USER NAME 유저의 이름
        public string userType { get; set; } // USER TYPE 000 : 비회원 / 001 :  나노 인플루언서 / 002 : 마이크로 인플루언서 / 003 : ...쭉쭉
        public string userPersonNo { get; set; } // USER PERSON NO 여기서는 항상 DRKID
        public string userPersonName { get; set; } //USER PERSON NAME 여기서는 항상 Drkid의 Person Name
        public string userEmail { get; set; } // USER Email
        public string userPhone { get; set; } // USER Phone Number
        public string userIpAddress { get; set; } //현 USER 의 IP 접속 위치
        public string userAdminFlag { get; set; } //Admin Flag . 특정 ID 에 배정하는 식으로 처리
        public string userReferral { get; set; } // user 리퍼럴 코드. GUID 형태의 값 처리

        //추후 추가 필요시 추가처리.
    }
}
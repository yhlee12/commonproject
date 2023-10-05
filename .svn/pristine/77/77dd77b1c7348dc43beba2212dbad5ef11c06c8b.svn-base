using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace drKid
{
    [Serializable()]   
    public class ClsUserInfo
    {
        public Int64 userSid { get; set; }   /// long(Int64) : –9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807
        public string userId { get; set; }
        public string userName { get; set; }
        public string userType { get; set; }
        public string userPersonNo { get; set; }
        public string userPersonName { get; set; }
        public string userNameDefault { get; set; }
        public string userCompany { get; set; }
        public string userCompanyName { get; set; }
        public string userBranch { get; set; }
        public string userBranchName { get; set; }
        public string userDepart { get; set;  }
        public string userDepartName { get; set; }
        public string userLang { get; set; }
        public string userLangName { get; set; }
        public string userEmail { get; set; }
        public string userDepartmentEmail { get; set; }
        public string userPhone { get; set; }
        public string userMobile { get; set; }
        public string userFax { get; set; }
        public string userOperationCarrier { get; set; }
        public string userLoginTime { get; set; }
        public string userSession { get; set; }

        public string userCustomer_code { get; set; }
        public string userCustomer_name { get; set; }
        public string userForwarderFlag { get; set; }
        public string userWarehouseFlag { get; set; }
        public string userTrukerFlag { get; set; }
        

        //public Int64 userShipperCount { get; set;  }
        //public Int64 userTruckerCount { get; set;  }
        //public Int64 userForwarderCount { get; set;  }
        //public Int64 userOfferCount { get; set;  }
        public string userIpAddress { get; set; }
        public string userCsUsableFlag { get; set;  }
        public int userLangIdx { get; set; }
        public BizUtil.eLang userLangENUM { get; set; }

        public string GB_COMPNO { get; set; }
        public string GB_PERSNO { get; set; }

        public string userOAuthSign { get; set; }

        //
        // KOR => 0, ENG => 1, ,,,
        //
        public BizUtil.eLang getLangEnum()
        {
            BizUtil.eLang ret = BizUtil.eLang.KOR;

            if (userLang == "ENG")
            {
                ret = BizUtil.eLang.ENG;
            }
            else
            {
                ret = BizUtil.eLang.KOR;
            }
            
            return ret;
        }


        /*
         * 다국어 split 처리 : 한글(0);영문(1)
        * */
        public string getLangMsg(string str)
        {
            string ret = "";
            string[] msg = str.Split(';');

            try
            {
                ret = msg[this.userLangIdx];
            }
            catch (Exception ex)
            {
                ret = str;
            }

            return ret;
        }

    }
}
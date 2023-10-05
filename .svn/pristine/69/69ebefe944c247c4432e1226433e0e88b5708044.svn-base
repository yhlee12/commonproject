using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace drKidAdmin
{
    public class nowAuth
    {
        public bool viewFlag { get; set; }
        public bool showFlag { get; set; }
        public bool editFlag { get; set; }
        public bool subFlag1 { get; set; }
        public bool subFlag2 { get; set; }
        public string errorCode { get; set; }
        public string errorMessage { get; set; }
        public string nowPath { get; set; }
        public string nowKey { get; set; }
        public string nowtitle { get; set; }

        public nowAuth()
        {
            viewFlag = false;
            showFlag = false;
            editFlag = false;
            subFlag1 = false;
            subFlag2 = false;
            errorCode = "N";
            errorMessage = "";
            nowPath = "";
            nowKey = "";
            nowtitle = "";
        }
    }
    public class menuAuth
    {
        //추후 추가될 것은 모두 여기에.
        public static nowAuth checkAuth(string path, Dictionary<string, menuAdmin> menuData)
        {
            //Start가 / 일경우에 가장 앞의 / 자르기.
            if (path.StartsWith("/")) path = path.Substring(1);
            // /로 Split ex) Source/main.aspx => ["Source","main.aspx"];
            //Last로 path File Name 얻기
            string _fileName = "";
            try
            {
                _fileName = path.Split('/')[path.Split('/').Length - 1].Split('.')[0];
            }
            catch { }
            nowAuth returnNowAuth = new nowAuth();
            if (menuData == null)
            {
                returnNowAuth.errorCode = "C";
                returnNowAuth.errorMessage = "연결이 끊겼습니다.";
                return returnNowAuth;
            }
            try
            {
                foreach(KeyValuePair<string,menuAdmin> item in menuData)
                {
                    List<subMenuAdmin> _subList = item.Value.subMenu;
                    if (_subList == null)
                    {
                        if (item.Value.path.Contains(_fileName))
                        {
                            returnNowAuth.viewFlag = item.Value.viewFlag;
                            returnNowAuth.editFlag = item.Value.editFlag;
                            returnNowAuth.showFlag = item.Value.showFlag;
                            returnNowAuth.nowPath = path;
                            returnNowAuth.subFlag1 = item.Value.subFlag1;
                            returnNowAuth.subFlag2 = item.Value.subFlag2;
                            returnNowAuth.nowKey = item.Value.key;
                            returnNowAuth.nowtitle = item.Value.title;
                            break;
                        }
                        else
                        {
                            continue;
                        }
                    }
                    List<subMenuAdmin> data = _subList.Where(x => x.path.Contains(_fileName) == true).ToList();
                    if(data.Count == 0)
                    {
                        continue;
                    }
                    else
                    {
                        returnNowAuth.viewFlag = data[0].viewFlag;
                        returnNowAuth.editFlag = data[0].editFlag;
                        returnNowAuth.showFlag = data[0].showFlag;
                        returnNowAuth.nowPath = path;
                        returnNowAuth.subFlag1 = data[0].subFlag1;
                        returnNowAuth.subFlag2 = data[0].subFlag2;
                        returnNowAuth.nowKey = data[0].key;
                        returnNowAuth.nowtitle = data[0].title;
                        break;
                    }
                }
            }
            catch(Exception ex)
            {
                returnNowAuth.errorCode = "Y";
                returnNowAuth.errorMessage = ex.Message;
            }

            return returnNowAuth;
        }
    }
}
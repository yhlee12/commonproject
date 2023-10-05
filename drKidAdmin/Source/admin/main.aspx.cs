using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;

namespace drKidAdmin.Source.admin
{
    public partial class main : System.Web.UI.Page
    {
        public Dictionary<string, menuAdmin> MenuList = null;
        public drkidUserInfo baseUser = null;

        public string flag = "";

        public string cp_ret_status = "";
        public string cp_ret_message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.Form["flag"]))
            {
                flag = Request.Form["flag"];
                if(flag == "logout")
                {
                    logoutMethod();
                }
            }
            baseUser = BizUtil.getUserInfo(Session, Request);
            MenuList = new Dictionary<string, menuAdmin>();
            setMenu();
        }

        private void logoutMethod()
        {
            Session.Abandon();
            HttpCookie aCookie;
            string cookieName;
            int limit = Request.Cookies.Count;
            for (int i = 0; i < limit; i++)
            {
                cookieName = Request.Cookies[i].Name;
                aCookie = new HttpCookie(cookieName);
                aCookie.Expires = DateTime.Now.AddDays(-1); // make it expire yesterday
                Response.Cookies.Add(aCookie); // overwrite it
            }
            Request.Cookies.Clear();
            if (Request.Cookies["drKidAdmin"] != null)
            {
                Request.Cookies.Remove("drKidAdmin");
            }
            FormsAuthentication.SignOut();
            Response.Redirect("~/Source/admin/loginPage.aspx");
        }

        private void setMenu()
        {
            DataTable menuTable = new DataTable();

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_MENU_MASTER.PMM_MENU_MAIN_LIST");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_USER_ID", baseUser.userId);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    menuTable = ds.Tables["O_RESULT_CURSOR"];
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
            //Menu가 많아지면 추후 Task OR Tread 화가 필요. KSM
            for(int i = 0; i < menuTable.Rows.Count; i++)
            {
                //대메뉴
                if(menuTable.Rows[i]["MENU_LEV"].ToString() == "1")
                {
                    createBigMenu(
                        menuTable.Rows[i]["MENU_NAME"].ToString()
                      , menuTable.Rows[i]["MENU_SID"].ToString()
                      , "/Source/admin/"+ menuTable.Rows[i]["MENU_FOLDER"].ToString()+"/"+ menuTable.Rows[i]["MENU_PATH"].ToString()
                      , menuTable.Rows[i]["AUTH_VISIBLE"].ToString() == "Y" ? true : false
                      , true
                      , menuTable.Rows[i]["AUTH_EDIT"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["AUTH_FLAG1"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["AUTH_FLAG2"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["MENU_PARAM"].ToString() == "" ? null : menuTable.Rows[i]["MENU_PARAM"].ToString()
                    );
                }
                //중메뉴
                if (menuTable.Rows[i]["MENU_LEV"].ToString() == "2")
                {
                    insertSubMenu(
                        menuTable.Rows[i]["MENU_NAME"].ToString()
                      , menuTable.Rows[i]["MENU_NAME"].ToString()
                      , menuTable.Rows[i]["PARENT_MENU_SID"].ToString()
                      , menuTable.Rows[i]["MENU_SID"].ToString()
                      , "/Source/admin/" + menuTable.Rows[i]["MENU_FOLDER"].ToString() + "/" + menuTable.Rows[i]["MENU_PATH"].ToString()
                      , menuTable.Rows[i]["AUTH_VISIBLE"].ToString() == "Y" ? true : false
                      , true
                      , menuTable.Rows[i]["AUTH_EDIT"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["AUTH_FLAG1"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["AUTH_FLAG2"].ToString() == "Y" ? true : false
                      , menuTable.Rows[i]["MENU_PARAM"].ToString() == "" ? null : menuTable.Rows[i]["MENU_PARAM"].ToString()
                    );
                }
            }
            //Sesstion 처리.
            Session[BizUtil._menuStr] = MenuList;
        }

        private void createBigMenu(string menuName, string key, string path = null, bool viewFlag = true, bool showFlag = true, bool editFlag = false, bool subFlag1 = false, bool subFlag2 = false, string pageQuerystring = null)
        {
            menuAdmin CreateMenu = new menuAdmin();
            CreateMenu.title = menuName;
            CreateMenu.key = key;
            CreateMenu.path = path;
            CreateMenu.viewFlag = viewFlag;
            CreateMenu.showFlag = showFlag;
            CreateMenu.editFlag = editFlag;
            CreateMenu.subFlag1 = subFlag1;
            CreateMenu.subFlag2 = subFlag2;
            CreateMenu.pageQueryString = pageQuerystring;
            MenuList.Add(key, CreateMenu);
        }

        //SubMenu Insert
        private void insertSubMenu(string parentMenuName, string title, string Pkey, string key, string path,bool viewFlag = true, bool showFlag = true,bool editFlag = false,bool subFlag1 = false,bool subFlag2 = false,string pageQuerystring = null)
        {
            subMenuAdmin subMenuS = new subMenuAdmin();
            subMenuS.Pkey = Pkey;
            subMenuS.key = key;
            subMenuS.title = title;
            subMenuS.path = path;
            subMenuS.viewFlag = viewFlag;
            subMenuS.showFlag = showFlag;
            subMenuS.editFlag = editFlag;
            subMenuS.subFlag1 = subFlag1;
            subMenuS.subFlag2 = subFlag2;
            subMenuS.pageQueryString = pageQuerystring;
            if (MenuList[Pkey].subMenu == null)
            {
                MenuList[Pkey].subMenu = new List<subMenuAdmin>();
            }
            MenuList[Pkey].subMenu.Add(subMenuS);
        }
    }
}
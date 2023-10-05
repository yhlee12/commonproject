using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using drKid;

namespace drKidAdmin.Source.admin.master
{
    public partial class Web : System.Web.UI.MasterPage
    {
        drkidUserInfo baseUser = new drkidUserInfo();
        public Dictionary<string, menuAdmin> menuData = null;
        public nowAuth pageAuth = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //User 정보 초기화
            baseUser = BizUtil.getUserInfo(Session, Request);
            menuData = (Dictionary<string, menuAdmin>)Session[BizUtil._menuStr];
            //Sesstion 유지용 초기화.
            Session[BizUtil._menuStr] = menuData;
            string _AbsolutePath = Request.Url.AbsolutePath;
            //Menu Auth 초기화
            pageAuth = menuAuth.checkAuth(_AbsolutePath, menuData);
        }
    }
}
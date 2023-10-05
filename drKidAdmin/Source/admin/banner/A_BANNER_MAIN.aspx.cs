using drKid;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.banner
{
    public partial class A_BANNER_MAIN : PageBase
    {

        public DataTable banner_category_info = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {
                inquery();
            }
            else
            {
                inquery();
            }
        }


        private void inquery() { 
        
            bizHelper biz = new bizHelper();
            DataSet ds = null;
            string sql = @"
                            SELECT          
                                        CODE_CODE		
                                    ,	CODE_NAME         
                                        
                                        FROM    TCM_CODE_MASTER TASA
                                        WHERE   CLASS_CODE = 'BN_TYPE'
                                                ORDER BY	ORDER_SEQ 

                          ";

            ds = biz.baseSQLDataset(sql);
            biz.Dispose();
            biz = null;

            banner_category_info = (DataTable)ds.Tables[0];
        }
    }
}
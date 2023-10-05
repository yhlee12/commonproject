﻿using DevExpress.Web;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKid.Source.m.my
{
    public partial class M_M_PRODUCT_INQUERY_WRITE : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.basePageInit();

        }

        protected void UploadControl_FilesUploadComplete1(object sender, FileUploadCompleteEventArgs e)
        {
            //자세한 내용은 UploadUtil에 적어두었음. 응용하시오 KSM
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;

        }
    }
}
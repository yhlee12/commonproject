using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace drKid.Source.client.member.ajax
{
    public partial class C_CART_AJAX : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";

        string CART_KEY = "";
        string AUTO_FLAG = "";
        string[] PRODUCT_SID;
        string[] AUTO_RATE_NUMNER;
        string[] AUTO_RATE_DATE;
        string[] PRODUCT_QUANTITY;

        DataSet SaveDs = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageLoad();

            CART_KEY = Request["CART_KEY"];
            AUTO_FLAG = Request["AUTO_FLAG"];
            if (String.IsNullOrEmpty(CART_KEY))
            {
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                dt.TableName = "O_ERROR_FLAG";
                dt.Columns.Add("O_ERROR_FLAG");
                DataRow dr = dt.NewRow();
                dr["O_ERROR_FLAG"] = "Y";
                dt.Rows.Add(dr);
                ds.Tables.Add(dt);
                DataTable dt2 = new DataTable();
                dt2.TableName = "O_RETURN_MESSAGE";
                dt2.Columns.Add("O_RETURN_MESSAGE");
                DataRow drs = dt2.NewRow();
                drs["O_RETURN_MESSAGE"] = "Cart Key가 없습니다.";
                dt2.Rows.Add(drs);
                ds.Tables.Add(dt2);
                string returnmessage = JsonConvert.SerializeObject(ds);
                Response.Clear();
                Response.ContentType = "application/json; charset=utf-8";
                Response.Write(returnmessage);
                Response.End();
            }

            try
            {
                //Set Param Data.
                PRODUCT_SID = Request.Form.GetValues("PRODUCT_SID");
                AUTO_RATE_NUMNER = Request.Form.GetValues("AUTO_RATE_NUMNER");
                AUTO_RATE_DATE = Request.Form.GetValues("AUTO_RATE_DATE");
                PRODUCT_QUANTITY = Request.Form.GetValues("PRODUCT_QUANTITY");
                DataTable temp = new DataTable();
                temp.TableName = "CART_DATA";
                temp.Columns.Add("PRODUCT_SID");
                temp.Columns.Add("PRODUCT_COUNT");
                temp.Columns.Add("AUTO_FLAG");
                temp.Columns.Add("AUTO_COUNT");
                temp.Columns.Add("AUTO_DAY");
                if (AUTO_FLAG == "Y")
                {
                    for (int i = 0; i < PRODUCT_SID.Length;i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["PRODUCT_SID"] = PRODUCT_SID[i];
                        dr["PRODUCT_COUNT"] = 1;
                        dr["AUTO_FLAG"] = "Y";
                        dr["AUTO_COUNT"] = AUTO_RATE_NUMNER[i];
                        dr["AUTO_DAY"] = AUTO_RATE_DATE[i];
                        temp.Rows.Add(dr);
                    }
                }
                else
                {
                    for (int i = 0; i < PRODUCT_SID.Length; i++)
                    {
                        DataRow dr = temp.NewRow();
                        dr["PRODUCT_SID"] = PRODUCT_SID[i];
                        dr["PRODUCT_COUNT"] = PRODUCT_QUANTITY[i];
                        dr["AUTO_FLAG"] = "N";
                        dr["AUTO_COUNT"] = 0;
                        dr["AUTO_DAY"] = 0;
                        temp.Rows.Add(dr);
                    }
                }
                SaveDs.Tables.Add(temp);
            }
            catch(Exception ex)
            {
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                dt.TableName = "O_ERROR_FLAG";
                dt.Columns.Add("O_ERROR_FLAG");
                DataRow dr = dt.NewRow();
                dr["O_ERROR_FLAG"] = "Y";
                dt.Rows.Add(dr);
                ds.Tables.Add(dt);
                DataTable dt2 = new DataTable();
                dt2.TableName = "O_RETURN_MESSAGE";
                dt2.Columns.Add("O_RETURN_MESSAGE");
                DataRow drs = dt2.NewRow();
                drs["O_RETURN_MESSAGE"] = ex.Message;
                dt2.Rows.Add(drs);
                ds.Tables.Add(dt2);
                string returnmessage = JsonConvert.SerializeObject(ds);
                Response.Clear();
                Response.ContentType = "application/json; charset=utf-8";
                Response.Write(returnmessage);
                Response.End();
            }
            //Insert Cart Data.
            saveCart();
            
        }

        private void saveCart()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_CART_MASTER.PCM_CART_INSERT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", SaveDs.GetXml());
                hs.Add("I_CART_KEY", CART_KEY);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "C_CART_AJAX");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

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

            string returnmessage = JsonConvert.SerializeObject(ds);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(returnmessage);
            Response.End();
        }
    }
}
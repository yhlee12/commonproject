using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//using System.Data.OracleClient;
using System.Configuration;
using MySql.Data.MySqlClient;
//using System.Data.Odbc;

namespace drKid
{
    public class DaoSAT
    {
        public bool isOracle = false;
        public bool isSQLServer = false;
        public bool isMySQL = false;
        public bool isODBC = false;
 
        ////SQLServer
        //public SqlConnection conSQLServer = null;
        //public SqlTransaction tranSQLServer = null;
        //public bool tranFlagSQLServer { get; set; }

        //MySQL
        public MySqlConnection conMySQL = null;
        public MySqlTransaction tranMySQL = null;
        public bool tranFlagMySQL { get; set; }
        
        public void ConnectDB()
        {
            ConnectionStringSettings conStrSet = ConfigurationManager.ConnectionStrings["ITTConnectionString"];
            string sCon = conStrSet.ProviderName;            

            //if (sCon.IndexOf("System.Data.SqlClient") >= 0 && conSQLServer == null)
            //{   
            //    isSQLServer = true;
            //    conSQLServer = new SqlConnection(conStrSet.ConnectionString);
            //    conSQLServer.Open();
            //    tranFlagSQLServer = false;             
            //}
            if (sCon.IndexOf("MySql.Data.MySqlClient") >= 0 && conMySQL == null)
            {   
                isMySQL = true;
                conMySQL = new MySqlConnection(conStrSet.ConnectionString);
                conMySQL.Open();
                tranFlagMySQL = false;

            }   
        }

        public void ConnectDB(string conStr)
        {
            ConnectionStringSettings conStrSet = ConfigurationManager.ConnectionStrings[conStr];
            string sCon = conStrSet.ProviderName;

            if (sCon.IndexOf("MySql.Data.MySqlClient") >= 0 && conMySQL == null)
            {
                isMySQL = true;
                conMySQL = new MySqlConnection(conStrSet.ConnectionString);
                conMySQL.Open();
                tranFlagMySQL = false;

            }
        }

        public void BeginTran()
        {
            if (isMySQL)
            {
                tranMySQL = conMySQL.BeginTransaction();
                tranFlagMySQL = true;
            }
        }

        public void CommitTran()
        {
            if(isMySQL)
            {
                tranMySQL.Commit();
                tranFlagMySQL = false;
            }
        }

        public void RollbackTran()
        {
            if(isMySQL)
            {
                tranMySQL.Rollback();
                tranFlagMySQL = false;
            }         
        }

        public void DisConnectDB()
        {
            if(isMySQL)
            {
                if (tranFlagMySQL == true && tranMySQL != null)
                {
                    tranMySQL.Rollback();
                }
                if (conMySQL != null)
                {
                    conMySQL.Close();
                    conMySQL.Dispose();
                    conMySQL = null;
                }
            }
        }
    }
}
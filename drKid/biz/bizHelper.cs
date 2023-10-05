using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace drKid
{
    public class bizHelper:BizBase
    {
        public bizHelper()
        {
            this.baseConnectDB();
        }

        public bizHelper(string conStr)
        {
            this.baseConnectDB(conStr);
        }

        // 조회 호출 PROC
        // hashTable SP_NAME 필수.
        public DataSet operationSP(Hashtable hs)
        {
            return basePackageSPAutoBindingAndCall(hs, hs["SP_NAME"].ToString());
        }

        // 트랜잭션 저장, 삭제 호출
        // 호출전 후에 baseTrans, ...baseCommit 처리할 것!
        // baseTrans / baseCommit / Dipose() 필수..
        public DataSet operationSPTr(Hashtable hs)
        {
            return basePackageSPAutoBindingAndCall(hs, hs["SP_NAME"].ToString(), baseDao);
        }

        public DataSet operationSPTr(Hashtable ht, string packageFullName)
        {
            Hashtable bindingHash = basePackageSPAutoBinding(ht, packageFullName, baseDao);
            return baseCallPackageSP(bindingHash, packageFullName, baseDao);
        }
        //단순 쿼리 실행
        //
        //baseSQLDataset(string SQL) return : DataSet;
        //
        //

        //mssql 추가작업
        // MS-SQL
        //신규작업 후 t2l꺼에 맞게 수정 처리

        public void DisConnect()
        {
            this.Dispose();
        }

        public string GetPCM_BOARD_NEXT_VAL()
        {
            string ret = "";
            string sql = "SELECT  SCM_BOARD_SID() AS COL1 FROM DUAL";

            List<ClsData> List1 = new List<ClsData>();
            ClsData item = null;
            DataSet ds = null;

            //sql
            item = new ClsData();
            item.setData(BizUtil.eGubn.SQL, sql, BizUtil.eType.NULL, "");
            List1.Add(item);

            ds = this.baseSQLSelectParam(List1);

            ret = ds.Tables[0].Rows[0]["COL1"].ToString();

            return ret;
        }
        public string GetPCM_EDM_NEXT_VAL()  //허정현 sr management 뒷단 관련 추가 
        {
            string ret = "";
            string sql = "SELECT  SCM_BOARD_SID() AS COL1 FROM DUAL";

            List<ClsData> List1 = new List<ClsData>();
            ClsData item = null;
            DataSet ds = null;

            //sql
            item = new ClsData();
            item.setData(BizUtil.eGubn.SQL, sql, BizUtil.eType.NULL, "");
            List1.Add(item);

            ds = this.baseSQLSelectParam(List1);

            ret = ds.Tables[0].Rows[0]["COL1"].ToString();

            return ret;
        }


        internal ClsData SetPCM_BOARD_M010_011(long boardSid, string p1, string p2, string p3, string IMPORTANT_FLAG, string p4, string p5, string p6, string p7, string p8, string p9, string p10, string p11, string p12, string p13, string p14, string p15, string p16, string p17, string p18, string p19, string p20, string OPEN_FLAG)
        {
            throw new NotImplementedException();
        }

        internal ClsData SetPCM_BOARD_M010_012(long boardSid, long edmSid, string p1, string p2, long fileSize, string useFlag, string p3, string p4, string p5, string p6, string p7)
        {
            throw new NotImplementedException();
        }

        internal ClsData SetPCM_BOARD_M010_021(long boardSid, string p1, string p2, string p3, string p4, string p5, string p6)
        {
            throw new NotImplementedException();
        }

        internal ClsData GetPCM_BOARD_M010_001(long sid, string p1, string p2, string p3, string p4, string p5)
        {
            throw new NotImplementedException();
        }
    }
}
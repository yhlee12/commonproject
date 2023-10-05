﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace LiAsExcelDatabase
{
    public class LiAsExcelDB
    {
        /// <summary>
        ///    Excel Database Control Class
        ///    version 0.1.5
        /// </summary>
        /// <License>
        ///      <Copyright>자유배포</Copyright>
        ///      <Writer>황현우 [ LiA's Blog ]</Writer>
        ///      <DocUrl>http://blog.naver.com/exila</DocUrl>
        ///      <Company>CoreBank Co.,Ltd.</Company>
        ///      <Note>불펌금지효.. 만든 사람의 성의좀 생각을..-_-;;</Note>
        /// </License>
        /*---------------------------------------------------------------------
         * Connection String 에는 어마어마한 옵션들이.. 주로 영문 사이트이긴 
         * 하지만 좀더 상세한 제어를 원한다면 OleDB Connection String 옵션과
         * Extended Properties 에 들어가는 Excel Option 들을 살펴보는 것이 좋을
         * 듯.. HDR = 첫줄을 헤더로 사용할 것인지,IMEX = 데이터유형적용여부 등등
         *-------------------------------------------------------------------*/

        // 확장명 XLS (Excel 97~2003 용)
        private const string ConnectStrFrm_Excel97_2003 =
            "Provider=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=\"{0}\";" +
            "Mode=ReadWrite|Share Deny None;" +
            "Extended Properties='Excel 8.0; HDR={1}; IMEX={2}';" +
            "Persist Security Info=False";

        // 확장명 XLSX (Excel 2007 이상용)
        private const string ConnectStrFrm_Excel =
            "Provider=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=\"{0}\";" +
            "Mode=ReadWrite|Share Deny None;" +
            "Extended Properties='Excel 12.0; HDR={1}; IMEX={2}';" +
            "Persist Security Info=False";


        /// <summary>
        ///    Excel 파일의 형태를 반환한다.
        ///    -2 : Error  
        ///    -1 : 엑셀파일아님
        ///     0 : 97-2003 엑셀 파일 (xls)
        ///     1 : 2007 이상 파일 (xlsx)
        /// </summary>
        /// <param name="XlsFile">
        ///    Excel File 명 전체 경로입니다.
        /// </param>
        public static int ExcelFileType(string XlsFile)
        {
            byte[,] ExcelHeader = {
                { 0xD0, 0xCF, 0x11, 0xE0, 0xA1 }, // XLS  File Header
                { 0x50, 0x4B, 0x03, 0x04, 0x14 }  // XLSX File Header
            };

            // result -2=error, -1=not excel , 0=xls , 1=xlsx
            int result = -1;

            FileInfo FI = new FileInfo(XlsFile);
            FileStream FS = FI.Open(FileMode.Open);

            try
            {
                byte[] FH = new byte[5];

                FS.Read(FH, 0, 5);

                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        if (FH[j] != ExcelHeader[i, j]) break;
                        else if (j == 4) result = i;
                    }
                    if (result >= 0) break;
                }
            }
            catch
            {
                result = (-2);
                //throw e;
            }
            finally
            {
                FS.Close();
            }
            return result;
        }

        /// <summary>
        ///    Excel 파일을 DataSet 으로 변환하여 반환한다.
        /// </summary>
        /// <param name="FileName">
        ///    Excel File 명 PullPath
        /// </param>
        /// <param name="UseHeader">
        ///    첫번째 줄을 Field 명으로 사용할 것이지 여부
        /// </param>
        private static DataSet OpenExcel(string FileName, bool UseHeader)
        {
            DataSet DS = null;

            string[] HDROpt = { "NO", "YES" };
            string HDR = "";
            string ConnStr = "";

            if (UseHeader)
                HDR = HDROpt[1];
            else
                HDR = HDROpt[0];

            int ExcelType = ExcelFileType(FileName);

            switch (ExcelType)
            {
                case (-2): throw new Exception(FileName + "의 형식검사중 오류가 발생하였습니다.");
                case (-1): throw new Exception(FileName + "은 엑셀 파일형식이 아닙니다.");
                case (0):
                    //ConnStr = string.Format(ConnectStrFrm_Excel97_2003, FileName, "NO", "1");
                    ConnStr = string.Format(ConnectStrFrm_Excel97_2003, FileName, HDR, "1");
                    break;
                case (1):
                    ConnStr = string.Format(ConnectStrFrm_Excel, FileName, HDR, "1");
                    //ConnStr = string.Format(ConnectStrFrm_Excel, FileName, "NO", "1");
                    break;
            }

            OleDbConnection OleDBConn = null;
            OleDbDataAdapter OleDBAdap = null;
            DataTable Schema;

            try
            {
                OleDBConn = new OleDbConnection(ConnStr);
                OleDBConn.Open();

                Schema = OleDBConn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, new object[] { null, null, null, "TABLE" });

                DS = new DataSet();

                foreach (DataRow DR in Schema.Rows)
                {
                    OleDBAdap = new OleDbDataAdapter(DR["TABLE_NAME"].ToString(), OleDBConn);

                    OleDBAdap.SelectCommand.CommandType = CommandType.TableDirect;
                    OleDBAdap.AcceptChangesDuringFill = false;

                    string TableName = DR["TABLE_NAME"].ToString().Replace("$", String.Empty).Replace("'", String.Empty);

                    if (DR["TABLE_NAME"].ToString().Contains("$")) OleDBAdap.Fill(DS, TableName);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (OleDBConn != null) OleDBConn.Close();
            }
            return DS;
        }

        /// <summary>
        ///    DataSet 을 Excel 파일로 저장한다.
        /// </summary>
        /// <param name="FileName">
        ///    Excel File 명 PullPath
        /// </param>
        /// <param name="DS">
        ///    Excel 로 저장할 대상 DataSet 객체.
        /// </param>
        /// <param name="ExistDel">
        ///    동일한 파일명이 있을 때 삭제 할 것인지 여부, 파일이 있고 false 면 저장안하고 그냥 false 를 리턴.
        /// </param>
        /// <param name="OldExcel">
        ///    xls 형태로 저장할 것인지 여부, false 이면 xlsx 형태로 저장함.
        /// </param>
        private static bool SaveExcel(string FileName, DataSet DS, bool ExistDel, bool OldExcel)
        {
            bool result = true;

            if (File.Exists(FileName))
                if (ExistDel) File.Delete(FileName);
                else return result;

            string TempFile = FileName;
            // 파일 확장자가 xls 이나 xlsx 가 아니면 아예 파일을 안만들어서
            // 템프파일로 생성후 지정한 파일명으로 변경..

            OleDbConnection OleDBConn = null;

            try
            {
                OleDbCommand Cmd = null;
                string ConnStr = "";

                if (OldExcel)
                {
                    TempFile = TempFile + ".xls";
                    ConnStr = string.Format(ConnectStrFrm_Excel97_2003, TempFile, "YES", "0");
                }
                else
                {
                    TempFile = TempFile + ".xlsx";
                    ConnStr = string.Format(ConnectStrFrm_Excel, TempFile, "YES", "0");
                }

                OleDBConn = new OleDbConnection(ConnStr);
                OleDBConn.Open();

                // Create Table(s).. : 테이블 단위 처리
                foreach (DataTable DT in DS.Tables)
                {
                    String TableName = DT.TableName;

                    StringBuilder FldsInfo = new StringBuilder();
                    StringBuilder Flds = new StringBuilder();

                    // Create Field(s) String : 현재 테이블의 Field 명 생성
                    foreach (DataColumn Column in DT.Columns)
                    {
                        if (FldsInfo.Length > 0)
                        {
                            FldsInfo.Append(",");
                            Flds.Append(",");
                        }

                        FldsInfo.Append("[" + Column.ColumnName.Replace("'", "''") + "] CHAR(255)");
                        Flds.Append(Column.ColumnName.Replace("'", "''"));
                    }

                    // Table Create
                    Cmd = new OleDbCommand("CREATE TABLE " + TableName + "(" + FldsInfo.ToString() + ")", OleDBConn);
                    Cmd.ExecuteNonQuery();

                    // Insert Data
                    foreach (DataRow DR in DT.Rows)
                    {
                        StringBuilder Values = new StringBuilder();
                        foreach (DataColumn Column in DT.Columns)
                        {
                            if (Values.Length > 0) Values.Append(",");
                            Values.Append("'" + DR[Column.ColumnName].ToString().Replace("'", "''") + "'");
                        }

                        Cmd = new OleDbCommand(
                            "INSERT INTO [" + TableName + "$]" +
                            "(" + Flds.ToString() + ") " +
                            "VALUES (" + Values.ToString() + ")",
                            OleDBConn);
                        Cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }
            finally
            {
                if (OleDBConn != null) OleDBConn.Close();
                try
                {
                    if (File.Exists(TempFile))
                    {
                        File.Move(TempFile, FileName);
                    }
                }
                catch { }
            }
            return result;
        }

        /// <summary>
        ///    Excel 파일을 DataSet 으로 변환하여 반환한다.
        /// </summary>
        /// <param name="ExcelFile">
        ///    읽어올 Excel File 명(전체경로)입니다.
        /// </param>
        public static DataSet OpenExcelDB(string ExcelFile, bool HeaderFlag)
        {
            return OpenExcel(ExcelFile, HeaderFlag);
        }

        public static DataSet OpenExcelDB(string ExcelFile)
        {
            return OpenExcel(ExcelFile, true);
        }

        /// <summary>
        ///    DataSet 을 Excel 파일로 저장한다. 동일 파일명이 있으면 Overwrite 됩니다.
        /// </summary>
        /// <param name="ExcelFile">
        ///    저장할 Excel File 명(전체경로)입니다.
        /// </param>
        /// <param name="DS">
        ///    저장할 대상 DataSet 입니다.
        /// </param>
        public static bool SaveExcelDB(string ExcelFile, DataSet DS)
        {
            return SaveExcel(ExcelFile, DS, true, false);
        }
    }
}
﻿using drKid;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace drKidAdmin.Source.admin.banner
{
    public partial class A_CATEGORY_MAIN : PageBase
    {
        public string cp_ret_status = "";
        public string cp_ret_message = "";
        public string save_flag = "";
        public string del_flag = "";
        public string inquiry_flag = "";
        string flag = "";

        //대분류 카테고리
        string[] I_TITLE;
        string[] VIEW_SID;
        string[] VIEW_SEQ;
        string type = "SUB";
        string[] I_USED_TYPE; //라디오 값(CATE , PROD)
        string used_type_values = null;

        DataSet BIG_VIEW_DS = new DataSet();
        public DataTable viewTable = new DataTable();

        //대분류 디테일
        public string _CHOICE_SID = "";
        public Int64 CHOICE_SID = 0; //선택한 대분류 SID
        string D_BANNER_FLAG = ""; //카테고리 배너 사용여부
        string D_TITLE = ""; // 대분류 카테고리 명

        public string big_Detail_Save = "N";
        public string big_Detail_Inquery = "N";

        //메인
        string[] MAIN_SID;
        string[] MAIN_SEQ;
        string[] M_I_TITLE;
        string[] I_SUBTITLE;
        string[] I_URL;
        DataSet MAIN_DS = new DataSet();
        DataSet MAIN_DS2 = new DataSet();
        //배너
        string[] BANNER_SID;
        string[] PARENT_SID;
        string[] BANNER_TYPE;
        DataSet BANNER_DS = new DataSet();

        //EDMS
        string[] image_upload_byte;
        string[] image_upload_name;
        string[] image_upload_ext;
        string[] image_upload_sid;
        public string ERROR_MESSAGE = "";
        DataSet EDMS_DS = new DataSet();
        DataSet EDMS_DS2 = new DataSet();

        //메인,배너 테이블 후 등록된 배너 sid
        public DataTable request_banner_sid_dt = null;
        List<string> request_banner_sid = new List<string>();

        public DataTable request_main_sid_dt = null;
        List<string> request_main_sid = new List<string>();

        //대분류 디테일 테이블 
        public DataTable view_info_Table = new DataTable(); // 배너사용 유무에 상관없이 대분류 정보 
        public DataTable mainTable = new DataTable(); // url 정보
        public DataTable bannerTable = new DataTable(); // 배너sid, edms sid 정보
        public string VIEW_BANNER_FLAG = ""; //디테일 VIEW테이블 관련 BANNER_FLAG
        public string VIEW_USED_TYPE = ""; //디테일 VIEW테이블 관련 USED_TYPE
        public string TITLE_IMG_FLAG = "";//카테고리 타입의 대분류 대표 이미지 저장유무 라디오 값
        public DataTable REPRESENT_IMAGE_TABLE = new DataTable(); // 대분류 카테고리 대표이미지 테이블
        //중분류 
        string[] SUB_I_TITLE;
        string[] SUB_VIEW_SID;
        string[] SUB_VIEW_SEQ;
        string SUB_type = "SUBSUB";
        DataSet SUB_VIEW_DS = new DataSet();

        public DataTable subdataTable = new DataTable(); // 대분류 디테일 중분류 카테고리 정보
        public DataTable subViewTable = new DataTable(); // 전체 중분류 카테고리 리스트
        public string _SUB_CHOICE_SID = "";
        public Int64 SUB_CHOICE_SID = 0; //선택한 중분류 카테고리 SID
        public string D_SUB_TITLE = ""; //중분류 디테일 수정에 사용할 중분류 명
        public string VIEW_PC_FLAG = ""; //중분류 디테일 수정 VIEW_PC_FLAG
        public DataTable subCateTable = new DataTable(); //중분류 디테일 (카테고리명, 중분류 사진)
        public DataTable subCateTable_prodCate = new DataTable();// 중분류 선택가능한 상품카테고리 리스트
        public DataTable subCateTable_prodCate_CHOICE = new DataTable();// 중분류 선택한 상품카테고리 리스트
        public string request_view_pc_flag = ""; // 중분류 디테일 조회한 해당 중분류의 view_pc_flag
        public string sub_Detail_Save = "N";
        public string sub_Detail_Inquery = "N";

        //릴레이션 - 상품 바인드
        public string PROD_BIND_FLAG = "";
        string[] PRODUCT_SID;
        string[] B_PARENT_SID;
        string[] RELATION_ORDER_SEQ;
        DataSet RELATION_DS = new DataSet();
        public DataTable prodTable = null;
        //중분류 디테일 저장관련 중분류 <-> 상품 카테고리 바인드
        public string[] CATEGORY_BIND_SID;
        DataSet CATEGORY_BIND_LIST = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.basePageInit();

            if (!IsPostBack)
            {
                inquery_BigCate();
            }
            else
            {
                flag = Request["flag"];

                switch (flag)
                {
                    //대분류 카테고리 
                    case "save": //대분류 카테고리 팝업 저장
                        saveBigCategory();
                        break;


                    case "Big_Detail_Save": // 대분류 카테고리 디테일 저장
                        PROD_BIND_FLAG = Request["PROD_BIND_FLAG"];
                        edit_BigCategory();
                        if (PROD_BIND_FLAG == "PROD")//상품형 카테고리일 경우, 상품 바인딩
                        {
                            eventProd_Bind();
                        }
                        Big_Detail_Inquery();
                        break;

                    case "Big_Detail_Inquery": //대분류 카테고리 디테일 정보 (pc,mobile img, url)
                        Big_Detail_Inquery();
                        break;

                    case "Big_Detail_Del": //대분류 카테고리 삭제 
                        delBigCategory();
                        break;

                    case "save_Sub_Cate_List": // 대분류 카테고리 리스트 저장
                        saveBigCategoryList();
                        break;

                    //중분류 카테고리
                    case "save_Sub_Category": //중분류 저장
                        saveSubCategory();
                        break;

                    case "Sub_Detail_Save": // 중분류 카테고리 디테일 저장
                        edit_SubCategory_1(); //(pc 카테고리 사진 사용 유무 , 중분류 명)
                        catebind();// 중분류 <-> 상품카테고리 바인드
                        break;

                    case "Sub_Detail_Inquery": //중분류 카테고리 디테일 정보 (pc,mobile img, url)
                        Sub_Detail_Inquery();
                        break;

                    case "Sub_Detail_Del": //중분류 카테고리 삭제 
                        delSubCategory();
                        break;

                }
            }

        }
        private void eventProd_Bind()
        {
            //릴레이션
            PRODUCT_SID = Request.Form.GetValues("SUB_CHECK_BOX");
            B_PARENT_SID = Request.Form.GetValues("B_PARENT_SID");
            RELATION_ORDER_SEQ = Request.Form.GetValues("RELATION_ORDER_SEQ");
            //릴레이션 temp
            DataTable relation_temp = new DataTable();
            relation_temp.TableName = "RELATION_SAVE_TEMP";
            relation_temp.Columns.Add("RELATION_SID");
            relation_temp.Columns.Add("PARENT_SID");
            relation_temp.Columns.Add("ORDER_SEQ");
            if (PRODUCT_SID != null)
            {
                for (int i = 0; i < PRODUCT_SID.Length; i++)
                {
                    DataRow relation_dr = relation_temp.NewRow();
                    relation_dr["RELATION_SID"] = PRODUCT_SID[i];
                    relation_dr["PARENT_SID"] = B_PARENT_SID[i];
                    relation_dr["ORDER_SEQ"] = RELATION_ORDER_SEQ[i];
                    relation_temp.Rows.Add(relation_dr);
                }
            }
            RELATION_DS.Tables.Add(relation_temp);
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_OBJECT_RELATION.EVENT_PROD_OBJECT_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_BOARD_SID", CHOICE_SID); // I_BOARD_SID라 헷갈려하기 ㄴㄴ, 릴레이션 마스터 PARENT SID에 해당 대분류 SID가 들어가기만 하면 됨
                hs.Add("I_XML", RELATION_DS.GetXml());
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                }
                else
                {
                    save_flag = "N";
                    biz.baseRollBack();
                    return;
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
        }
        private void represent_img_flag_update()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_MAIN_MASTER.CATESUB_VISIBLE_SAVE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", CHOICE_SID);
                hs.Add("I_VISIBLE_FLAG", TITLE_IMG_FLAG);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

                }
                else
                {
                    biz.baseRollBack();
                    return;
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
        }

        private void save_Cate_Big_Img() //temp명 수정 
        {
            //메인
            MAIN_SID = Request.Form.GetValues("CATE_BIG_MAIN_SID");
            MAIN_SEQ = Request.Form.GetValues("MAIN_SEQ"); //안씀
            M_I_TITLE = Request.Form.GetValues("I_TITLE"); //안씀
            I_SUBTITLE = Request.Form.GetValues("I_SUBTITLE"); //안씀
            I_URL = Request.Form.GetValues("I_URL");// 안씀

            //메인 temp
            DataTable main_temp = new DataTable();
            main_temp.TableName = "MAIN_SAVE_TEMP2";
            main_temp.Columns.Add("MAIN_SID");
            main_temp.Columns.Add("MAIN_SEQ");
            main_temp.Columns.Add("I_TITLE");
            main_temp.Columns.Add("I_SUBTITLE");
            main_temp.Columns.Add("I_URL");
            for (int i = 0; i < MAIN_SID.Length; i++)
            {
                DataRow main_dr = main_temp.NewRow();
                main_dr["MAIN_SID"] = MAIN_SID[i];
                main_dr["MAIN_SEQ"] = 0;
                main_dr["I_TITLE"] = null;
                main_dr["I_SUBTITLE"] = null;
                main_dr["I_URL"] = null;
                main_temp.Rows.Add(main_dr);
            }
            MAIN_DS.Tables.Add(main_temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_MAIN_MASTER.CATE_SUB_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML_MAIN", MAIN_DS.GetXml());

                hs.Add("I_MAIN_TYPE", "SUB_TITLE_IMG");
                hs.Add("I_CHOICE_SID", CHOICE_SID);
                hs.Add("I_VISIBLE_FLAG", TITLE_IMG_FLAG); //카테고리 타입 대분류 이미지 사용유무 라디오 값

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();
                if (cp_ret_status == "N")
                {
                    //여기서 RESULT 커서로  edms테이블  DOC_SID 넣을  배너마스터 sid들 가져와야함
                    request_main_sid_dt = ds.Tables["O_RESULT_CURSOR"];
                    if (request_main_sid_dt != null && request_main_sid_dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < request_main_sid_dt.Rows.Count; i++)
                        {
                            string mainSid = request_main_sid_dt.Rows[i]["MAIN_SID"].ToString();
                            request_main_sid.Add(mainSid);
                        }

                    }

                    ////EDMS
                    image_upload_byte = Request.Form.GetValues("image_upload_byte2");
                    image_upload_name = Request.Form.GetValues("image_upload_name2");
                    image_upload_ext = Request.Form.GetValues("image_upload_ext2");
                    image_upload_sid = Request.Form.GetValues("image_upload_sid2");

                    DataTable temp = new DataTable();
                    temp.TableName = "EDMS_SAVE_TEMP2";
                    temp.Columns.Add("EDMS_SID");
                    temp.Columns.Add("FILE_NAME");
                    temp.Columns.Add("SAVE_FILE_NAME");
                    temp.Columns.Add("FULL_PATH");
                    temp.Columns.Add("SAVE_PATH");
                    temp.Columns.Add("EXT");
                    temp.Columns.Add("LENGTH");
                    temp.Columns.Add("NUMBER");
                    temp.Columns.Add("DOC_SID");
                    for (int i = 0; i < image_upload_byte.Length; i++)
                    {
                        try
                        {
                            //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                            //
                            if (Convert.ToInt32(image_upload_sid[i]) < 0)
                            {
                                var byteData = Convert.FromBase64String(image_upload_byte[i]);
                                ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                                if (resultData.status != "Y")
                                {
                                    //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                                    //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                                    //resultData.FullPath; //저장된 Full Path
                                    //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                                    //resultData.ext; //확장자
                                    DataRow dr = temp.NewRow();
                                    dr["EDMS_SID"] = image_upload_sid[i];
                                    dr["FILE_NAME"] = image_upload_name[i];
                                    dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                                    dr["FULL_PATH"] = resultData.FullPath;
                                    dr["SAVE_PATH"] = resultData.SavePath;
                                    dr["EXT"] = image_upload_ext[i];
                                    dr["LENGTH"] = resultData.length;
                                    dr["NUMBER"] = i + 1;
                                    dr["DOC_SID"] = request_main_sid[i]; //I_TARGET_SID 역할 
                                    temp.Rows.Add(dr);
                                }
                                else
                                {
                                    ERROR_MESSAGE = resultData.message;
                                    break;
                                }
                            }
                            //이다음 SP 써서 Save 처리...
                            //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                            //SP 이름 
                        }
                        catch (Exception ex)
                        {
                            //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                            ERROR_MESSAGE = ex.Message;
                            break;
                        }
                    }
                    EDMS_DS2.Tables.Add(temp);
                    var a = EDMS_DS.GetXml();
                    //Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
                    string TARGET_SID = "1111";

                    bizHelper _biz = new bizHelper();
                    Hashtable _hs = new Hashtable();
                    DataSet _ds = new DataSet();

                    try
                    {
                        _biz.baseBeginTran();

                        _hs.Clear();
                        _hs.Add("SP_NAME", "PKG_EDMS_MASTER.BANNER_EDMSOBJECT_SAVE2");
                        _hs.Add("I_PERSON_NO", "DRKID");
                        _hs.Add("I_XML", EDMS_DS2.GetXml());
                        _hs.Add("I_TARGET_SID", TARGET_SID); //여기 배너 sid 넣으면 됨
                        _hs.Add("I_DOC_TYPE", "EDMS");
                        _hs.Add("I_DOC_NO", "");

                        _hs.Add("I_LANGUAGE_CODE", "KOR");
                        _hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        _hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        _hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        _hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                        _ds = _biz.operationSPTr(_hs);

                        cp_ret_status = _ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = _ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "N")
                        {
                            save_flag = "Y";


                        }
                        else
                        {
                            _biz.baseRollBack();
                            return;
                        }
                    }
                    catch (Exception ex)
                    {
                        cp_ret_status = "Y";
                        cp_ret_message = ex.Message;
                    }
                    finally
                    {
                        if (_biz != null)
                        {
                            _biz.Dispose();
                            _biz = null;
                        }
                    }
                }
                else
                {
                    biz.baseRollBack();
                    return;
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
        }

        private void catebind()
        {
            _SUB_CHOICE_SID = Request["SUB_CHOICE_SID"];
            if (!string.IsNullOrEmpty(_SUB_CHOICE_SID))
            {
                SUB_CHOICE_SID = Convert.ToInt64(Request["SUB_CHOICE_SID"]); //선택된 중분류 sid
            }

            CATEGORY_BIND_SID = Request.Form.GetValues("CATE_LIST_CHOICE");
            DataTable bind_temp = new DataTable();
            bind_temp.TableName = "CATE_BIND_TEMP";
            bind_temp.Columns.Add("CATEGORY_SID");

            if (CATEGORY_BIND_SID != null)
            {
                for (int i = 0; i < CATEGORY_BIND_SID.Length; i++)
                {
                    DataRow bind_dr = bind_temp.NewRow();
                    bind_dr["CATEGORY_SID"] = CATEGORY_BIND_SID[i];
                    bind_temp.Rows.Add(bind_dr);
                }
            }
            CATEGORY_BIND_LIST.Tables.Add(bind_temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_OBJECT_RELATION.VIEWCATE_OBJECT_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", SUB_CHOICE_SID);
                hs.Add("I_XML", CATEGORY_BIND_LIST.GetXml());

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    Sub_Detail_Inquery();
                }
                else
                {
                    biz.baseRollBack();
                    return;
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

        }


        private void saveBigCategoryList()
        {
            //VIEW SID
            VIEW_SID = Request.Form.GetValues("M_VIEW_SID");
            //VIEW SEQ
            VIEW_SEQ = Request.Form.GetValues("M_VIEW_SEQ");

            //temp
            DataTable big_view_tmep = new DataTable();
            big_view_tmep.TableName = "BIG_VIEW_TMEP";
            big_view_tmep.Columns.Add("PARENT_SID");
            big_view_tmep.Columns.Add("VIEW_SID");
            big_view_tmep.Columns.Add("TYPE");
            big_view_tmep.Columns.Add("USED_TYPE");
            big_view_tmep.Columns.Add("TITLE");
            big_view_tmep.Columns.Add("VIEW_SEQ");
            for (int i = 0; i < VIEW_SID.Length; i++)
            {
                DataRow view_dr = big_view_tmep.NewRow();
                view_dr["PARENT_SID"] = 0; //대분류는  0 으로 생성
                view_dr["VIEW_SID"] = VIEW_SID[i];
                view_dr["TYPE"] = type;
                view_dr["USED_TYPE"] = null;
                view_dr["TITLE"] = null;
                view_dr["VIEW_SEQ"] = VIEW_SEQ[i];
                big_view_tmep.Rows.Add(view_dr);
            }
            BIG_VIEW_DS.Tables.Add(big_view_tmep);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.BIGCATE_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", BIG_VIEW_DS.GetXml());
                hs.Add("I_SAVE_TYPE", "SUB");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    save_flag = "Y";
                    CHOICE_SID = 0; // 디테일 페이지가 안열리게 하기 위해 0으로 초기화 
                    inquery_BigCate();
                }
                else
                {
                    biz.baseRollBack();
                    return;
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

        }

        private void delSubCategory()
        {
            _SUB_CHOICE_SID = Request["SUB_CHOICE_SID"];
            if (!string.IsNullOrEmpty(_SUB_CHOICE_SID))
            {
                SUB_CHOICE_SID = Convert.ToInt64(Request["SUB_CHOICE_SID"]);
            }

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.PVM_BIGCATE_DEL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", SUB_CHOICE_SID);
                hs.Add("I_DEL_TYPE", "SUB");//대분류 삭제

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

                    inquery_BigCate();
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
        }

        private void Sub_Detail_Inquery()
        {
            _SUB_CHOICE_SID = Request["SUB_CHOICE_SID"];
            if (!string.IsNullOrEmpty(_SUB_CHOICE_SID))
            {
                SUB_CHOICE_SID = Convert.ToInt64(Request["SUB_CHOICE_SID"]);
            }

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.SUB_CATE_DETAIL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", SUB_CHOICE_SID);


                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    subCateTable = ds.Tables["O_RESULT_CURSOR"];
                    subCateTable_prodCate = ds.Tables["O_RESULT_CURSOR_2"]; // 중분류 선택가능한 상품카테고리 리스트
                    subCateTable_prodCate_CHOICE = ds.Tables["O_RESULT_CURSOR_4"]; // 중분류 바인드했던 상품카테고리 리스트
                    if (subCateTable != null && subCateTable.Rows.Count > 0)
                    {
                        request_view_pc_flag = subCateTable.Rows[0]["VIEW_PC_FLAG"].ToString();
                    }

                    inquery_BigCate();
                    sub_Detail_Inquery = "Y";
                    inquiry_flag = "Y";

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
        }

        private void edit_SubCategory_1()
        {
            _SUB_CHOICE_SID = Request["SUB_CHOICE_SID"];
            if (!string.IsNullOrEmpty(_SUB_CHOICE_SID))
            {
                SUB_CHOICE_SID = Convert.ToInt64(Request["SUB_CHOICE_SID"]);
            }

            D_SUB_TITLE = Request["D_SUB_TITLE"];
            VIEW_PC_FLAG = Request["VIEW_PC_FLAG"];

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.PVM_SUBCATE_EDIT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", SUB_CHOICE_SID);
                hs.Add("I_TITLE", D_SUB_TITLE);
                hs.Add("I_VIEW_PC_FLAG", VIEW_PC_FLAG);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    sub_Detail_Save = "Y";

                    if (VIEW_PC_FLAG == "Y")
                    {
                        // edit_SubCategory_2(); // (pc이미지)
                    }
                    else
                    {
                        save_flag = "Y";
                        Sub_Detail_Inquery();
                    }


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

        }

        private void edit_SubCategory_2()
        {
            _SUB_CHOICE_SID = Request["SUB_CHOICE_SID"];
            if (!string.IsNullOrEmpty(_CHOICE_SID))
            {
                SUB_CHOICE_SID = Convert.ToInt64(Request["SUB_CHOICE_SID"]);
            }

            ////EDMS
            image_upload_byte = Request.Form.GetValues("image_upload_byte");
            image_upload_name = Request.Form.GetValues("image_upload_name");
            image_upload_ext = Request.Form.GetValues("image_upload_ext");
            image_upload_sid = Request.Form.GetValues("image_upload_sid");

            DataTable temp = new DataTable();
            temp.TableName = "EDMS_SAVE_TEMP";
            temp.Columns.Add("EDMS_SID");
            temp.Columns.Add("FILE_NAME");
            temp.Columns.Add("SAVE_FILE_NAME");
            temp.Columns.Add("FULL_PATH");
            temp.Columns.Add("SAVE_PATH");
            temp.Columns.Add("EXT");
            temp.Columns.Add("LENGTH");
            temp.Columns.Add("NUMBER");
            temp.Columns.Add("DOC_SID");
            for (int i = 0; i < image_upload_byte.Length; i++)
            {
                try
                {
                    //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                    //
                    if (Convert.ToInt32(image_upload_sid[i]) < 0)
                    {
                        var byteData = Convert.FromBase64String(image_upload_byte[i]);
                        ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                        if (resultData.status != "Y")
                        {
                            //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                            //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                            //resultData.FullPath; //저장된 Full Path
                            //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                            //resultData.ext; //확장자
                            DataRow dr = temp.NewRow();
                            dr["EDMS_SID"] = image_upload_sid[i];
                            dr["FILE_NAME"] = image_upload_name[i];
                            dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                            dr["FULL_PATH"] = resultData.FullPath;
                            dr["SAVE_PATH"] = resultData.SavePath;
                            dr["EXT"] = image_upload_ext[i];
                            dr["LENGTH"] = resultData.length;
                            dr["NUMBER"] = i + 1;
                            dr["DOC_SID"] = SUB_CHOICE_SID;  //request_banner_sid[i]; //I_TARGET_SID 역할 
                            temp.Rows.Add(dr);
                        }
                        else
                        {
                            ERROR_MESSAGE = resultData.message;
                            break;
                        }
                    }
                    //이다음 SP 써서 Save 처리...
                    //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                    //SP 이름 
                }
                catch (Exception ex)
                {
                    //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                    ERROR_MESSAGE = ex.Message;
                    break;
                }
            }
            EDMS_DS.Tables.Add(temp);
            var a = EDMS_DS.GetXml();
            //Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
            string TARGET_SID = "1111";

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();

            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_EDMS_MASTER.BANNER_EDMSOBJECT_SAVE");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", EDMS_DS.GetXml());
                hs.Add("I_TARGET_SID", TARGET_SID); //여기 배너 sid 넣으면 됨
                hs.Add("I_DOC_TYPE", "EDMS");
                hs.Add("I_DOC_NO", "");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {

                }
                else
                {
                    biz.baseRollBack();
                    return;
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

        }

        private void saveSubCategory()
        {
            //VIEW SID
            SUB_VIEW_SID = Request.Form.GetValues("SUB_VIEW_SID");
            //VIEW SEQ
            SUB_VIEW_SEQ = Request.Form.GetValues("SUB_VIEW_SEQ");

            //중분류 명
            SUB_I_TITLE = Request.Form.GetValues("SUB_TITLE");

            //부모 대분류 SID
            _CHOICE_SID = Request["CHOICE_SID"];
            if (!string.IsNullOrEmpty(_CHOICE_SID))
            {
                CHOICE_SID = Convert.ToInt64(Request["CHOICE_SID"]);
            }

            //temp
            DataTable sub_view_tmep = new DataTable();
            sub_view_tmep.TableName = "BIG_VIEW_TMEP";
            sub_view_tmep.Columns.Add("PARENT_SID");
            sub_view_tmep.Columns.Add("VIEW_SID");
            sub_view_tmep.Columns.Add("TYPE");
            sub_view_tmep.Columns.Add("USED_TYPE");
            sub_view_tmep.Columns.Add("TITLE");
            sub_view_tmep.Columns.Add("VIEW_SEQ");

            if (SUB_VIEW_SID != null)
            {
                for (int i = 0; i < SUB_VIEW_SID.Length; i++)
                {
                    DataRow view_dr = sub_view_tmep.NewRow();
                    view_dr["PARENT_SID"] = _CHOICE_SID; //대분류는  0 으로 생성
                    view_dr["VIEW_SID"] = SUB_VIEW_SID[i];
                    view_dr["TYPE"] = SUB_type; // "SUBSUB"
                    view_dr["USED_TYPE"] = null;
                    view_dr["TITLE"] = SUB_I_TITLE[i];
                    view_dr["VIEW_SEQ"] = SUB_VIEW_SEQ[i];
                    sub_view_tmep.Rows.Add(view_dr);
                }

            }


            SUB_VIEW_DS.Tables.Add(sub_view_tmep);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.BIGCATE_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", SUB_VIEW_DS.GetXml());
                hs.Add("I_SAVE_TYPE", "SUBSUB");
                hs.Add("I_CHOICE_SID", _CHOICE_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //보고있던 카테고리 디테일 보여줘야함
                    Big_Detail_Inquery();
                }
                else
                {
                    biz.baseRollBack();
                    return;
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

        }

        private void delBigCategory()
        {
            _CHOICE_SID = Request["CHOICE_SID"];
            if (!string.IsNullOrEmpty(_CHOICE_SID))
            {
                CHOICE_SID = Convert.ToInt64(Request["CHOICE_SID"]);
            }
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.PVM_BIGCATE_DEL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", CHOICE_SID);
                hs.Add("I_DEL_TYPE", "BIG");//대분류 삭제

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    del_flag = "Y";
                    inquery_BigCate();
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

        }

        private void Big_Detail_Inquery()
        {
            _CHOICE_SID = Request["CHOICE_SID"];
            if (!string.IsNullOrEmpty(_CHOICE_SID))
            {
                CHOICE_SID = Convert.ToInt64(Request["CHOICE_SID"]);
            }

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.BIG_CATE_DETAIL");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", CHOICE_SID);
                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    big_Detail_Inquery = "Y";
                    view_info_Table = ds.Tables["O_RESULT_CURSOR_VIEW"];
                    mainTable = ds.Tables["O_RESULT_CURSOR_MAIN"];
                    bannerTable = ds.Tables["O_RESULT_CURSOR_BANNER"]; // 배너 정보
                    subdataTable = ds.Tables["O_RESULT_CURSOR_SUBSUB"]; //중분류 있을경우 정보 받음
                    REPRESENT_IMAGE_TABLE = ds.Tables["O_RESULT_CURSOR_VIEW_IMG"]; //대분류 대표 이미지 
                    prodTable = ds.Tables["O_RESULT_CURSOR_6"];//카테고리 바인드 정보
                    if (view_info_Table != null && view_info_Table.Rows.Count > 0)
                    {
                        VIEW_BANNER_FLAG = ds.Tables["O_RESULT_CURSOR_VIEW"].Rows[0]["BANNER_FLAG"].ToString();
                        VIEW_USED_TYPE = ds.Tables["O_RESULT_CURSOR_VIEW"].Rows[0]["USED_TYPE"].ToString();
                        inquiry_flag = "Y";
                    }
                    if (REPRESENT_IMAGE_TABLE != null && REPRESENT_IMAGE_TABLE.Rows.Count > 0)
                    {
                        TITLE_IMG_FLAG = ds.Tables["O_RESULT_CURSOR_VIEW_IMG"].Rows[0]["VISIBLE_FLAG"].ToString();
                    }
                    if (REPRESENT_IMAGE_TABLE == null || REPRESENT_IMAGE_TABLE.Rows.Count == 0)
                    {
                        TITLE_IMG_FLAG = "N";
                    }



                    inquery_BigCate();
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

        }

        private void edit_BigCategory()
        {
            _CHOICE_SID = Request["CHOICE_SID"];
            if (!string.IsNullOrEmpty(_CHOICE_SID))
            {
                CHOICE_SID = Convert.ToInt64(Request["CHOICE_SID"]);
            }

            D_TITLE = Request["D_TITLE"];
            D_BANNER_FLAG = Request["BANNER_FLAG"];

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.PVM_BIGCATE_EDIT");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_CHOICE_SID", CHOICE_SID);
                hs.Add("I_TITLE", D_TITLE);
                hs.Add("I_BANNER_FLAG", D_BANNER_FLAG);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    big_Detail_Save = "Y";
                    // 카테고리 대표이미지 사용을 체크 시 해당 대표이미지 저장
                    TITLE_IMG_FLAG = Request["TITLE_IMG_FLAG"];
                    represent_img_flag_update(); //카테고리 대표이미지 사용여부 플래그 저장
                    if (TITLE_IMG_FLAG == "Y")
                    {
                        save_Cate_Big_Img(); // 카테고리 대표이미지 edms 저장

                    }

                    // 카테고리 배너 사용을 체크 시 배너까지 저장
                    if (D_BANNER_FLAG == "Y")
                    {
                        saveMainAndBanner();
                    }
                    else
                    {
                        save_flag = "Y";
                        Big_Detail_Inquery();
                    }

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

        }



        private void saveMainAndBanner()
        {
            //메인
            MAIN_SID = Request.Form.GetValues("MAIN_SID");
            MAIN_SEQ = Request.Form.GetValues("MAIN_SEQ");
            M_I_TITLE = Request.Form.GetValues("I_TITLE"); //안씀
            I_SUBTITLE = Request.Form.GetValues("I_SUBTITLE"); //안씀
            I_URL = Request.Form.GetValues("I_URL");// I_URL

            //배너
            BANNER_SID = Request.Form.GetValues("BANNER_SID");
            PARENT_SID = Request.Form.GetValues("PARENT_SID");
            BANNER_TYPE = Request.Form.GetValues("BANNER_TYPE");

            //메인 temp
            DataTable main_temp = new DataTable();
            main_temp.TableName = "MAIN_SAVE_TEMP";
            main_temp.Columns.Add("MAIN_SID");
            main_temp.Columns.Add("MAIN_SEQ");
            main_temp.Columns.Add("I_TITLE");
            main_temp.Columns.Add("I_SUBTITLE");
            main_temp.Columns.Add("I_URL");
            for (int i = 0; i < MAIN_SID.Length; i++)
            {
                DataRow main_dr = main_temp.NewRow();
                main_dr["MAIN_SID"] = MAIN_SID[i];
                main_dr["MAIN_SEQ"] = MAIN_SEQ[i];
                main_dr["I_TITLE"] = null;
                main_dr["I_SUBTITLE"] = null;
                main_dr["I_URL"] = I_URL[i];
                main_temp.Rows.Add(main_dr);
            }
            MAIN_DS2.Tables.Add(main_temp);

            //배너 temp
            DataTable banner_temp = new DataTable();
            banner_temp.TableName = "BANNER_SAVE_TEMP";
            banner_temp.Columns.Add("BANNER_SID");
            banner_temp.Columns.Add("PARENT_SID");
            banner_temp.Columns.Add("BANNER_TYPE");
            for (int i = 0; i < BANNER_SID.Length; i++)
            {
                DataRow banner_dr = banner_temp.NewRow();
                banner_dr["BANNER_SID"] = BANNER_SID[i];
                banner_dr["PARENT_SID"] = PARENT_SID[i];
                banner_dr["BANNER_TYPE"] = BANNER_TYPE[i];
                banner_temp.Rows.Add(banner_dr);
            }
            BANNER_DS.Tables.Add(banner_temp);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_BANNER_MASTER.VIEWBANNER_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML_MAIN", MAIN_DS2.GetXml());
                hs.Add("I_XML_BANNER", BANNER_DS.GetXml());
                hs.Add("I_MAIN_TYPE", "SUB");
                hs.Add("I_CHOICE_SID", CHOICE_SID);

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    //여기서 RESULT 커서로  edms테이블  DOC_SID 넣을  배너마스터 sid들 가져와야함
                    request_banner_sid_dt = ds.Tables["O_RESULT_CURSOR"];
                    if (request_banner_sid_dt != null && request_banner_sid_dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < request_banner_sid_dt.Rows.Count; i++)
                        {
                            string bannerSid = request_banner_sid_dt.Rows[i]["BANNER_SID"].ToString();
                            request_banner_sid.Add(bannerSid);
                        }

                    }

                    ////EDMS
                    image_upload_byte = Request.Form.GetValues("image_upload_byte");
                    image_upload_name = Request.Form.GetValues("image_upload_name");
                    image_upload_ext = Request.Form.GetValues("image_upload_ext");
                    image_upload_sid = Request.Form.GetValues("image_upload_sid");

                    DataTable temp = new DataTable();
                    temp.TableName = "EDMS_SAVE_TEMP";
                    temp.Columns.Add("EDMS_SID");
                    temp.Columns.Add("FILE_NAME");
                    temp.Columns.Add("SAVE_FILE_NAME");
                    temp.Columns.Add("FULL_PATH");
                    temp.Columns.Add("SAVE_PATH");
                    temp.Columns.Add("EXT");
                    temp.Columns.Add("LENGTH");
                    temp.Columns.Add("NUMBER");
                    temp.Columns.Add("DOC_SID");
                    for (int i = 0; i < image_upload_byte.Length; i++)
                    {
                        try
                        {
                            //0보다 작을 경우 신규 생성이므로 Image를 Server에 Wirte한다.
                            //
                            if (Convert.ToInt32(image_upload_sid[i]) < 0)
                            {
                                var byteData = Convert.FromBase64String(image_upload_byte[i]);
                                ResultData resultData = UploadUtil.FileByteToWriteServer(byteData, image_upload_name[i], image_upload_ext[i]);
                                if (resultData.status != "Y")
                                {
                                    //SP저장을위해 아래 데이터와 넘어온 name등을 종합하여 처리 필요. 예시로 아래 제작하여 SaveDs 확인
                                    //resultData.targerFileName; 저장시 생성로직에 따라 만들어진 실 저장된 이름
                                    //resultData.FullPath; //저장된 Full Path
                                    //resultData.SavePath; //Save 폴더와 적용된 Path 추후 만들어져있는 것을 뿌릴때 SavePath 사용
                                    //resultData.ext; //확장자
                                    DataRow dr = temp.NewRow();
                                    dr["EDMS_SID"] = image_upload_sid[i];
                                    dr["FILE_NAME"] = image_upload_name[i];
                                    dr["SAVE_FILE_NAME"] = resultData.targerFileName;
                                    dr["FULL_PATH"] = resultData.FullPath;
                                    dr["SAVE_PATH"] = resultData.SavePath;
                                    dr["EXT"] = image_upload_ext[i];
                                    dr["LENGTH"] = resultData.length;
                                    dr["NUMBER"] = i + 1;
                                    dr["DOC_SID"] = request_banner_sid[i]; //I_TARGET_SID 역할 
                                    temp.Rows.Add(dr);
                                }
                                else
                                {
                                    ERROR_MESSAGE = resultData.message;
                                    break;
                                }
                            }
                            //이다음 SP 써서 Save 처리...
                            //SP 테스트는 해보지 않았으므로 작업시 적용 후 정상 저장이 되는지 확인 꼭 해보기.
                            //SP 이름 
                        }
                        catch (Exception ex)
                        {
                            //에러 바인딩은 반드시 처리 에러났으면 for문 Break해서 빠져나가야함.
                            ERROR_MESSAGE = ex.Message;
                            break;
                        }
                    }
                    EDMS_DS.Tables.Add(temp);
                    var a = EDMS_DS.GetXml();
                    //Test 용 데이터 Test를 하고나면 반드시 들어간 데이터를 삭제하세요.
                    string TARGET_SID = "1111";

                    bizHelper _biz = new bizHelper();
                    Hashtable _hs = new Hashtable();
                    DataSet _ds = new DataSet();

                    try
                    {
                        _biz.baseBeginTran();

                        _hs.Clear();
                        _hs.Add("SP_NAME", "PKG_EDMS_MASTER.BANNER_EDMSOBJECT_SAVE");
                        _hs.Add("I_PERSON_NO", "DRKID");
                        _hs.Add("I_XML", EDMS_DS.GetXml());
                        _hs.Add("I_TARGET_SID", TARGET_SID); //여기 배너 sid 넣으면 됨
                        _hs.Add("I_DOC_TYPE", "EDMS");
                        _hs.Add("I_DOC_NO", "");

                        _hs.Add("I_LANGUAGE_CODE", "KOR");
                        _hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                        _hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                        _hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                        _hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                        _ds = _biz.operationSPTr(_hs);
                        //ㅈㅎ
                        cp_ret_status = _ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                        cp_ret_message = _ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                        if (cp_ret_status == "N")
                        {
                            save_flag = "Y";


                        }
                        else
                        {
                            _biz.baseRollBack();
                            return;
                        }
                    }
                    catch (Exception ex)
                    {
                        cp_ret_status = "Y";
                        cp_ret_message = ex.Message;
                    }
                    finally
                    {
                        if (_biz != null)
                        {
                            _biz.Dispose();
                            _biz = null;
                        }
                    }
                }
                else
                {
                    biz.baseRollBack();
                    return;
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
        }


        private void inquery_BigCate()
        {
            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.PVM_BIGCATE_LIST");
                hs.Add("I_PERSON_NO", "DRKID");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSP(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    viewTable = ds.Tables["O_RESULT_CURSOR"]; // 전체 대분류 리스트
                    subViewTable = ds.Tables["O_RESULT_CURSOR_SUBLIST"]; //전체 중분류 리스트
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

        }

        private void saveBigCategory()
        {
            //VIEW SID
            VIEW_SID = Request.Form.GetValues("VIEW_SID");
            //VIEW SEQ
            VIEW_SEQ = Request.Form.GetValues("VIEW_SEQ");

            //라디오 값 
            I_USED_TYPE = Request.Form.GetValues("USED_TYPE_LIST");
            if (I_USED_TYPE != null && !string.IsNullOrEmpty(I_USED_TYPE[0]))
            {
                used_type_values = I_USED_TYPE[0];
                I_USED_TYPE = used_type_values.Split(',').Select(s => s.Trim()).ToArray();
            }
            //대분류 명
            I_TITLE = Request.Form.GetValues("I_TITLE");

            //temp
            DataTable big_view_tmep = new DataTable();
            big_view_tmep.TableName = "BIG_VIEW_TMEP";
            big_view_tmep.Columns.Add("PARENT_SID");
            big_view_tmep.Columns.Add("VIEW_SID");
            big_view_tmep.Columns.Add("TYPE");
            big_view_tmep.Columns.Add("USED_TYPE");
            big_view_tmep.Columns.Add("TITLE");
            big_view_tmep.Columns.Add("VIEW_SEQ");
            for (int i = 0; i < VIEW_SID.Length; i++)
            {
                DataRow view_dr = big_view_tmep.NewRow();
                view_dr["PARENT_SID"] = 0; //대분류는  0 으로 생성
                view_dr["VIEW_SID"] = VIEW_SID[i];
                view_dr["TYPE"] = type;
                view_dr["USED_TYPE"] = I_USED_TYPE[i];
                view_dr["TITLE"] = I_TITLE[i];
                view_dr["VIEW_SEQ"] = VIEW_SEQ[i];
                big_view_tmep.Rows.Add(view_dr);
            }
            BIG_VIEW_DS.Tables.Add(big_view_tmep);

            bizHelper biz = new bizHelper();
            Hashtable hs = new Hashtable();
            DataSet ds = new DataSet();
            try
            {
                biz.baseBeginTran();

                hs.Clear();
                hs.Add("SP_NAME", "PKG_VIEW_MASTER.BIGCATE_SAVE_XML");
                hs.Add("I_PERSON_NO", "DRKID");
                hs.Add("I_XML", BIG_VIEW_DS.GetXml());
                hs.Add("I_SAVE_TYPE", "*");

                hs.Add("I_LANGUAGE_CODE", "KOR");
                hs.Add("I_PROGRESS_GUID", BizUtil.getGUID());
                hs.Add("I_REQUEST_USER_ID", baseUser.userId);
                hs.Add("I_REQUEST_IP_ADDRESS", baseUser.userIpAddress);
                hs.Add("I_REQUEST_PROGRAM_ID", "A_CATEGORY_MAIN");

                ds = biz.operationSPTr(hs);

                cp_ret_status = ds.Tables["O_ERROR_FLAG"].Rows[0]["O_ERROR_FLAG"].ToString();
                cp_ret_message = ds.Tables["O_RETURN_MESSAGE"].Rows[0]["O_RETURN_MESSAGE"].ToString();

                if (cp_ret_status == "N")
                {
                    CHOICE_SID = 0; // 디테일 페이지가 안열리게 하기 위해 0으로 초기화 
                    inquery_BigCate();
                }
                else
                {
                    biz.baseRollBack();
                    return;
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

        }



        //uploader_FileUploadComplete ~ uploader_FileUploadComplete5_2
        protected void uploader_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }

        protected void uploader_FileUploadComplete2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete2_1(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete2_2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete3_1(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete3_2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete4_1(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete4_2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete5_1(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }
        protected void uploader_FileUploadComplete5_2(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }

        // 중분류 카테고리 PC이미지 -- 임시 안씀
        protected void uploader_FileUploadComplete6(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }

        // 카테고리 타입의 대분류 카테고리 대표이미지
        protected void uploader_FileUploadComplete7(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            var JsonData = UploadUtil.UploadForImage(e);
            string returnData = JsonConvert.SerializeObject(JsonData);
            e.CallbackData = returnData;
        }

    }
}
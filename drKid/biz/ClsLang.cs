using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShippingGate
{
    public class drKid
    {
        //
        // 형식 :  "한글;영어;(외국어1);(외국어2);(외국어3);......"
        //


        //
        // 타이틀 (ABC~ 순서로 작성)
        //  
        public const string UCM_AUTHORITY_A010 = "권한관리;Authority;;;";


        public const string UCM_BOARD_L010 = "게시판;Bulletin Borad;;;";
        public const string UCM_BOARD_M010 = "게시내역;Notice Info;;;";

        public const string UWM_CARGO_ACCEPT_M010 = "화물접수;Accept;;;";
        public const string UCM_CLASS_M010 = "CLASS관리;ClassCode;;;";

        public const string UCM_CODE_A010 = "공통 코드 관리;Common Code Admin.";
        public const string UCM_CODE_P010 = "코드 목록;Code List;;;";
        public const string UCM_CUSTOMER_ADDRESS = "거래처 주소 목록;Client Address List;;;";
        public const string UCM_CUSTOMER_PIC_P010 = "거래처 담당자 목록;Client PIC List;;;";
        public const string UCM_CUSTOMER_GROUP_A010 = "거래처 그룹 명;Client Group Name;;;";

        public const string UWM_CARGO_CONTROL_L010 = "수출 화물 목록, 수입 화물 목록;Export/Import Cargo List;;;";
        public const string UCM_CARGO_CONTROL_M010 = "수출화물;Export Cargo;;;";
        public const string UCM_CARGO_RELEASE_M020 = "화물 취하 출고;Withdraw in Warehouse;;;";

        public const string UWM_CARGO_STOCK_L010 = "일일 입고 현황;Daily Storage State;;;";
        public const string UWM_CARGO_STOCK_L020 = "수출 화물 재고 현황;Exxport Cargo Storage  Stage;;;";

        public const string UCM_DBPARMETER_A010 = "DB PARMETER 관리;DB Parm. Admin;;;";

        public const string UWM_FLIGHT_L010 = "항공편(Flight) 기초 정보 목록;Flight Information List;;;";
        public const string UWM_FLIGHT_M010 = "항공편(Flight) 기초 정보 관리;Flight Information Management;;;";
        public const string UCM_FACTOR_L010 = "팩터 유형;Factor Type;;;";
        public const string UCM_FACTOR_M010 = "팩터 관리;Factor Admin;;;";
        public const string UCM_FACTOR_P010 = "팩터 목록;Factor List Popup;;;";

        public const string UCM_OBJECT_L010 = "객체 목록;Object List;;;";
        public const string UWM_OFFLOAD_ULD_L010 = "Off Load ULD목록;Off Load List;;;";
        public const string UWM_OFFLOAD_ULD_M010 = "Off Load ULD 항공편 등록;Regist Off Load ULD;;;";
        public const string UWM_OPERATION_ULD_L010 = "수출화면 작업 ULD 목록;Operation ULD List;;;";
        public const string UWM_OPERATION_ULD_M010 = "수출화물 작업 ULD 관리;Operation ULD List;;;";

        public const string UCM_PROGRESS_L010 = "Progress Log;Progress Log;;;";

        public const string UWM_SCHEDULE_L010 = "운항 스케줄 목록;Flight Schedule Information List;;;";
        public const string UWM_SCHEDULE_M010 = "운항 스케줄 관리;Flight Schedule Information Management;;;";
        public const string UWM_SCHEDULE_L020 = "항공편 목록;Export/Import Flight List;;;";
        public const string UWM_SCHEDULE_M020 = "항공편 관리;Flight Admin;;;";
        public const string UCM_SYSTEM_MASSAGE_A010 = "시스템 메시지 관리;System Message;;;";

        public const string UCM_USER_L010 = "사용자 목록;User Information List;;;";
        public const string UWM_ULD_BUILD_UP_M010 = "수출화물포장(Build Up);Build-Up Info.;;;";
        public const string UWM_ULD_INVENTORY_L010 = "ULD 재고 목록;ULD Inventory;;;";
        public const string UWM_ULD_INvENTORY_P010 = "ULD 재고 목록 Pop-up;ULD Inventory;;;";

        public const string UWM_CARGO_XRAY_M010 = "보안검사(X-Ray);X-Ray;;;";


        //TARIFF
        public const string UIT_SERVICE_L010 = "서비스 목록;SERVICE LIST;;;";
        public const string UIT_SERVICE_M010 = "서비스 관리;SERVICE MANAGE;;;";
        public const string UIT_TARIFFSHEET_L010 = "단가 목록;TARIFFSHEET LIST;;;";
        public const string UIT_TARIFFSHEET_M010 = "단가 관리;TARIFFSHEET MANAGE;;;";
        public const string UIT_TARIFFSHEET_M020 = "단가항목 상태팩터 관리;TARIFF ITEM CONDITION FACTOR MANAGE;;;";
        public const string UIT_TARIFFSHEET_M040 = "단가항목 상세단가 키 팩터 관리;RATE DETAIL - KEY FACTOR MANAGE;;;";
        public const string UIT_FACTORDATA_P010 = "팩터 데이터 목록;FACTORDATA LIST;;;";


        //
        // 버튼 (ABC~ 순서로 작성)
        //

        public const string BTN_ADD = "추가;Add;;;";
        public const string BTN_ACCEPT = "화물접수;Accept;;;";

        public const string BTN_BARCODE = "바코드;Barcode;;;";

        public const string BTN_CANCEL = "취소;Cancel;;;";
        public const string BTN_CHOICE = "선택;Choice;;;";
        public const string BTN_CLOSE = "닫기;Close;;;";
        public const string BTN_CARGO_INFO = "화물 정보;Cargo Info.;;;";
        public const string BTN_CARGO_LIST = "화물 목록;Cargo List;;;";

        public const string BTN_DELETE = "삭제;Delete;;;";
        public const string BTN_DAMAGE = "파손 화물;Damage;;;";

        public const string BTN_EXCEL = "엑셀;Excel;;;";
        public const string BTN_EDI_SEND = "EDI전송;EDI Send;;;";

        public const string BTN_FLIGHT_INFO = "항공편정보;Flight Info;;;";

        public const string BTN_HOLD = "보류화물;Hold;;;";

        public const string BTN_INSERT = "신규;Insert;;;";
        public const string BTN_IN_WAREHOUSE = "화물입고;In Warehouse;;;";

        public const string BTN_MOVE_CARGO = "화물 이동;Move Cargo;;;";
        public const string BTN_MFCS_UPLOAD = "MFCS UP;MFCS Upload;;;";

        public const string BTN_OPEN = "열기;Open;;;";
        public const string BTN_OUT_WAREHOUSE = "화물 출고;Out Warehouse;;;";
        public const string BTN_OPERATION_ULD = "작업 ULD;Operation ULD;;;";

        public const string BTN_REGIST_INOUT_BOUND = "출항등록,입항등록;Regist In/Outbound;;;";

        public const string BTN_SELECT = "조회;Select;;;";
        public const string BTN_SCHEDULE_M011 = "지연등록;Delay;;;";
        public const string BTN_SCHEDULE_M012 = "지연취소;Delay Cancel;;;";
        public const string BTN_SCHEDULE_M013 = "결항등록;cancelled;;;";
        public const string BTN_SUMMARY_STORAGE = "요약일지;Summary of Storage;;;";
        public const string BTN_SCM = "SCM생성; SCM;;;";

        public const string BTN_TODAY_SCHEDULE = "최신일정;Today Schedule;;;";

        public const string BTN_XRAY = "X-RAY검사;Test X-Ray;;;";


        public const string BTN_UPDATE = "저장;Save;;;";

        public const string BTN_VIEW = "상세보기;Detail;;;";
        public const string BTN_VOLUME_RECODE = "부피기록;Volume Recode;;;";

        public const string BTN_WITHDRAW = "취하출고;Withdraw in Warehouse;;;";
        public const string BTN_WEIGHING = "부피 기록;Weighing;;;";


        //
        // 라벨, 그리드 (ABC~ 순서로 작성)
        //
        //1~9
        public const string LBL_1ST_ASSORT = "1차 분류;1st Assort;;;";
        public const string LBL_2ND_ASSORT = "2차 분류;2nd Assort;;;";
        public const string LBL_3RD_ASSORT = "3차 분류;3rd Assort;;;";

        //A
        public const string GRD_AIRCRAFT_REGISTRATION_NO = "항공기 유형;Registration No;;;";

        public const string LBL_AIRCRAFT_REGISTRATION_NO = "항공기 유형;Registration No;;;";

        public const string GRD_ARRIVAL_SHORT = "도착;Arr;;;";
        public const string LBL_AIRCRAFT_TYPE_NAME = "기종 유형;Type;;;";
        public const string LBL_AIRCRAFT_TYPE = "항공기 유형;Aircraft Type;;;";
        public const string LBL_ACTUAL_DATE = "실제 입항 일시(ATA);ATA;;;";
        public const string LBL_ACTUAL_TIME = "실제 시간;Actual Time;;;";
        public const string LBL_ADD = "등록;Add;;;";
        public const string LBL_AFTER_CHANGE = "변경후;After Change;;;";
        public const string LBL_AFTER_LOCATION = "이동후 위치;After Location;;;";
        public const string LBL_AIRLINE = "항공사;Airline;;;";
        public const string LBL_AGENT = "대리점; Agent;;;";
        public const string LBL_ASSIGN_CODE = "배정장소(기본값);Assign Code";
        public const string LBL_ADDRESS_INFORMATION = "주소정보;Address Information;;;";
        public const string LBL_ACCEPT = "접수정보;Accept;;;";
        public const string LBL_ACCEPT_TIME = "접수일시;Accept Time;;;";
        public const string LBL_ACCEPT_SEQ = "접수순번;Accept Seq;;;";
        public const string LBL_AGGREGATE_QUANTITY = "누계수량;Aggregate Quantity;;;";
        public const string LBL_AGGREGATE_WEIGHT = "누계중량;Aggregate Weight;;;";
        public const string LBL_ANOTHER_WEIGHING = "추가계량;Another Weighing;;;";

        //B
        public const string LBL_BRANCH_CODE = "지사;Branch;;;;";
        public const string LBL_BEFORE_CHANGE = "변경전;Before Change;;;";
        public const string LBL_BEFORE_LACATION = "이전 위치;Before Location;;;";
        public const string LBL_BEFORE_LOCATION_TIME = "이전 보관 일시;Before Locatin TIme;;;";
        public const string LBL_BEFORE_LOCATION = "이전 보관 위치;Before Location;;;";
        public const string LBL_BEFORE_RACK_NO = "이전 Rack No.;Before Rack No.";
        public const string LBL_BUSINESS_TYPE = "사업구분;Business Type;;;";
        public const string LBL_BUSINESS_ADDRESS = "사업장 주소;Business Address;;;";
        public const string LBL_BUSINESS_CATEGORY = "업태;Business Category;;;";
        public const string LBL_BUSINESS_SECTOR = "업종;Busuness Sector;;;";
        public const string LBL_BUSINESS_REGISTRATION = "사업자등록번호;Business Registration Number;;;";
        public const string LBL_BUILD_UP_INFO = "화물 포장 작업 정보;Build-up Info.;;;";
        public const string LBL_BUP_FLAG = "BUP 여부;BUP Flag;;;";
        public const string LBL_BULK_FLAG = "BULK 여부;BULK Flag;;;";

        //C
        public const string GRD_CARRIER = "항공사(Carrier);Carrier;;;";
        public const string GRD_CARRIER_NAME = "항공사명;Carrier Name;;;";

        public const string LBL_CARRIER_CODE = "항공사(Carrier);Carrier Code;;;";
        public const string LBL_CARRIER_CODE_2 = "항공사(Carrier) Code;Carrier Code;;;";
        public const string LBL_CARRIER_NAME = "항공사(Carrier) 명;Carrier Name;;;";
        public const string LBL_CHARACTER_MANAGE_ITEM = "문자형관리항목;Char Mange Item;;;";

        public const string LBL_CARGO_CONTROL_NO = "화물 관리 번호;Cargo Control No;;;";
        public const string LBL_CARGO_CONTROL_SID = "화물 관리 SID;Cargo Control SID;;;";

        public const string LBL_CLASS_NAME = "Class 명;Class Name;;;";
        public const string LBL_CLASS_SID = "클래스Sid;Class Sid;;;";
        public const string LBL_CLASS_FLAG = "클래스 여부;Class Flag;;;";
        public const string LBL_CLASS_ADMIN = "Class 관리;Class Admin;;;";
        public const string LBL_CODE = "코드;Code;;;";
        public const string LBL_CODE_LENGTH = "코드길이;Code Length;;;";
        public const string LBL_CODE_NAME = "코드명;CodeNm;;;";
        public const string LBL_CODE_LIST = "코드목록;Code List;;;";

        public const string LBL_COMMON_NAME = "공용어;CommonNm;;;";
        public const string GRD_CARGO = "화물;Cargo;;;";
        public const string LBL_CARGO_TYPE = "화물 유형;Cargo Type;;;";
        public const string LBL_CARGO_STATUS = "화물 상태;Cargo Status;;;";
        public const string LBL_CARGO_DESCRIPTION = "화물 내역;Cargo Descripton;;;";
        public const string LBL_CARGO_HISTORY = "화물 이력;Cargo History;;;";
        public const string LBL_CARGO_INFO = "접수 화물 정보;Cargo Info.;;;";
        public const string LBL_CARGO_WEIGHING = "화물 계량 정보;Cargo Weighing;;;";
        public const string LBL_CARGO_STATUS_INFO = "화물 상태 정보;Cargo Status Info.;;;";
        public const string LBL_COUNT = "조회수;Count;;;";
        public const string LBL_COMPANY_CODE = "법인;Company;;;";
        public const string LBL_CREATED = "최초등록;Created;;;";
        public const string LBL_CHARACTER_TYPE = "문자형;Character Type;;;";
        public const string LBL_COLUMN_NAME = "컬럼명;Column Name;;;";
        public const string LBL_CHARACTER_ADMIN_ITEM = "문자 관리 항목;Character Admin Item;;;";
        public const string LBL_CLIENT = "거래처;Client;;;";
        public const string LBL_CLIENT_ADDRESS = "거래처 주소;Client Address;;;";
        public const string LBL_CLIENT_NAME = "거래처 명;Client Name;;;";
        public const string LBL_CLIENT_LIST = "거래처 목록;Client List;;;";
        public const string LBL_CLIENT_TYPE = "거래처 구분;Client Type;;;";
        public const string LBL_CLIENT_GROUP_NAME = "거래처 그룹명;Client Group Name;;;";
        public const string LBL_CLIENT_CODE = "거래처 코드;Client Code;;;";
        public const string LBL_CLIENT_GROUP = "거래처 그룹;Client Group;;;";
        public const string LBL_CLIENT_ADMIN = "거래처 관리;Client Admin.";
        public const string LBL_CLIENT_GROUP_ADMIN = "거래처 그룹관리;Client Group Admin;;;";
        public const string LBL_CLIENT_GROUP_CODE = "거래처 코드 관리;Client Group Code;;;";

        public const string LBL_CUSTOMS = "세관/관세사;Customs;;;";
        public const string LBL_CONTENTS = "내용;Contents;;;";
        public const string LBL_CHECKER = "검사자;Checker;;;";
        public const string LBL_CANCEL_OFFLOAD = "Off Load취소; Cancel Offload";
        public const string LBL_CREATER = "Offload 등록자;Creater;;;";
        public const string LBL_CREATER_TIME = "Offload 등록일시;Creater Time;;;";


        //D
        public const string GRD_DEPARTURE = "출발공항;Departure;;;";
        public const string GRD_DESTINATION = "도착공항;Destination;;;";

        public const string GRD_DEPARTURE_SHORT = "출발;Dep;;;";

        public const string LBL_DATE = "일자;Date;;;";
        public const string LBL_DATETIME = "일시;DateTime;;;";
        public const string LBL_DEPARTURE_CODE = "출발공항(Origin) Code;Departure Code;;;";
        public const string LBL_DEPARTURE_NAME = "출발공항(Origin) 명;Departure Name;;;";
        public const string LBL_DESTINATION_CODE = "도착공항;Destination;;;";
        public const string LBL_DESTINATION_NAME = "도착공항명;Destination Name;;;";

        public const string LBL_DESCRIPTION = "설명;Desc;;;";
        public const string LBL_DEFAULT_LOCATION_CODE = "기본 입출고 위치;Default Location;;;";
        public const string LBL_DEPARTMENT_CODE = "부서;Department;;;";
        public const string LBL_DELETE = "삭제;Delete;;;";
        public const string LBL_DATA_TYPE = "데이터 유형;Data Type;;;;;;";
        public const string LBL_DATE_TYPE = "날짜형;Date Type;;;";
        public const string LBL_DURATION_TIME = "처리시간;Duration Time;;;";
        public const string LBL_DETAIL_INQUIRY_USER_LOG = "사용자 로그 상세 조회;Detail Inquiry User Log;;;";
        public const string LBL_DOZONE_CODE = "더존 code;Dozone Code;;;";
        public const string LBL_DIVISION_CATEGORY = "중분류;Division Category;;;";
        public const string LBL_DEPATURE_TIME = "출항일시;Departure time;;;";
        public const string LBL_DEPATURE_DATE = "출항일자;Departure date;;;";
        public const string LBL_DEPATURE_STANDARD_DATE = "출항기준일자;Departure standard date;;;";
        public const string LBL_DOLLY_WEIGHT = "수레중량;Dolly Weight;;;";
        public const string LBL_DAMAGE = "파손;Damage;;;";
        public const string LBL_DOC_CHECKER = "서면분류자;Doc. Chek;;;";


        //E
        public const string LBL_EMAIL_ADDR = "Email 주소;Email Address;;;";
        public const string LBL_ESTIMATED_DATE = "예정 입항 일시(ETA);ETA;;;";
        public const string LBL_ESTIMATED_TIME = "예정시간;Estimated Time;;;";
        public const string LBL_ETC = "기타;Etc.";
        public const string LBL_ERR_FLAG = "오류여부;Error Flag;;;";
        public const string LBL_END_TIME = "종료일시;End Time;;;";
        public const string LBL_EXT_NAME = "확장자;Ext. Name;;;";
        public const string LBL_ELAPSE_TIME = "경과 시간;Elapse Time;;;";
        public const string LBL_ENGLISH = "영어;English;;;";

        //F
        public const string GRD_FIRST_INSERT = "최초 등록;Created;;;";
        public const string GRD_FIRST_INSERT_USER = "사용자;Created User;;;";
        public const string GRD_FIRST_INSERT_DATE = "일시;Created Date;;;";

        public const string GRD_FLIGHT_NO = "편명;Flight No;;;";
        public const string LBL_FLIGHT_TYPE_CODE = "항공편 유형;Flight Type;;;";
        public const string LBL_FLIGHT_REGISTRATION_NO = "등록번호;Reg No;;;";
        public const string LBL_FLIGHT_NO = "편번;Flight No;;;";

        public const string LBL_FAX_NO = "FAX 번호;FAX No;;;";
        public const string LBL_FLIGHT_DATE = "입출항 기준일자;Standard Date;;;";
        public const string LBL_FACTOR_TYPE = "서비스유형;Factor Type;;;";
        public const string LBL_FACTOR_CODE_NAME = "서비스 코드/명;Factor Code/Name;;;";
        public const string LBL_FACTOR_SID = "서비스SID;Factor SID;;;";
        public const string LBL_FACTOR_CODE = "서비스 Code;Factor Code;;;";
        public const string LBL_FACTOR_NAME = "서비스 명;Factor Name;;;";
        public const string LBL_FACTOR_ATTR = "서비스속성;Factor Attr.;;;";
        public const string LBL_FILE_NAME = "파일명;File Name;;;";
        public const string LBL_FEE_FREE_FLAG = "요금 면제 여부;Fee free Flag;;;";
        public const string LBL_FINISH_ASSORT = "분류마감;Finish assort;;;";

        //G


        //H

        //I
        public const string GRD_INOUT_FLAG = "입출항구분;IMPORT/EXPORT;;;";

        public const string LBL_IMPORTANT = "중요여부;Important;;;";
        public const string LBL_IMPORTANT_ICON = "중요;Imp.;;;";
        public const string LBL_INOUT_FLAG = "수출입구분;IMPORT/EXPORT;;;";
        public const string LBL_INQUIRY = "조회;Inquiry;;;";
        public const string LBL_IATA_FLAG = "IATA 가입여부;IATA Flag;;;";
        public const string LBL_IN_WARE_HOUSE = "입고;In Warehouse;;;";
        public const string LBL_IN_TIME = "반입일자;In Time;;;";
        public const string LBL_INBOUND_CHECKER = "입고 검수자;Inbound Checker;;;";

        //J

        //K
        public const string LBL_KEY_VALUE1 = "키값1;Key Value1;;;";
        public const string LBL_KEY_VALUE2 = "키값2;Key Value2;;;";
        public const string LBL_KEY_VALUE3 = "키값3;Key Value3;;;";
        public const string LBL_KEY_VALUE4 = "키값4;Key Value4;;;";
        public const string LBL_KEY_VALUE = "키값5;Key Value5;;;";
        public const string LBL_KOREAN = "한국어;KOREAN;;;";
        //L
        public const string LBL_LAST_INSERT = "최종등록;LastInsert;;;";
        public const string LBL_LAST_UPDATE = "최종수정;LastUpdate;;;";
        public const string LBL_LAST_UPDATE_USER = "사용자;LastUpdateUser;;;";
        public const string LBL_LAST_UPDATE_DATE = "일시;LastUpdateDate;;;";
        public const string LBL_LANGUAGE = "사용 언어;Language;;;";
        public const string LBL_LOG_PROCESS = "LOG 처리;Log Process;;;";
        public const string LBL_LOAD_FLIGHT = "선적 편번;Load Flight;;;";
        public const string LBL_LOAD_FLIGHT_DATE = "선적 출발 일시;Load Flight Date;;;";

        //M
        public const string LBL_MOBILE_NO = "휴대전화번호;Mobile No;;;";
        public const string LBL_MESSAGE = "메시지;Message;;;";
        public const string LBL_MENU_ADMIN = "메뉴관리;Menu Admin.;;;";
        public const string LBL_MENU_ID = "메뉴 ID;Menu ID;;;";
        public const string LBL_MENU_NAME = "메뉴 명;Menu Name;;;";
        public const string LBL_MOVE_CARGO = "화물 이동 이력 정보;Move Cargo;;;";
        public const string LBL_MOVE_TIME = "이동일시;Move Time;;;";
        public const string LBL_MOVE_QUANTITY = "이동수량;Move Quantity;;;";
        public const string LBL_MOVE_RACK_NO = "이동 Rack No;Move Rack No.;;;";
        public const string LBL_MFST_WEIGHT = "서류중량;MFST Weight;;;";

        //N
        public const string LBL_NATION_CODE = "국가코드;NationCode;;;";
        public const string LBL_NUMBER_MANAGE_ITEM = "숫자형 관리 항목;Number Admin Item;;;";
        public const string LBL_NAME = "명칭;Name;;;";
        public const string LBL_NUMBER_TYPE = "숫자형;Number Type;;;";
        public const string LBL_NO_INSERT = "Insert 건수;No. of Insert;;;";
        public const string LBL_NO_UPDATE = "Update 건수;No. of Update;;;";
        public const string LBL_NO_DELETE = "Delete 건수;No. of Delete;;;";
        public const string LBL_NUMBER_ADMIN_ITEM = "숫자형 관리 항목;Number Admin Item;;;";
        public const string LBL_NET_WEIGHT = "순 중량(Kg);Net Weight;;;";

        //O
        public const string LBL_ORDER = "순서;Order;;;";
        public const string LBL_ORIGIN_CODE = "출발지;Origin;;;";
        public const string LBL_OBJECT = "객체유형;Object;;;";
        public const string LBL_OBJECT_NAME = "객체유형명;Object Name;;;";
        public const string LBL_OBJECT_CODE = "객체 Code;Object Code;;;";
        public const string LBL_OBJECT_SID = "객체 SID;Object SID;;;";

        public const string LBL_OFFICIAL_FACTOR = "공용서비스;Official Factor;;;";
        public const string LBL_OWNER = "소유자;Owner;;;";
        public const string LBL_OWNER_ID = "소유자 ID;Owner ID;;;";
        public const string LBL_OWNER_NAME = "소유자 명;Owner Name;;;";
        public const string LBL_OPERATION = "작업;Operation;;;";
        public const string LBL_OPERATION_STATUS = "작업상태;Operation Status;;;";
        public const string LBL_OPERATION_DESCRIPTION = "작업 내역;Operation;;;";
        public const string LBL_OUT_WAREHOUSE = "출고;Out Warehouse;;;";
        public const string LBL_OTHER_WAREHOUSE_GARGO = "이고화물;Other Warehouse Cargo;;;";
        public const string LBL_OPERATION_ULD_SID = "작업 ULD SID;Operation ULD SID;;;";


        //P
        public const string LBL_POST_TIME = "게시일자;PostDate;;;";
        public const string GRD_PROCESS_RATIO = "진행률; % ;;;";
        public const string LBL_PHONE_NO = "전화번호;Phone No;;;";
        public const string LBL_PASSWORD = "비밀 번호;Password;;;";
        public const string LBL_PRINT = "인쇄;Print;;;";
        public const string LBL_PROGRESS_NAME = "Progress 명;Progress Name;;;";
        public const string LBL_PROCESS_NAME = "Process 명; Process Name;;;";
        public const string LBL_PROGRAM_ID = "프로그램ID;Program ID;;;";
        public const string LBL_PROGRAM_ADMIN = "프로그램 관리;Program Admin.;;;";
        public const string LBL_PROGRAM_FILE_NAME = "프로그램 파일 명;Program File Name;;;";
        public const string LBL_PROGRAM_NAME = "프로그램 명;Program Name;;;";
        public const string LBL_PROGRAM_TYPE = "프로그램 유형;Program Type;;;";
        public const string LBL_PATH = "경로;Path;;;";
        public const string LBL_PROCEDURE_NAME = "Procedure명;Procedure Name;;;;";
        public const string LBL_PARTNERS = "협력사;Partners;;;";
        public const string LBL_PIC_NAME = "담당자명;PIC Name;;;";
        public const string LBL_PIC_INFORMATION = "담당자 정보;PIC Information;;;";
        public const string LBL_PIC = "담당자;PIC;;;";
        public const string LBL_PALLET = "파렛트 종류/중량;Pallet Type/Weight;;;";
        public const string LBL_PASS = "통과여부;Pass;;;";
        public const string LBL_PAYABLE = "수납;Payable;;;";
        public const string LBL_PACKING_WEIGHT = "포장중량;Packing Weight;;;";
        public const string LBL_PACKING_QUANTITY = "포장수량;Packing quantity;;;";
        public const string LBL_PROCESS_COMPLETE = "작업완료 처리;Process Complete;;;";
        public const string LBL_PRESENT_LOCATION = "현재위치;Present Location;;;";

        //Q
        public const string LBL_QUERY_COUNT = "조회수;Cnt;;;";
        public const string LBL_Q_V_VW = "수량/부피/부피중량;Quantity/Volume/Vol.Weight;;;";

        //R
        public const string LBL_REMARK = "비고;Remark;;;";
        public const string LBL_ROUTE_NAME = "경로;Route;;;";
        public const string LBL_REVOKE_ROW = "행-취소;Revoke Row;;;";
        public const string LBL_RUN = "실행;Run;;;";
        public const string LBL_REGION = "지역;Region;;;";
        public const string LBL_REGION_FACTOR = "지역 서비스;Region Factor;;;";
        public const string LBL_REPRESENTATIVE = "대표자명;Representative;;;";
        public const string LBL_RESERVATION = "예약;Reservation;;;";
        public const string LBL_RESERVATION_INFO = "예약정보;Reservation Info;;;";
        public const string LBL_RESERVE_FLIGHT = "예약 편명;Reserve Flight No;;;";
        public const string LBL_RESERVE_DEPARTUER_TIME = "예약출발일시;Reserve Departuer Time;;;";
        public const string LBL_REGIST_TS_ULD = "T/S ULD 등록;Regist T/S ULD;;;";
        public const string LBL_REGIST_OFFLOAD = "OffLoad 등록;Regist Off Load;;;";


        //S
        public const string LBL_SYSTEM = "시스템;System;;;";
        public const string LBL_SYSTEM_CLASS_YN = "시스템클래스;SystemClass;;;";
        public const string LBL_SYSTEM_CLASS_FLAG = "시스템클래스여부;System Class Flag;;;";
        public const string LBL_SYSTEM_GROUP = "시스템 그룹;System Group;;;";

        public const string GRD_STATUS = "상태;Status;;;";
        public const string LBL_STATUS_QUANTITY = "화물 상태별 수량;Status Quantity;;;";
        public const string LBL_SCHEDULE_STATUS_NAME = "상태;Schedule Status;;;";
        public const string SCHEDULE_Grid1Title = "입항편;Arrival flight;;;";
        public const string SCHEDULE_Grid2Title = "출항편;Departure flight;;;";
        public const string LBL_STANDARD_DATE = "표준 입항 일시(STA);STA;;;";
        public const string LBL_STANDARD_TIME = "표준시간;Standard Time;;;";
        public const string LBL_SYSTEM_FLAG = "시스템 그룹;System Group;;;";
        public const string LBL_SUBJECT = "주체영역;Subject;;;";
        public const string LBL_SUBJECT_NAME = "주체명;Subject Name;;;";
        public const string LBL_SUBJECT_CODE = "주체 코드;Subject Code;;;";
        public const string LBL_SUBJECT_FLAG = "주체여부;Subject Flag;;;";
        public const string LBL_SUBJECT_SID = "객체 SID;Subject SID;;;";
        public const string LBL_SELECT_ROW = "행-선택;Key Value;;;";
        public const string LBL_SELECT = "선택;Select;;;";
        public const string LBL_SELECT_FLIGHT_NO = "편명 등록;Select Flight No;;;";

        public const string LBL_SYSTEM_FACTOR = "시스템서비스;System Factor;;;";
        public const string LBL_SUBJECT_FACTOR = "주체 서비스;Subject Factor;;;";
        public const string LBL_SYSTEM_OBJECT = "시스템 객체;System Object;;;";
        public const string LBL_SYSTEM_OBJECT_FLAG = "시스템 객체 여부;System Object Flag;;;";
        public const string LBL_START_DATE = "Log 시작일;Start Log;;;";
        public const string LBL_START_TIME = "시작일시;Start Time;;;";
        public const string LBL_SEQ = "순서;Seq.";
        public const string LBL_SELECT_ALL = "전체선택;Select All;;;";
        public const string LBL_SUB_CATEGORY = "소분류;Sub Gategory;;;";
        public const string LBL_STOCK_INFO = "화물 재고 정보;Stock Info.;;;";
        public const string LBL_STOCK = "재고 정보;Stock;;;";
        public const string LBL_SPECCIAL_CARGO = "특수 화물;Speccial Cargo;;;";
        public const string LBL_SECURITY_CHECK = "보안검사;Security Check;;;";
        public const string LBL_SECURITY_CHECK_PERSON = "보안 검사자;Security Check porson;;;";
        public const string LBL_SECURITY_CHECK_TIME = "보안검사 일시;Security Check Time;;;";
        public const string LBL_SERVICE_TYPE = "서비스 유형;SERVICE TYPE;;;";
        public const string LBL_SERVICE_CODE_NAME = "서비스 코드 명;SERVICE CODE NAME;;;";
        public const string LBL_STORAGE = "보관위치;Storage;;;";
        public const string LBL_STORAGE_QUANTITY = "보관수량;Storage Quantity;;;";
        public const string LBL_STORAGE_STATUS = "화물 보관 현황;Storage Status;;;";
        public const string LBL_STORAGE_TIME = "보관 일시;Storage Time;;;";
        public const string LBL_STORAGE_HOUR = "보관 시간;Storage Hour;;;";
        public const string LBL_STORAGE_LACATION = "입고위치;Storage Location;;;";
        public const string LBL_STORAGE_INFO_BEFORE_BUILDUP = "포장 이전 보관 정보;Storage Info before Build-up;;;";
        public const string LBL_STORAGE_WEIGHT = "재고중량;Storage Weight;;;";
        public const string LBL_SUPPLIES_LIST = "소모품 목록;Supplies List;;;";
        public const string LBL_SUPPLIES_TYPE = "소모품 종류;Supplies Type;;;";



        //T
        public const string GRD_TIME = "시간;Time;;;";
        public const string LBL_TITLE = "제목;Title;;;";
        public const string LBL_TABLE_NAME = "테이블명;TableName;;;";
        public const string LBL_TYPE = "유형;Type;;;";
        public const string LBL_THRU_FLAG = "Thru 여부; Thru Flag;;;";
        public const string LBL_TOTAL_QUANTITY = "총 수량;Total quantity;;;";
        public const string LBL_TOTAL_WEIGHT = "작업중량;Total Weight;;;";

        //U
        public const string LBL_UPDATED_USER_NAME = "게시자;Poster;;;";
        public const string LBL_USE_LANG = "사용언어;UseLang;;;";
        public const string LBL_USABLE = "사용가능;Usable;;;";
        public const string LBL_USER = "사용자;User;;;";
        public const string LBL_USER_ID = "사용자 ID;User ID;;;";
        public const string LBL_USER_NAME = "사용자 명;User Name;;;";
        public const string LBL_OFFICIAL_USER_NAME = "공용어;Official Language;;;";
        public const string LBL_KOREAN_USER_NAME = "한글;Korean;;;";
        public const string LBL_USER_INFO = "사용자 관리;User Information Management;;;";
        public const string LBL_USER_FLIGHT_NO = "사용자 정의 항공편;Custom Flight;;;";
        public const string LBL_USER_GROUP_CODE = "사용자 그룹 코드;User Group Code;;;";
        public const string LBL_USER_GROUP_NAME1 = "사용자 그룹명;User Group Name;;;";
        public const string LBL_UPDATED = "최초수정;Updated;;;";
        public const string LBL_UPDATE = "수정;Update;;;";
        public const string LBL_UPPER_OBJECT_LIST1 = "상위 객체 목록;Upper Object List;;;";
        public const string LBL_UPPER_OBJECT_LIST2 = "하위 객체 목록;Upper Object List;;;";
        public const string LBL_UNTIL = "부터;Until;;;";
        public const string LBL_UNKNOWN = "알수없음;Unknown;;;";
        public const string LBL_ULD_STATUS = "ULD 상태; ULD Status;;;";
        public const string LBL_ULD_TYPE = "ULD 유형;ULD Type;;;";
        public const string LBL_ULD_NUMBER = "ULD번호;ULD No;;;";


        public const string LBL_UNLOAD_CARGO_LIST = "미적재 화물 목록;Unload Cargo List;;;";


        //V
        public const string GRD_VIA1_NAME = "경유공항1;Via - 1st;;;";
        public const string GRD_VIA2_NAME = "경유공항2;Via - 2st;;;";

        public const string LBL_VIA1_CODE = "경유지(Via) Code - 1st;Via Code - 1st;;;";
        public const string LBL_VIA1_NAME = "경유지 (Via) 명 - 1st;Via Name - 1st;;;";
        public const string LBL_VIA2_CODE = "경유지(Via) Code - 2nd;Via Code - 2st;;;";
        public const string LBL_VIA2_NAME = "경유지 (Via) 명 - 2nd;Via Name - 2st;;;";

        public const string LBL_VOLUME_INFO = "화물 부피 정보;Volume Info.;;;";

        //W
        public const string LBL_WEIGHT = "중량;Weight;;;";
        public const string LBL_WEIGHING_WEIGHT = "계량중량;Weighing Weight;;;";
        public const string LBL_WEIGHING_ALL_CARGO = "모두 계량 했습니다.;Weighing all of Cargo;;;";
        public const string LBL_W_H_D = "가로/세로/높이;Width/Height/Depth;;;";


        //X

        //Y

        //Z

        //
        // 폼, Javascript message (ABC~ 순서로 작성)
        //

        public const string JS_DELETE_CONFIRM = "삭제하시겠습니까?;Are you sure to Delete?;;;";
        public const string JS_UPDATE_CONFIRM = "저장하시겠습니까?;Save?;;;";
        public const string JS_USER_INFO = "User의 정보를 입력하십시오;Please enter User Information;;;";
        public const string JS_SELECT_COLUMN = "선택된 열이 없습니다.;There are no columns selected.;;;";
        public const string JS_SELECT_VALUE = "선택된 값이 없습니다;Selected value does no exist;;;";
        public const string POP_ADD_USER = "유저추가;Add User;;;";
        public const string POP_USER_INQUIRY = "사용자 조회;User Inquiry;;;";
        public const string JS_DELETE_DATA = "Data를 삭제 합니다;Delete to data;;;";
        public const string POP_FACTOR_ADMIN = "서비스관리;Factor Admin;;;";
        public const string JS_NO_FACTOR_SID = "서비스 SID값이 없습니다.;There are no Factor SID Value.;;;";
        public const string JS_NO_FACTOR_CODE = "서비스 CODE값이 없습니다.;There are no Factor CODE Value.;;;";
        public const string JS_NO_FACTOR_NAME = "서비스 명 이 없습니다.;There are no Factor Name.;;;";
        public const string JS_CHOOSE_FACTOR_TYPE = "서비스 유형을 선택해 주세요;Choose a type of Factor;;;";
        public const string JS_CHOOSE_BUSINESS_TYPE = "사업 구분을 선택해 주세요;Choose a business type.;;;";
        public const string JS_DELETE_FACTOR = "Factor를 정말로 삭제 합니까?;Are you sure to delete Factor?;;;";
        public const string JS_OBJECT_ADMIN = "객체관리;Object Admin.;;;";
        public const string JS_CANCEL_CHANGES = "변경 내역을 취소하시겠습니다?;Are you sure to cancel changes?;;;";
        public const string JS_DB_CHANGE_LOG = "DB Change Log;DB Change Log;;;";
        public const string JS_CHECK_CLIENT_TYPE = "거래처 구분을 체크해 주십시오;Please check Client type.;;;";
        public const string JS_ADD_BASIC_CLIENT = "기본 거래처를 등록 후 입력 하십시오;Please enter after add basic Client.;;;";
        public const string JS_NOT_SELECT = "선택되지 않았습니다. 다시 조회하세요.;Did not select Category. Please Select again.;;;";
        public const string JS_NO_MOVE_TIME = "이동 일시 정보가 없습니다.;There are no move time information.;;;";
        public const string JS_NO_MOVE_LOCATION = "이동 위치 정보가 없습니다.;There are no move location information.;;;";
        public const string JS_NO_MOVE_QUANTITY = "이동 수량 정보가 없습니다.;There are no move quantity information;;;";
        public const string JS_NO_QUANTITY = "수량이 없습니다.;There are no quantity;;;";
        public const string JS_NO_ULD_NO = "ULD NO가 없습니다.;There are no ULD Number.;;;";
        public const string JS_NO_CONTOUR_CODE = "Contour 코드가 없습니다;There are no Contour Code;;;";
        public const string JS_NO_LOCATION = "Location 코드가 없습니다.;Ther are no Location Code;;;";
        public const string JS_PREOCCESS_COMPLETE = "작업 완료 처리 하시겠습니까?;Are you sure to reocess complete?;;;";
        public const string JS_REGIST_OFFLOAD = "Off Load 등록 하시겠습니까?; Are you regist Off Load?;;;";
        public const string JS_CANCEL = "작업을 취소하시겠습니까?;Are you sure to cancel;;;";


    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_COMM_BANNER.aspx.cs" Inherits="drKidAdmin.Source.admin.community.A_COMM_BANNER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .custom-table-wraper {
             height: auto;
             width: 100%;
             display: grid;
             gap: 40px 0px;
        }
        .custom-sub-warp-title {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            border-bottom: 1px solid #dbdde2;
            padding: 15px 30px;
        }
        .custom-sub-warp-txt {
             font-weight: 500;
        }
        .info_Icon_Area {
            color: #FF441D;
            position: relative;
            top: 3px;
        }
        .info_Icon {
            font-size:18px
        }
        .guide_txt {
            padding: 0px 0px 10px 0px;
        }
        .top_Banner_Info_Area {
            display: flex;
            width: 1050px;
            height: 635px;
            border: 1px solid #E2E2E2;
        }
        .column_1_Area {
            width: 78px;
            text-align: center;
            height: 100%;
        }
        .column_1_Info1 {
            width: 100%;
            height: 45px;
            line-height: 45px;
            border-bottom: 1px solid #E2E2E2;
            border-right: 1px solid #E2E2E2;
            background: #F9F9F9;
        }
        .column_1_Info2 {
            height: calc(100% - 45px);
            display: flex;
            justify-content: center;
            align-items: center;
            line-height: calc(100% - 45px);
            background: #FFFFFF;
            border-right: 1px solid #E2E2E2;
        }
        .column_2_Area {
            height: 100%;
            width: 80%;
            padding: 45px 20px 10px 20px;
        }
        .column_2_Area_2 {
            height: 505px;
            width: 280px;
        }
        .no_img {
            width: 60px;
            height: 60px;
        }
        .img_wrap {
             align-items: center;
        }
        .column_2_Area_1 {
            width: 470px;
            height: 505px;
        }
        .column_2_Area_1_txt1 {
            padding: 5px 0px;
        }
        .column_2_Area_1_txt2 {
            padding: 10px 0px 20px 0px
        }
        .column_2_Area_1_txt3 {
            padding: 0px 0px 10px 0px
        }
        .img_Btn_Area {
            display: flex;
            gap: 0px 15px;
        }
        .img_Btn {
            width: 105px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .column_pc_mobile_area {
            display: flex;
            width: 100%;
            gap: 0px 40px;
        }
        .url_Area {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            padding: 20px 0px 10px 0px;
        }
        .url_txt {
            width: 10%;
        }
        .url_Input_Area {
            width: calc(90% - 24px );
            height: 35px;
        }
        .I_URL {
            width:100%;
            height:100%;
        }
        .column_3_Area {
            width: 20%;
            height: 100%;
            border-left: 1px solid #E2E2E2;
             position: relative;
        }
        .column_3_Area_Layout {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            height: 55%;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        .banner_Add_Btn_Area {
            padding: 20px 0px;
            width: 1050px;
        }
        .banner_Add_Btn {
            width: 315px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-weight: 600;
            background: #F9F9F9;
            margin: 0 auto;
            border: 1px solid #DDDDDD;
            cursor: pointer;
        }
        .banner_Save_Btn_Area {
            border-top: 1px solid #E2E2E2;
            padding: 20px 30px;
            width: 100%;
            min-height: 100px;
        }
        .banner_Save_Btn {
            width: 170px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: var(--drkid_positive);
            color: #ffffff;
            cursor: pointer;
            font-weight: 500;
        }
        .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        .custom-liner-icon-wraper {
            padding-left: 0px;
            border-left:none;
            display: grid;
            gap: 10px 0px;
        }
        .banner_Del_Btn_Area {
            padding: 28px 0px;
        }
        .banner_Del_Btn {
            cursor: pointer;
            width: 91px;
            height: 35px;
            text-align: center;
            line-height: 35px;
            color: #4E4E4E;
            border: 1px solid #E2E2E2;
        }
        .image_for_class {
            object-fit: cover;
        }
        .img_Btn_Active {
            cursor:pointer;
            color:black;
        }
    </style>
    <script>
        let _NowTarget;
        let _NowTarget_Num;
        let $cp_ret_status = `<%=cp_ret_status%>`;
        let $limit = `<%=limit%>`;
        //이미지업로드 관련 시작
        ////////////////////////

        //Text change가 일어날떄 -> Upload 가 일어날떄
        function UpdateUploadButton() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader.Upload();
        }
        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function Uploader_OnFileUploadComplete(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') { // _NowTarget_Num  _NowTarget
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    if(_NowTarget == "pc"){
                        $('#pc_img_wrap_'+_NowTarget_Num).empty();
                        $('#pc_img_wrap_'+_NowTarget_Num).append(html);
                        $('#pc_img_wrap_'+_NowTarget_Num).append(JsonData["imgSrc"]);
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('inactive');
                    }
                    else if(_NowTarget == "mobile"){
                        $('#mobile_img_wrap_'+_NowTarget_Num).empty();
                        $('#mobile_img_wrap_'+_NowTarget_Num).append(html);
                        $('#mobile_img_wrap_'+_NowTarget_Num).append(JsonData["imgSrc"]);
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('inactive');
                    }    
                    _NowTarget = "";
                    _NowTarget_Num = 0;
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        //////////////////////
        //이미지업로드 관련 끝
        

        //템플릿 관련 함수 시작
        ////////////////////////  

        //템플릿 추가 시 시퀀스 순서
        function getNextSeq() {
            let _Seq = 1;
            $('.top_Banner_Info_Area').each(function (index, item) {
                //let _trSeq = $(item).find('input[name="MAIN_SEQ"]').val() * 1;
                let _trSeq = $('[id^=top_Banner_Info_Area_]').length;
                console.log("!!_trSeq :",_trSeq)
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
    
        //템플릿 추가 시 시퀀스 순서
        function getNewSid() {
            let _SID = -1;
            $('.top_Banner_Info_Area').each(function (index, item) {
                let _trSID = $(item).find('input[name="MAIN_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }

        function notDistinctSeq() {
            var maxNumber=0;
            $('[id^="top_Banner_Info_Area_"]').each(function() {
                var id = $(this).attr("id");
                var number = id.replace("top_Banner_Info_Area_", "");
                number = number*1;
                console.log("number: " + number);
                if(maxNumber < number){
                    maxNumber = number;
                }
              
            });
            
            console.log("가장 큰 숫자: " + maxNumber);
            maxNumber++;
            return maxNumber;
        }
     
        //화살표 Move 기능
        function moveTr(gbn, targetSid,type) {
            //let _targetTr = $(`[${type}="${targetSid}"]`);
            let _targetTr = type;
            console.log(_targetTr)
            if (gbn == "UP") {
                _targetTr.prev().before(_targetTr);
                seq_optimization();
            } else {
                _targetTr.next().after(_targetTr);
                seq_optimization();
            }
        }

        //삭제하기 버튼
        function del_template(target){
            //var top_Banner_Info_Area = 0;
            //$("[id^='top_Banner_Info_Area_']").each(function() {
            //    top_Banner_Info_Area++; 
            //});
            //if(top_Banner_Info_Area > 1){
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        //$("#top_Banner_Info_Area_"+target).remove();
                        $(target).parents('.top_Banner_Info_Area').remove();
                        seq_optimization();
                    }, function (error) { _popModal.Alert('', error); });
            //}
            //else{
            //    _popModal.Alert('', '2개 이상부터 삭제가능 합니다.');
            //}

        }

        //템플릿 위 버튼 
        //템플릿 아래 버튼
        function down_arrow(move_dataValue){
            let select_element = $("#top_Banner_Info_Area_"+move_dataValue);
            let all_element  = $(".top_Banner_Info_Area").length;
            console.log("전체 템플릿 수: ",all_element)

            if(all_element < 2){
                _popModal.Alert('', '이동할 순서가 없습니다.');
                return;
            }
            else{
                moveTr('DOWN', '', select_element);
                //seq_optimization();
            }
        }
        function up_arrow(move_dataValue){
            let select_element = $("#top_Banner_Info_Area_"+move_dataValue);
            let all_element  = $(".top_Banner_Info_Area").length;
            console.log("전체 템플릿 수: ",all_element)

            if(all_element < 2){
                _popModal.Alert('', '이동할 순서가 없습니다.');
                return;
            }
            else{
                moveTr('UP', '', select_element);
                //seq_optimization();
            }
        }

        //SEQ 최적화 
        function seq_optimization() {
            //db에 저장되게 될 ORDER_SEQ 컬럼관련 최적화
            var inputs = $("input[name='MAIN_SEQ']");
            inputs.each(function(index, element) {
                element.value = index + 1;
            });
            //사용자에게 보여지는 템플릿 번호 최적화
            var divs = $(".column_1_Info2");
            divs.each(function(index) {
                $(this).text(index + 1); 
            });
        }

        /////////////////////
        //템플릿 관련 함수 끝
      
        $(document).ready(function() {
            $('.banner_Save_Btn').on('click', function () {
                var flag = true;
                //pc, 모바일 이미지 등록 체크
               
                $("[id^='pc_img_wrap_']").each(function() {
                    if($(this).find('*').length < 4)
                    {
                        flag = false;
                    }
                });
                $("[id^='mobile_img_wrap_']").each(function() {
                    if($(this).find('*').length < 4)
                    {
                        flag = false;
                    }
                });
                //저장 후 Web.config의 경로에 저장됬는지 확인하기.
                if(flag){
                    showProgress();
                    $('#flag').val('save');
                    $('#form1').submit();
                }
                else{
                    _popModal.Alert('', '배너 이미지를 모두 등록해주세요.');
               }
                
            });
            
            //배너 추가버튼
            $('.banner_Add_Btn').on('click', function () {
                var _template = $('#TOP_BANNER_TEMPLATE').html();
                var count = $('.top_Banner_Info_Area').length;
                console.log("count",count)
                if(count < $limit){
                    let _sid = getNewSid();
                    let _seq = getNextSeq();
                    let _max = notDistinctSeq();
                    _template = _template.replace(/{SID}/g, _sid);
                    _template = _template.replace(/{SEQ}/g, _seq);
                    _template = _template.replace(/{BSEQ}/g, (_seq-1));
                    _template = _template.replace(/{MAX}/g, _max);
                    //뉴 바인딩 
                    let new_Add_Btn_PC = $(`<div class="img_Btn lowerst-font  pc_img_Btn new_ImgAdd_Btn " data-target="${_max}" data-type="pc">이미지 등록</div>`);
                    let new_Del_Btn_PC = $(`<div class="img_Btn lowerst-font new_ImgDel_Btn inactive" data-target="${_max}" data-type="pc">삭제</div>`);
                    let new_Add_Btn_MOBILE = $(`<div class="img_Btn lowerst-font  pc_img_Btn new_ImgAdd_Btn " data-target="${_max}" data-type="mobile">이미지 등록</div>`);
                    let new_Del_Btn_MOBILE = $(`<div class="img_Btn lowerst-font new_ImgDel_Btn inactive" data-target="${_max}" data-type="mobile">삭제</div>`);
                    var $template = $(_template);

                    $template.find('.img_Btn_Area_PC').append(new_Add_Btn_PC);
                    $template.find('.img_Btn_Area_PC').append(new_Del_Btn_PC);
                    $template.find('.img_Btn_Area_MOBILE').append(new_Add_Btn_MOBILE);
                    $template.find('.img_Btn_Area_MOBILE').append(new_Del_Btn_MOBILE);
                    /////////////////////////
                    //이미지 등록 버튼 바인딩
                    //PC
                    new_Add_Btn_PC.on('click',function(e){
                        console.log("이벤트 바인딩 성공")
                        var NowTarget_Num = $(this).data('target');
                        var NowTarget= $(this).data('type');
                        _NowTarget_Num = NowTarget_Num; 
                        _NowTarget = NowTarget;
                        if(NowTarget == "pc"){
                            if($('#pc_img_wrap_'+(_NowTarget_Num)).find('*').length > 4){
                                _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                            }
                            else{
                                $('#uploader_TextBox0_Input').click();
                            }
                        }
                        else if(_NowTarget == "mobile"){
                            if($('#mobile_img_wrap_'+(_NowTarget_Num)).find('*').length > 4){
                                _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                            }
                            else{
                                $('#uploader_TextBox0_Input').click();
                            }
                        }
                    });
                    new_Add_Btn_MOBILE.on('click',function(e){
                        console.log("이벤트 바인딩 성공")
                        var NowTarget_Num = $(this).data('target');
                        var NowTarget= $(this).data('type');
                        console.log("! !",NowTarget_Num)
                        console.log("! !",NowTarget)
                        _NowTarget_Num = NowTarget_Num; 
                        _NowTarget = NowTarget;
                        if(NowTarget == "pc"){
                            if($('#pc_img_wrap_'+(_NowTarget_Num)).find('*').length > 4){
                                _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                            }
                            else{
                                $('#uploader_TextBox0_Input').click();
                            }
                        }
                        else if(_NowTarget == "mobile"){
                            if($('#mobile_img_wrap_'+(_NowTarget_Num)).find('*').length > 4){
                                _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                            }
                            else{
                                $('#uploader_TextBox0_Input').click();
                            }
                        }
                    });
                    //MOBILE
                    //이미지 삭제 버튼 바인딩 
                    new_Del_Btn_PC.on('click',function(e){
                        var NowTarget_Num = $(this).data('target');
                        var NowTarget= $(this).data('type');
                        console.log(NowTarget_Num);
                        console.log(NowTarget);
                        _NowTarget_Num = NowTarget_Num; 
                        _NowTarget = NowTarget;
                        if(_NowTarget == "pc"){
                            if($('#pc_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                                $("#pc_img_wrap_"+_NowTarget_Num).empty();
                                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                                $("#pc_img_wrap_"+_NowTarget_Num).append(img);
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                                //$(".new_ImgDel_Btn").removeClass('inactive');
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                            }
                            else{
                                console.log("삭제할 요소 없음")
                            }
                        }
                        else if(_NowTarget == "mobile"){
                            if($('#mobile_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                                $("#mobile_img_wrap_"+_NowTarget_Num).empty();
                                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                                $("#mobile_img_wrap_"+_NowTarget_Num).append(img);
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                                //$(".new_ImgDel_Btn").removeClass('inactive');
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                            }
                            else{
                                console.log("삭제할 요소 없음")
                            }
                        }
                    });
                    new_Del_Btn_MOBILE.on('click',function(e){
                        var NowTarget_Num = $(this).data('target');
                        var NowTarget= $(this).data('type');
                        console.log(NowTarget_Num);
                        console.log(NowTarget);
                        _NowTarget_Num = NowTarget_Num; 
                        _NowTarget = NowTarget;
                        if(_NowTarget == "pc"){
                            if($('#pc_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                                $("#pc_img_wrap_"+_NowTarget_Num).empty();
                                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                                $("#pc_img_wrap_"+_NowTarget_Num).append(img);
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                                //$(".new_ImgDel_Btn").removeClass('inactive');
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                            }
                            else{
                                console.log("삭제할 요소 없음")
                            }
                        }
                        else if(_NowTarget == "mobile"){
                            if($('#mobile_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                                $("#mobile_img_wrap_"+_NowTarget_Num).empty();
                                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                                $("#mobile_img_wrap_"+_NowTarget_Num).append(img);
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                                //$(".new_ImgDel_Btn").removeClass('inactive');
                                $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                            }
                            else{
                                console.log("삭제할 요소 없음")
                            }
                        }
                    });
                    //템플릿 추가
                    $('.custom-table-wraper').append($template);
                }
                else{
                    _popModal.Alert('', '최대 ' + $limit + '개까지 생성 가능합니다.');
                }
            });
            //뉴 이미지 등록
            $(".new_ImgAdd_Btn").on('click', function () {
                var NowTarget_Num = $(this).data('target');
                var NowTarget= $(this).data('type');
                console.log(NowTarget_Num);
                console.log(NowTarget);
                _NowTarget_Num = NowTarget_Num; 
                _NowTarget = NowTarget;
                
                if(NowTarget == "pc"){
                    if($('#pc_img_wrap_'+(NowTarget_Num)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader_TextBox0_Input').click();
                    }
                }
                else if(_NowTarget == "mobile"){
                    if($('#mobile_img_wrap_'+(NowTarget_Num)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader_TextBox0_Input').click();
                    }
                }
            });
            // 뉴 이미지 삭제
            $(".new_ImgDel_Btn").on('click', function () {
                var NowTarget_Num = $(this).data('target');
                var NowTarget= $(this).data('type');
                console.log(NowTarget_Num);
                console.log(NowTarget);
                _NowTarget_Num = NowTarget_Num; 
                _NowTarget = NowTarget;
                if(_NowTarget == "pc"){
                    if($('#pc_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                        $("#pc_img_wrap_"+_NowTarget_Num).empty();
                        var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                        $("#pc_img_wrap_"+_NowTarget_Num).append(img);
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                        //$(".new_ImgDel_Btn").removeClass('inactive');
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                    }
                    else{
                        console.log("삭제할 요소 없음")
                    }
                }
                else if(_NowTarget == "mobile"){
                    if($('#mobile_img_wrap_'+_NowTarget_Num).find('*').length > 4){
                        $("#mobile_img_wrap_"+_NowTarget_Num).empty();
                        var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                        $("#mobile_img_wrap_"+_NowTarget_Num).append(img);
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).removeClass('img_Btn_Active');
                        //$(".new_ImgDel_Btn").removeClass('inactive');
                        $(`.new_ImgDel_Btn[data-target="${_NowTarget_Num}"][data-type="${_NowTarget}"]`).addClass('inactive');
                    }
                    else{
                        console.log("삭제할 요소 없음")
                    }
                }
            });
  
            //저장되었으면 안내
            var save_flag = '<%=save_flag%>';
            console.log("save_flag:",save_flag)
            if (save_flag == "Y") {
                _popModal.Alert('', '배너등록이 완료되었습니다.');
            }
            if($cp_ret_status == "N"){
                hideProgress();
            }

   
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title custom-sub-warp-title">
            <div><span class="middle-font custom-sub-warp-txt "><%=pageAuth.nowtitle %></span></div>
            <div class="info_Icon_Area"><span class="material-icons-outlined info_Icon">info</span></div>
        </div>
        <div class="sub-content-wrap">
            <div class="guide_txt lowerst-font mono_sub_color">- 배너 순서로 슬라이드가 적용됩니다.</div>
            <div class="guide_txt lowerst-font mono_sub_color">- 커뮤니티 배너는 <%=limit%>장까지 등록가능합니다.</div>
            <div class="custom-table-wraper">
                <%if (mainTable != null && mainTable.Rows.Count > 0)
                {%>
                     <%for (int i = 0; i < mainTable.Rows.Count; i++)
                    { %>
                        <%--개별 폼--%>
                        <div class="top_Banner_Info_Area" id="top_Banner_Info_Area_<%=i%>">
                        <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                        <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["ORDER_SEQ"] %>" />
                            <%--순서--%>
                            <div class="column_1_Area">
                                <div class="column_1_Info1 lower-font">순서</div>
                                <div class="column_1_Info2 lowerst-font" data-value="<%=mainTable.Rows[i]["ORDER_SEQ"] %>"><%=mainTable.Rows[i]["ORDER_SEQ"] %></div>
                            </div>

                            <%--pc,mobile 이미지, url 정보 등록--%>
                            <div class="column_2_Area">
                                 <%if (bannerTable != null)
                                {%> 
                                <div class="column_pc_mobile_area">
                                <%for (int j = 0; j < bannerTable.Rows.Count; j++)
                                { %>
                                    <%if (bannerTable.Rows[j]["BANNER_TYPE"].ToString() == "WEB" && mainTable.Rows[i]["MAIN_SID"].ToString() == bannerTable.Rows[j]["PARENT_SID"].ToString())
                                    { %>  
                                    <%--pc--%>
                                    <div class="column_2_Area_1">
                                    <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[j]["BANNER_SID"]%>" />
                                    <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[j]["PARENT_SID"]%>" />
                                    <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[j]["BANNER_TYPE"]%>" />
                                        <div class="column_2_Area_1_txt1">PC</div>
                                        <div class="img_wrap_200 img_wrap"id="pc_img_wrap_<%=i%>" style="width: 470px; height: 155px;">
                                            <%--<img src="/Source/image/no_img.svg" class="no_img"/>--%>
                                            <input type='hidden' name='image_upload_byte' value=''/>
                                            <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[j]["SOURCE_FILE_NAME"] %>'/>
                                            <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[j]["EXT"] %>'/>
                                            <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[j]["EDM_SID"] %>'/>
                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[j]["TARGET_READ_PATH"] %>'/>
                                        </div>
                                        <%}%>
                                 <%}%>
                                        <div class="column_2_Area_1_txt2">
                                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 2560,세로 850 px</span>)오차범위 200</div>
                                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                        </div>
                                        <div class="column_2_Area_1_txt3">
                                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                        </div>
                                        <div class="img_Btn_Area">
                                           <%-- <div class="img_Btn pc_img_Btn lowerst-font" onclick="upload_pc_test(1);">이미지 등록</div>
                                            <div class="img_Btn lowerst-font inactive"  id="del_pc_btn_0" onclick="del_pc_test(0);">삭제</div>--%>
                                             <div class="img_Btn lowerst-font  pc_img_Btn new_ImgAdd_Btn " data-target="<%=i%>" data-type="pc">이미지 등록</div>
                                            <div class="img_Btn lowerst-font new_ImgDel_Btn inactive" data-target="<%=i%>" data-type="pc">삭제</div>
                                        </div>
                                    </div>
                                  <%for (int z = 0; z < bannerTable.Rows.Count; z++)
                                    {%>  
                                    <% if (bannerTable.Rows[z]["BANNER_TYPE"].ToString() == "MOBILE" && mainTable.Rows[i]["MAIN_SID"].ToString() == bannerTable.Rows[z]["PARENT_SID"].ToString())
                                    { %>

                                    <%--모바일--%>
                                    <div class="column_2_Area_2">
                                    <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[z]["BANNER_SID"]%>" />
                                    <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[z]["PARENT_SID"]%>" />
                                    <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[z]["BANNER_TYPE"]%>" />
                                         <div class="column_2_Area_1_txt1">모바일</div>
                                        <div class="img_wrap_200 img_wrap"id="mobile_img_wrap_<%=i%>" style="width: 270px; height: 310px;">
                                           <%-- <img src="/Source/image/no_img.svg" class="no_img"/>--%>
                                            <input type='hidden' name='image_upload_byte' value=''/>
                                                <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[z]["SOURCE_FILE_NAME"] %>'/>
                                                <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[z]["EXT"] %>'/>
                                                <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[z]["EDM_SID"] %>'/>
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[z]["TARGET_READ_PATH"] %>'/>
                                        </div>
                                        <%}%>  
                                    <%}%> 
                                        <div class="column_2_Area_1_txt2">
                                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 700,세로 800 px</span>)오차범위 200</div>
                                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                        </div>
                                        <div class="column_2_Area_1_txt3">
                                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                        </div>
                                        <div class="img_Btn_Area">
                                            <div class="img_Btn mobile_img_Btn lowerst-font new_ImgAdd_Btn"data-target="<%=i%>" data-type="mobile">이미지 등록</div>
                                            <div class="img_Btn lowerst-font inactive new_ImgDel_Btn" data-target="<%=i%>" data-type="mobile">삭제</div>
                                        </div>
                                    </div>
                                </div>
                                <%--배너 URL--%>
                                <div class="url_Area">
                                    <div class="url_txt">
                                        <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                                    </div>
                                    <div class="url_Input_Area">
                                        <input type="text" class="drkid-input lowerst-font I_URL"  name="I_URL" value="<%=mainTable.Rows[i]["URL"]%>" />
                                    </div>
                                </div>

                            </div>
                            <%--순서ui, 삭제버튼--%>
                            <div class="column_3_Area">
                                <div class="column_3_Area_Layout">
                                    <div class="liner-icon-wraper custom-liner-icon-wraper">
                                        <span class="drkid-icon arrow-big up-arrow"  onclick="up_arrow(<%=i%>)"></span>
                                        <span class="drkid-icon arrow-big down-arrow" onclick="down_arrow(<%=i%>);"></span>
                                    </div>
                                    <div class="banner_Del_Btn_Area">
                                        <div class="banner_Del_Btn" onclick="del_template(this);">삭제하기</div>
                                    </div>
                                </div>
                       
                            </div>
                        </div>
                        <%}%>
                      <%}%>
                <%}%>
                <%else
                {%>
                    <%--개별 폼--%>
                    <div class="top_Banner_Info_Area" id="top_Banner_Info_Area_0">
                    <input type="hidden" name="MAIN_SID" value="-1" />
                    <input type="hidden" name="MAIN_SEQ" value="1" />
                        <%--순서--%>
                        <div class="column_1_Area">
                            <div class="column_1_Info1 lower-font">순서</div>
                            <div class="column_1_Info2 lowerst-font" data-value="1">1</div>
                        </div>
                        <%--pc,mobile 이미지, url 정보 등록--%>
                        <div class="column_2_Area">
                            <div class="column_pc_mobile_area">
                                <%--pc--%>
                                <div class="column_2_Area_1">
                                <input type="hidden" name="BANNER_SID" value="-1" />
                                <input type="hidden" name="PARENT_SID" value="-1" />
                                <input type="hidden" name="BANNER_TYPE" value="WEB" />
                                    <div class="column_2_Area_1_txt1">PC</div>
                                    <div class="img_wrap_200 img_wrap"id="pc_img_wrap_0" style="width: 470px; height: 155px;">
                                        <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img_1"/>
                                    </div>
                                    <div class="column_2_Area_1_txt2">
                                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 2560,세로 850 px</span>)오차범위 200</div>
                                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                    </div>
                                    <div class="column_2_Area_1_txt3">
                                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                    </div>
                                    <div class="img_Btn_Area">
                                         <div class="img_Btn lowerst-font  pc_img_Btn new_ImgAdd_Btn " data-target="0" data-type="pc">이미지 등록</div>
                                        <div class="img_Btn lowerst-font new_ImgDel_Btn inactive" data-target="0" data-type="pc">삭제</div>
                                    </div>
                                </div>
                                <%--모바일--%>
                                <div class="column_2_Area_2">
                                <input type="hidden" name="BANNER_SID" value="-1" />
                                <input type="hidden" name="PARENT_SID" value="-1" />
                                <input type="hidden" name="BANNER_TYPE" value="MOBILE" />
                                     <div class="column_2_Area_1_txt1">모바일</div>
                                    <div class="img_wrap_200 img_wrap"id="mobile_img_wrap_0" style="width: 270px; height: 310px;">
                                        <img src="/Source/image/no_img.svg" class="no_img" id="mobile_no_img_1" />
                                    </div>
                                    <div class="column_2_Area_1_txt2">
                                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 700,세로 800 px</span>)오차범위 200</div>
                                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                    </div>
                                    <div class="column_2_Area_1_txt3">
                                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                    </div>
                                    <div class="img_Btn_Area">
                                        <div class="img_Btn mobile_img_Btn lowerst-font new_ImgAdd_Btn"data-target="0" data-type="mobile">이미지 등록</div>
                                        <div class="img_Btn lowerst-font inactive new_ImgDel_Btn" data-target="0" data-type="mobile">삭제</div>
                                    </div>
                                </div>
                            </div>
                            <%--배너 URL--%>
                            <div class="url_Area">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font I_URL"  name="I_URL" value="" />
                                </div>
                            </div>

                        </div>
                        <%--순서ui, 삭제버튼--%>
                        <div class="column_3_Area">
                            <div class="column_3_Area_Layout">
                                <div class="liner-icon-wraper custom-liner-icon-wraper">
                                    <span class="drkid-icon arrow-big up-arrow"  onclick="up_arrow(0)"></span>
                                    <span class="drkid-icon arrow-big down-arrow"  onclick="down_arrow(0);"></span>
                                </div>
                                <div class="banner_Del_Btn_Area">
                                    <div class="banner_Del_Btn" id="banner_Del_Btn_1" data-value="1" onclick="del_template(this);">삭제하기</div>
                                </div>
                            </div>
                       
                        </div>
                    </div>
                <%}%>
            </div>
            <%--배너 추가하기 버튼--%>
            <div class="banner_Add_Btn_Area">
                <div class="banner_Add_Btn middle-font main_color">+ 배너 추가하기</div>
            </div>
        </div>
        <%--적용하기 버튼--%>
        <div class="banner_Save_Btn_Area">
            <div class="banner_Save_Btn middle-font">적용하기</div>
        </div>
    </div>

     <%--템플릿--%>
    <script type="text/html" id="TOP_BANNER_TEMPLATE">
        <div class="top_Banner_Info_Area" id="top_Banner_Info_Area_{SEQ}">
        <input type="hidden" name="MAIN_SID" value="{SID}"/>
        <input type="hidden" name="MAIN_SEQ" value="{SEQ}"/>
            <%--순서--%>
            <div class="column_1_Area">
                <div class="column_1_Info1 lower-font">순서</div>
                <div class="column_1_Info2 lowerst-font">{SEQ}</div>
            </div>

            <%--pc,mobile 이미지, url 정보 등록--%>
            <div class="column_2_Area">
                <div class="column_pc_mobile_area">
                    <%--pc--%>
                    <div class="column_2_Area_1">
                    <input type="hidden" name="BANNER_SID" value="{SID}" />
                    <input type="hidden" name="PARENT_SID" value="{SID}" />
                    <input type="hidden" name="BANNER_TYPE" value="WEB" />
                        <div class="column_2_Area_1_txt1">PC</div>
                        <div class="img_wrap_200 img_wrap"id="pc_img_wrap_{MAX}" style="width: 470px; height: 155px;">
                            <img src="/Source/image/no_img.svg" class="no_img"/>
                        </div>
                        <div class="column_2_Area_1_txt2">
                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 2560,세로 850 px</span>)오차범위 200</div>
                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                        </div>
                        <div class="column_2_Area_1_txt3">
                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                        </div>
                        <div class="img_Btn_Area img_Btn_Area_PC">
                        </div>
                    </div>
                    <%--모바일--%>
                    <div class="column_2_Area_2">
                    <input type="hidden" name="BANNER_SID" value="{SID}" />
                    <input type="hidden" name="PARENT_SID" value="{SID}" />
                    <input type="hidden" name="BANNER_TYPE" value="MOBILE" />
                        <div class="column_2_Area_1_txt1">모바일</div>
                        <div class="img_wrap_200 img_wrap"id="mobile_img_wrap_{MAX}" style="width: 270px; height: 310px;">
                            <img src="/Source/image/no_img.svg" class="no_img"/>
                        </div>
                        <div class="column_2_Area_1_txt2">
                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 700,세로 800 px</span>)오차범위 200</div>
                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                        </div>
                        <div class="column_2_Area_1_txt3">
                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                        </div>
                        <div class="img_Btn_Area img_Btn_Area_MOBILE">
                        </div>
                    </div>
                </div>
                <%--배너 URL--%>
                <div class="url_Area">
                    <div class="url_txt">
                        <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                    </div>
                    <div class="url_Input_Area">
                        <input type="text" class="drkid-input lowerst-font I_URL" name="I_URL" value="" />
                    </div>
                </div>

            </div>
            <%--순서ui, 삭제버튼--%>
            <div class="column_3_Area">
                <div class="column_3_Area_Layout">
                    <div class="liner-icon-wraper custom-liner-icon-wraper">
                        <span class="drkid-icon arrow-big up-arrow"  onclick="up_arrow({SEQ})"></span>
                        <span class="drkid-icon arrow-big down-arrow"  onclick="down_arrow({SEQ});"></span>
                    </div>
                    <div class="banner_Del_Btn_Area">
                        <div class="banner_Del_Btn" id="banner_Del_Btn_{SEQ}" data-value="{SEQ}" onclick="del_template(this);">삭제하기</div>
                    </div>
                </div>

            </div>
        </div>
     </script>

    <div style="width: 90%; display: none;">
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader" runat="server" ClientInstanceName="uploader" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e); }"
                TextChanged="function(s, e) { UpdateUploadButton(); }" />
            <ValidationSettings MaxFileSize="2048000" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader.Upload(); }" />
        </dx:ASPxButton>
    </div>
</asp:Content>

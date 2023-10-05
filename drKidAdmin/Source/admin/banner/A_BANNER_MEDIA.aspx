﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BANNER_MEDIA.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_BANNER_MEDIA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*배너공용*/
        .custom-table-wraper {
             height: auto;
             width: 100%;
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
        .no_img {
            width: 60px;
            height: 60px;
        }
        .img_wrap {
             align-items: center;
        }
        .banner_Add_Btn_Area {
            display:flex;
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
            /*margin: 0 auto;*/
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
            background:  var(--drkid_positive);
            color: #ffffff;
            cursor: pointer;
            font-weight: 500;
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
        .Banner_Info_Area {
            /*display: flex;*/
            width: 1050px;
            /*height: 635px;*/
        }
        .INPUT {
            width:100%;
            height:100%;
        }
        .url_Area {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            padding: 10px 0px 10px 0px;
        }
        .url_txt {
            width: 10%;
        }
        .url_Input_Area {
            width: 100%;
            height: 35px;
        }
         .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        /*배너공용 끝*/

        /*미디어배너*/
        .medai_guide_txt_Area {
            padding: 0px 0px 10px 0px;
        }
        .medai_guide_txt {
            padding:0px;
        }
        .media_Guide_Area {
            width: 100%;
            display: flex;
            padding: 30px 0px 0px 0px;
        }
        .empty_Space {
            width:10%;
        }
        .media_Guide_Wrap {
            width:90%;
        }
       
    </style>

    <script>
        //템플릿 관련 함수 시작
        ////////////////////////  

        //템플릿 추가 시 시퀀스 순서
        function getNextSeq() {
            let _Seq = 1;
            $('.url_Area').each(function (index, item) {
                let _trSeq = $(item).find('input[name="MAIN_SEQ"]').val() * 1;
                console.log("_trSeq :", _trSeq)
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
        //템플릿 추가 시 시퀀스 순서
        function getNewSid() {
            let _SID = -1;
            $('.url_Area').each(function (index, item) {
                let _trSID = $(item).find('input[name="MAIN_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }
        $(document).ready(function () {
            //배너 추가버튼
            $('.banner_Add_Btn').on('click', function () {
                var _template = $('#BANNER_TEMPLATE').html();
                var count = $('.url_Area').length;
                if (count <= 4) {
                    let _sid = getNewSid();
                    let _seq = getNextSeq();

                    _template = _template.replace(/{SID}/g, _sid);
                    _template = _template.replace(/{SEQ}/g, _seq);
                    //$('.custom-table-wraper').append(_template);
                    $('.banner_add_area').append(_template);

                }
                else {
                    _popModal.Alert('', '최대 5개까지 생성가능합니다.');
                }
            });

            $('.banner_Save_Btn').on('click', function () {
                var isEmptyValue = false;
                $('input[name="I_URL"]').each(function () {
                    var value = $(this).val();
                    if (value === '') {
                        _popModal.Alert('', 'URL 정보를 모두 입력해주세요.');
                        isEmptyValue = true;
                        return false;
                    }
                });
                if (isEmptyValue) {
                    return false;
                }
                $('#flag').val('save');
                $('#form1').submit();
            });

            //저장되었으면 안내
            var save_flag = '<%=save_flag%>';
            console.log("save_flag:", save_flag)
            if (save_flag == "Y") {
                _popModal.Alert('', '배너등록이 완료되었습니다.');
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
            <div class="custom-table-wraper">
                <div class="medai_guide_txt_Area">
                    <div class="guide_txt medai_guide_txt lowerst-font mono_sub_color">- 슬라이드 적용이 없는 단일배너입니다.</div>
                    <div class="guide_txt medai_guide_txt lowerst-font mono_sub_color">- 배너 순서로 슬라이드가 적용됩니다.</div>
                    <div class="guide_txt medai_guide_txt lowerst-font mono_sub_color">- 미디어 배너는 최소3개 최대5개까지 등록가능합니다.</div>
                </div>
                
                <%-- 폼--%>
                <div class="Banner_Info_Area">

                    <%--미디어배너 등록 안내 텍스트--%>
                    <div class="media_Guide_Area">
                        <div class="empty_Space"></div>
                        <div class="media_Guide_Wrap">
                            <div class="media_Guide lowerst-font drkid_Negative_color">*배너 등록을 원하는 유튜브 URL을 입력해주세요.</div>
                            <div class="media_Guide lowerst-font drkid_Negative_color">*최소 3개의 URL을 입력해주세요.</div>
                        </div>
                    </div>

                    <%--배너 URL--%>
                     <%if (mainTable.Rows.Count > 0)
                     {%>
                         <%for (int i = 0; i < mainTable.Rows.Count; i++)
                        { %>
                            <div class="url_Area">
                            <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                            <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["ORDER_SEQ"] %>" />
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 URL</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="<%=mainTable.Rows[i]["URL"]%>" />
                                </div>
                            </div>
                        <%}%>
                    <%}%>

                     <%else
                  {%>
                    <div class="url_Area">
                    <input type="hidden" name="MAIN_SID" value="-1" />
                    <input type="hidden" name="MAIN_SEQ" value="1" />
                        <div class="url_txt">
                            <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 URL</div>
                        </div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
                        </div>
                    </div>
                    <div class="url_Area">
                     <input type="hidden" name="MAIN_SID" value="-2" />
                    <input type="hidden" name="MAIN_SEQ" value="2" />
                        <div class="url_txt">
                            <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 URL</div>
                        </div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
                        </div>
                    </div>
                    <div class="url_Area">
                    <input type="hidden" name="MAIN_SID" value="-3" />
                    <input type="hidden" name="MAIN_SEQ" value="3" />
                        <div class="url_txt">
                            <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 URL</div>
                        </div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
                        </div>
                    </div>
                    <%}%>

                    <div class="banner_add_area"></div>
                    <%--배너 추가하기 버튼--%>
                    <div class="banner_Add_Btn_Area">
                        <div class="empty_Space"></div>
                        <div class="banner_Add_Btn middle-font main_color">+ 배너 추가하기</div>
                    </div>
                </div>

            </div>
            <%--적용하기 버튼--%>
            <div class="banner_Save_Btn_Area">
                <div class="banner_Save_Btn middle-font">적용하기</div>
            </div>
        </div>
    </div>


    <%--템플릿--%>
    <script type="text/html" id="BANNER_TEMPLATE">
        <div class="url_Area">
        <input type="hidden" name="MAIN_SID" value="{SID}" />
        <input type="hidden" name="MAIN_SEQ" value="{SEQ}" />
            <div class="url_txt">
                <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 URL</div>
            </div>
            <div class="url_Input_Area">
                <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
            </div>
        </div>
    </script>
</asp:Content>

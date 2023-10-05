<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BANNER_BELT.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_BANNER_BELT" %>
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
            /*display: flex;
            align-items: center;
            gap: 0px 10px;*/
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

        /*띠배너*/
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
         .belt_Row {
            display: flex;
            padding: 15px 0px;
            width: 100%;
            align-items: center;
         }
         .color_Input {
            width:160px;
         }
         input.spectrum.with-add-on {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
            border-left: 0;
            height: 35px;
        }
       
    </style>
      <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/spectrum-colorpicker2/dist/spectrum.min.css">
      <script src="https://cdn.jsdelivr.net/npm/spectrum-colorpicker2"></script>

    <script>
        $(document).ready(function () {
            $("#color-picker").spectrum({
                preferredFormat: "hex",
                showInput: true,
                showAlpha: false,
                chooseText: "Select",
                cancelText: "Cancel",
                showPalette: true,
                palette: [
                  "#262626",   // 디폴트
                  "#FF0000",
                  "#00FF00",
                  "#0000FF"
                ]

            });

            $('.banner_Save_Btn').on('click', function () {
                var isEmptyValue = false;

                var title_Value = $('[name="I_TITLE"]').val();
                var color_Value = $('[name="I_SUBTITLE"]').val();

                if (title_Value.trim() === "" || title_Value.trim() === null) {
                    _popModal.Alert('', '배너 내용을 입력해주세요.');
                    isEmptyValue = true;
                }
                if (color_Value.trim() === "" || color_Value.trim() === null) {
                    _popModal.Alert('', '배경을 설정해주세요.');
                    isEmptyValue = true;
                }
                //배너 내용이나 배경색 지정하지 않으면 저장하지 않음
                if (isEmptyValue) {
                    return false;
                }
                console.log("저장")
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

                </div>
                
                <%-- 폼--%>
                <div class="Banner_Info_Area">

                    <%--미디어배너 등록 안내 텍스트--%>
                    <div class="media_Guide_Area">
                        <div class="empty_Space"></div>
                    </div>

                     <%if (mainTable.Rows.Count > 0)
                     {%>
                         <%for (int i = 0; i < mainTable.Rows.Count; i++)
                        { %>
                    
                        <div class="url_Area">
                        <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                        <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["ORDER_SEQ"] %>" />
                            <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 내용</div>
                                </div>
                        
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT"  name="I_TITLE" value="<%=mainTable.Rows[i]["TITLE"] %>" />
                                </div>
                            </div>
                            <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배경</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT color_Input"  name="I_SUBTITLE" value="<%=mainTable.Rows[i]["BODY"] %>" id="color-picker"/>
                                </div>
                            </div>

                             <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="<%=mainTable.Rows[i]["URL"] %>" />
                                </div>
                             </div>
                        </div>
                    <%}%>
                 <%}%>
                     <%else
                    {%>
                        <div class="url_Area">
                        <input type="hidden" name="MAIN_SID" value="-1" />
                        <input type="hidden" name="MAIN_SEQ" value="1" />
                            <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배너 내용</div>
                                </div>
                        
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT"  name="I_TITLE" value="" />
                                </div>
                            </div>
                            <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">*&nbsp</span>배경</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT color_Input"  name="I_SUBTITLE" value="#262626" id="color-picker"/>
                                </div>
                            </div>

                             <div class="belt_Row">
                                <div class="url_txt">
                                    <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                                </div>
                                <div class="url_Input_Area">
                                    <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
                                </div>
                             </div>
                        </div>
                     <%}%>

                </div>

            </div>
            <%--적용하기 버튼--%>
            <div class="banner_Save_Btn_Area">
                <div class="banner_Save_Btn middle-font">적용하기</div>
            </div>
        </div>
    </div>



</asp:Content>

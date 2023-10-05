<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_PRODUCT_TEMPLATE.aspx.cs" Inherits="drKidAdmin.Source.admin.product.A_PRODUCT_TEMPLATE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
      
        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .template_Type_Ui {
            display: flex;
            padding: 15px 30px;
            gap: 0px 30px;
        }
        .delivery_Tem_Area {
            cursor:pointer;
        }
        .exchange_Tem_Area {
            cursor:pointer;
        }
        .choice {
            background:#F4FAFF;
        }
        .active {
            border-bottom: 2px solid var(--main_color);
            color: var(--main_color);
        }
     
        .font_weight_500 {
            font-weight:500;
        }
        .delivery_Tem_Area:hover {
            border-bottom: 2px solid var(--main_color);
            color: var(--main_color);
        }
        .exchange_Tem_Area:hover {
            border-bottom: 2px solid var(--main_color);
            color: var(--main_color);
        }
        .edit_Btn {
            font-size: 12px;
            width: 40%;
            min-width: 46px;
            height: 28px;       
            text-align: center;
            margin: 0 auto;
            line-height: 28px;
            cursor: pointer;
        }

    </style>

        
    <script>
        var template_type = '<%=template_type%>';
        var del_sid_list = [];//삭제할 여러 sid들을 담는 배열
        var del_flag = '<%=del_flag%>';
        //체크박스 Tr Active 처리.
        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            console.log(_tr)
            if ($(target).is(':checked')) {
                _tr.addClass('choice');
                console.log("추가")
            } else {
                _tr.removeClass('choice');
                console.log("삭제")
            }
        }
        // 체크박스 전체선택 
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                    checkBoxActive(item);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                    checkBoxActive(item);
                });
            }
        }

        $(function () {
            if (del_flag == "Y") {
                _popModal.Alert('알림', '삭제되었습니다.');
            }

            if (template_type == "DELIVERY") {
                $(".delivery_Tem_Area ").removeClass('active');
                $(".exchange_Tem_Area ").removeClass('active');
                $(".delivery_Tem_Area ").addClass('active');
            }
            else {
                $(".delivery_Tem_Area ").removeClass('active');
                $(".exchange_Tem_Area ").removeClass('active');
                $(".exchange_Tem_Area ").addClass('active');
            }

            //배송안내 템플릿 관리 클릭
            $('.delivery_Tem_Area').on('click', function (e) {
                $('[name="search_btn_click_flag"]').val('Y');
                $('#flag').val('TEM_DELIVERY');
                $('#form1').submit();
            });
            //교환 및 반품안내 템플릿 관리
            $('.exchange_Tem_Area').on('click', function (e) {
                $('[name="search_btn_click_flag"]').val('Y');
                $('#flag').val('TEM_EXCHANGE');
                $('#form1').submit();
            });


            //전체 선택
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //체크박스 클릭 시 해당 레코드 css 
            $('input[type="checkbox"][name="LIST_CHECK_BOX"]').on('click', function () {
                checkBoxActive(this);
            });
            //선택 삭제
            $("#big-delete-btn").on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="LIST_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나 이상의 메뉴를 선택해주세요.');
                    return;
                }
                del_sid_list = [];
                _popModal.Promt('', '삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            //사용자 눈에 제거만 함
                            //let _ui_del = $(item).val(); //새로만든거 -1, -2
                            //$(`[data-sub-tr="${_ui_del}"]`).remove(); // data-big-tr -> big-tbody
                            //db부분
                            var parentDataValue = $(this).parent().parent().data('value');
                            del_sid_list.push(parentDataValue);
                            //체크되어 있는 sid값들을 , 로 구분해 #delete-sid 인풋요소에 저장
                            var valueString = del_sid_list.join(',');
                            $("#delete_sid").val(valueString);

                        });
                        console.log("delete_sid 값", $("#delete_sid").val())
                        $('#flag').val('del');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });
            });

            //새 템플릿 등록 버튼
            $("#create-template").on('click', function () {
                var queryString = "?template_type=" + template_type;
                openMenuPath("/Source/admin/product/A_PRODUCT_TEMEDIT.aspx", queryString, true);

            });
            //수정 버튼
            $(".edit_Btn").click(function () {
                var sid = $(this).attr('id');
                var queryString = "?template_type=" +template_type+ "&request_sid=" + sid;
                openMenuPath("/Source/admin/product/A_PRODUCT_TEMEDIT.aspx", queryString, true);
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
          <input type="text" name="flag" id="flag" value="" />
          <input type="text" name="DELETE_SID" id="delete_sid" value="" />
          <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 조회</span>
        </div>
        <%--자주묻는 질문 관리 컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <%--카테고리,검색어 영역--%>
            <div class="sub-content-select-ui-area">
                 <div class="sub-content-select-ui">
                    <div class="template_Type_Ui">
                        <div class="delivery_Tem_Area">
                            <span class="lowerst-font font_weight_500 ">배송안내 템플릿 관리</span>
                        </div>
                        <div class="exchange_Tem_Area">
                            <span class="lowerst-font font_weight_500">교환 및 반품안내 템플릿 관리</span>
                        </div>
                    </div>
                    
                 </div>
            </div>
         
         
        </div>
    </div>

        <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 목록</span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="drkid-btn search-btn" id="big-delete-btn">
                    <span class="lower-font">선택 삭제</span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="create-template">
                        <span class="lowerst-font">새 템플릿 등록</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px;"/>
                        <col style="width:8%;"/>
                        <col style="width:10%;"/>
                        <col style="width:62%;"/>
                        <col style="width:20%;"/>
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-big" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">수정</th>
                            <th class="lower-font">NO.</th>
                            <th class="lower-font">템플릿 명</th>
                            <th class="lower-font">등록일</th>
                 
                        </tr>
                    </thead>
                <tbody id="big-tbody">
                    <% if (TEMPLATE_LIST != null)
                    { %>
                        <%for (int i = 0; i < TEMPLATE_LIST.Rows.Count; i++)
                        { %>
                           <tr data-sub-tr="<%=i%>">
                                <td class="lower-font"data-value="<%=TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>">
                                    <label class="drkid-checkbox list_checkbox_area">
                                        <input type="checkbox" value="<%=i%>" name="LIST_CHECK_BOX"/>
                                        <span class="fake-check-box"></span>
                                    </label>
                                </td>
                                <td class="lower-font">
                                    <div class="drkid-btn-active edit_Btn" id="<%=TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>">수정</div>
                                </td>
                                <td><%=totalCount - offset - i %></td>
                                <td><%=TEMPLATE_LIST.Rows[i]["TEMPLATE_TITLE"] %></td>
                                <td><%=((DateTime)TEMPLATE_LIST.Rows[i]["CREATED_TIME"]).ToString("yyyy.MM.dd") %></td>
                            </tr>
                     <%}%>
                   <%}%>


                </tbody>  
                </table>
            </div>
    
        </div>
    </div>
    <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_PRODUCT_REVIEW.aspx.cs" Inherits="drKid.Source.client.member.ajax.C_PRODUCT_REVIEW" %>
<%--<script>
    $(document).ready(function () {
        let innerMoreFlag = $(html).find('#more_btn_flag').val();
        console.log("innerMoreFlag:", innerMoreFlag)
        console.log("type innerMoreFlag:", typeof (innerMoreFlag))
        if (innerMoreFlag == "N") {
            console.log("탐")
            $('.more_btn_area').hide();
        }
        else if (innerMoreFlag == "Y") {
            $('.more_btn_area').css("display", "block");
        }
    });
</script>--%>
<div class="hidden_more" style="display:none;">
    <input type="text" id="more_btn_flag" name="more_btn_flag" value="<%=more_btn_flag%>" />
    <input type="text" id="totalCount" name="totalCount" value="<%=totalCount%>" />
</div>

<%if (REVIEW_TABLE != null)
{%>
        <%for (int i = 0; i < REVIEW_TABLE.Rows.Count; i++)
        {%>
            <div class="total_review_bottom" onclick="modalData_ClearAndSetting(this);">
                <div class="hidden_Review_Field">
                    <%--이미지--%>
                    <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMG"] %>" />
                    <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                    <%--상품--%>
                    <input type="hidden" name="H_PRODUCT_NM" value="<%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                    <input type="hidden" name="H_CATEGORY_NAME" value="<%=CATEGORY_NAME%>" />
                    <%--리뷰--%>
                    <input type="hidden" name="H_POST_USER_ID" value="<%=REVIEW_TABLE.Rows[i]["NAME_CLOSE1"] %>" />
                    <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                    <input type="hidden" name="H_REVIEW_TITLE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                    <input type="hidden" name="H_REVIEW_BODY" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                    <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
                </div>
                                                             
                <%--리뷰 content--%>
                <div class="total_review_bottom_content">
                    <div class="total_review_bottom_content_txt">
                        <div class="content_star">
                        <%for (int j = 0; j < Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                        {%>
                            <div class="star_img">
                                <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                            </div>
                        <%}%>
                    </div>
                        <%if (REVIEW_TABLE.Rows[i]["BEST_FLAG"].ToString() == "Y")
                        { %>
                            <div class="lowerst-font best_Flag">BEST</div>
                    <%}%> 
                        <div class="txt txt_padding txt_small_font">
                            <span><%=REVIEW_TABLE.Rows[i]["NAME_CLOSE1"]%>님의 리뷰입니다.</span>
                        </div>
                        <div class="txt txt_small_font">
                            <span><%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></span>
                        </div>
                    </div>
                    <div class="total_review_bottom_content_img">
                        <div class="total_review_bottom_content_img_txt">
                            <p class="txt_weight">
                                <%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%>
                            </p>
                        </div>
                        <div class="total_review_bottom_content_img_txt txt_padding">
                            <p class="txt_small_font">
                            <%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                            </p>
                        </div>
                    </div>
                </div>                                   
            </div>
        <%}%>
<%}%>
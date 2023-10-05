<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_PRODUCT_BESTREVIEW.aspx.cs" Inherits="drKid.Source.client.member.ajax.C_PRODUCT_BESTREVIEW" %>

<div class="hidden_more" style="display:none;">
    <input type="text" id="more_btn_flag" name="more_btn_flag" value="<%=more_btn_flag%>" />
    <input type="text" id="totalCount" name="totalCount" value="<%=totalCount%>" />
</div>

<%if (BEST_REVIEW_TABLE != null)
{%>
<%if (BEST_REVIEW_TABLE.Rows.Count > 0)
    {%>
    <%for (int i = 0; i < BEST_REVIEW_TABLE.Rows.Count; i++)
    {%>
            <div class="review_product_content" onclick="modalData_ClearAndSetting(this);">
                <div class="hidden_Review_Field">
                <%--이미지--%>
                <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMG"] %>" />
                <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                <%--상품--%>
                <input type="hidden" name="H_PRODUCT_NM" value="<%=BEST_REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                <input type="hidden" name="H_CATEGORY_NAME" value="<%=CATEGORY_NAME %>" />
                <%--리뷰--%>
                <input type="hidden" name="H_POST_USER_ID" value="<%=BEST_REVIEW_TABLE.Rows[i]["NAME_CLOSE1"] %>" />
                <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(BEST_REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                <input type="hidden" name="H_REVIEW_TITLE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                <input type="hidden" name="H_REVIEW_BODY" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
            </div>
                <div class="content">
                    <div class="content_img">
                        <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"])))
                    { %>
                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>'/>
                    <%}%> 
                    <%else
                    {%>
                        <img src="/Source/image/no_img.svg" class="no_img"/>
                    <%}%>
                    </div>
                    <div class="content_txt_box">
                        <div class="content_star">
                            <%for (int j = 0; j < Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                            {%>
                                    <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                            <%}%>
                        </div>
                        <div class="content_txt_box_title">
                            <p>
                                <%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                            </p>
                        </div>
                        <div class="content_txt_box_sub_title">
                            <p>
                                <%=BEST_REVIEW_TABLE.Rows[i]["NAME_CLOSE1"]%>님의 리뷰입니다.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
    <%}%>
<%}%>
                                         
<%}%>
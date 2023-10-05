<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_PRODUCT_HELPDESK.aspx.cs" Inherits="drKid.Source.client.member.ajax.C_PRODUCT_HELPDESK" %>
<input type="hidden" id="BOARD_RESULT" name="BOARD_RESULT" value="<%=BOARD_RESULT %>" />
<input type="hidden" id="ORIGINAL_TITLE" name="ORIGINAL_TITLE" value="<%=ORIGINAL_TITLE %>" />
<input type="hidden" id="totalCount" name="totalCount" value="<%=totalCount%>" />

<%if(REQUEST_TABLE != null && REQUEST_TABLE.Rows.Count > 0)
{%>
    <div class="Requests">
        <%for(int i=0; i<REQUEST_TABLE.Rows.Count; i++)
        {%>
            <div class="Request">
                <div class="reuqest_Writer_Area">
                    <div class="lowerst-font main_color reuqest_Writer">[관리자]</div>
                </div>
                <div class="reuqest_Detail_Area">
                    <div class="lowerst-font reuqest_Detail">답변:<%=REQUEST_TABLE.Rows[i]["BOARD_MESSAGE"] %> </div>
                </div>
                <div class="reuqest_Date_Area">
                    <div class="lowerst-font reuqest_Date"><%=Convert.ToDateTime(REQUEST_TABLE.Rows[i]["POST_DATE"]).ToString("yyyy.MM.dd") %></div>
                </div>
            </div>
        <%}%>
    </div>
<%}%>

<%if (PROD_FAQ_TABLE != null && PROD_FAQ_TABLE.Rows.Count > 0)
{%>
    <div class="PROD_FAQ_TABLE">
        <%for (int i = 0; i < PROD_FAQ_TABLE.Rows.Count; i++)
        {%>
            <div class="notice_Content_Wrap"id="<%=PROD_FAQ_TABLE.Rows[i]["BOARD_SID"] %>" onclick="PROD_HD_AJAX_CLICK(this);">
                <div class="notice_Content">
                    <div class="notice_Number_Area">
                        <div class="notice_Number lowerst-font"></div> 
                    </div>
                        <div class="notice_Title_Area">
                        <div class="notice_Title lowerst-font">
                            <span class="material-icons">https</span>
                            <span class="prod_FAQ_Title">비밀글입니다.</span>    
                        </div>
                    </div>
                    <div class="notice_Writer_Area">
                        <div class="notice_Writer lowerst-font"><%=PROD_FAQ_TABLE.Rows[i]["BOARD_WRITE_NM"] %></div>
                    </div>
                           
                    <div class="notice_Created_Date_Area">
                        <div class="notice_Created_Date lowerst-font"><%=Convert.ToDateTime(PROD_FAQ_TABLE.Rows[i]["POST_DATE"]).ToString("yyyy.MM.dd") %></div>
                    </div>

                    <div class="notice_Created_Answer_Area">
                        <div class="notice_Created_Answer lowerst-font">
                            <%if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "R")
                            {%>
                                답변대기
                            <%}%> 
                                <%else if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "W")
                            {%>
                                답변완료
                            <%}%> 
                                <%else if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "L")
                            {%>
                                답변중
                            <%}%> 
                        </div>
                    </div>
                </div>
                <div class="Request_Area">
                </div>
            </div>
        <%}%>
    </div>
<%}%>
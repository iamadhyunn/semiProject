<!-- leeHyunjin  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bdto" class="semi.i_board.I_BoardDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="bdto"/>
<jsp:useBean id="bdao" class="semi.i_board.I_BoardDAO" scope="session"></jsp:useBean>
<%
int result=bdao.bbsWrite(bdto);
String msg=result>0?"글쓰기 성공!":"글쓰기 실패!";
%>
<script>
window.alert('<%=msg%>');
location.href='i_Board_List.jsp';
</script>
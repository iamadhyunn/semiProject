<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="sjdao" class="semi.std_apply.Std_applyDAO"></jsp:useBean>
<jsp:useBean id="sjdto" class="semi.std_apply.Std_applyDTO"></jsp:useBean>
<jsp:setProperty property="*" name="sjdto"/>

<%
int result=sjdao.joinStudy(sjdto);
String msg=result>0?"스터디 등록 신청 성공":"스터디 등록 신청 실패";
%>
<script>
	window.alert('<%=msg%>');
	location.href='../main.jsp';
</script>


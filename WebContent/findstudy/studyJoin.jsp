<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="semi.meminfo.MemInfoDTO"%>
    <%@page import="java.util.*" %>
    <%@page import="semi.study_gr.*" %>
	<jsp:useBean id="dao" class="semi.study_gr.Study_grDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/header.jsp" %>


<%
MemInfoDTO mdto=(MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
int midx=mdto.getMidx();
String mname=mdto.getMname();
int mage=mdto.getMage();
%>
<section>
	<article>
	<form name="joinStd" action="studyJoin_ok.jsp">
		<%int sidx=Integer.parseInt(request.getParameter("sidx")); %>
			<input type="hidden" name="midx" value="<%=midx%>">
			<input type="hidden" name="sidx" value="<%=sidx%>">
		<table>
	
		<%
		//public ArrayList<Study_grDTO> myStudyList(int midx){
		ArrayList<Study_grDTO> arr=dao.stdJoinContent(sidx);
		%>
			
			<%
			if(arr==null||arr.size()==0){
				%>
				<tr>
					<th>스터디 정보 없음</th>
				</tr>
				<% 
			}else{
				for(int i=0;i<arr.size();i++){				
					Study_grDTO dto=arr.get(i);
			
			%>
			<tr><th colspan="4">스터디 신청하기</th></tr>
			<tr>
				<th colspan="2">스터디 :</th><td colspan="2"><%=dto.getS_gr_name() %></td> 	
			</tr>
			<tr> 
				<th colspan="4">스터디 일정</th>
			</tr>
			<tr>
			<th>시작일</th><th>종료일</th><th>스터디 요일</th><th>스터디 시간</th>
			</tr>
			<tr>
			<td><%=dto.getSdate() %></td><td><%=dto.getEdate() %></td><td><%=dto.getSch_date() %></td><td><%=dto.getSch_time() %></td>
			<%}} %>
			</tr>
			<tr><th colspan="4">신청자 정보</th></tr>
			<tr>
				<th colspan="2">신청자 이름</th><th colspan="2">신청자 나이</th>
			</tr>
			<tr>
				<td colspan="2"><input type="text" readonly="readonly" name="mname" value="<%=mname %>"></td>
				<td colspan="2"><input type="text" readonly="readonly" name="mage" value="<%=mage %>"></td>
			</tr>
			<tr>
			<td colspan="4" align="center">
			스터디 지원 신청서<br>
			제목:<input type="text" name="asubject" size="70"><br>
			<textarea cols="60" rows="5" name="acontent">
			스터디 지원 포부 및 가입 사유를 적어주세요
			</textarea>
			</td>
			</tr>
			<tr>
				<td>
				<input type="submit" value="제출하기">
				<input type="reset" value="다시 작성"> 
				</td>
			</tr>
		</table>
		</form>
	</article>
</section>




<%@include file="/footer.jsp" %>
</body>
</html>
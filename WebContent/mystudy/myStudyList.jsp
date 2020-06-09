<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="semi.study_gr.*" %>
    <%@page import="java.util.*" %>
    <jsp:useBean id="dao" class="semi.study_gr.Study_grDAO"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<!-- hyun -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/header.jsp" %>

<section>
	<h2>참여중인스터디목록~</h2>
	<fieldset>
	for문 반복
	<%
    //midx_tmp 는 로그인때 생성된 세션으로부터 가져온다. 임시로 3으로 셋팅
    ArrayList<Study_grDTO> arr = dao.myStudy(3);
    if(arr==null||arr.size()==0){
    	%>
    	<span>참여중인스터디없음~~</span>
    	<%
    }else{
    	for(int i=0; i< arr.size();i++){
    		
    	
    	%>
    	<a href="studyInfo.jsp?sidx=<%=arr.get(i).getSidx()%>">
    	<span>(튜터명)<%=arr.get(i).getTutorname() %></span>
		<span>(스터디번호자바)<%=arr.get(i).getSidx() %></span>
		<span>(스터디명자바)<%=arr.get(i).getS_gr_name() %></span>
		<span>(스터디시작날짜자바)<%=arr.get(i).getSdate() %></span>
		<span>(스터디종료날짜자바)<%=arr.get(i).getEdate() %></span> 
		</a>   	
    	<%
    	}
    }
    %>
	

	</fieldset>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>
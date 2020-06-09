<!-- sang -->
<%@page import="semi.meminfo.MemInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="semi.tutor.*" %>
<%@ page import="semi.study_gr.*" %>
<jsp:useBean id="tdao" class="semi.tutor.TutorDAO" ></jsp:useBean>
<jsp:useBean id="sdao" class="semi.study_gr.Study_grDAO" ></jsp:useBean>
<%
MemInfoDTO mdto=(MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tutorInfo.jsp</title>
<style>
h2{text-align: center}
table{margin:0 auto; }
</style>
</head>
<body>
<%@include file="/header.jsp" %>

	<%
	int midx=mdto.getMidx();
	TutorDTO tdto=tdao.tutorInfo(midx);
	%>
   <header>
   
   </header>
   <section>
   <article>
   튜터기본정보
   테이블써도되고안써도되고
   </article> 
   <article>   
      <h2>모집중인 스터디 LIST</h2>
      <table>
      <%
      if (tdto==null){
    	  %>
    	  <tr>
    	  	<th>사용 가능 데이타 없음</th>
    	  </tr>
    	  <%
    	  return;
      }else{
      %>
         <tr>
            <th>Tutor:</th><td colspan="2"><%=tdto.getMname() %></td><th>지역</th><td colspan="3"><%=tdto.getMaddr()%></td>
         </tr>
         <tr>
         <th>Tutor 점수</th><th>TOEIC</th><td><%=tdto.getToeic()%></td><th>TOSS</th><td><%=tdto.getToss()%></td>
         <th>TOEFL</th><td><%=tdto.getToefl()%></td>
        	<%
		}
        	%>
         </tr>
      </table>
      <table>
      		<%
	         ArrayList<Study_grDTO> arr = sdao.myStudy(midx);
				if(arr==null||arr.size()==0){
					%>
					<tr>
						<td colspan="4" align="center">등록된 스터디 없습니다.</td>
					</tr>
					<%
				}else{
					for(int i=0;i<arr.size();i++){
						Study_grDTO temp=arr.get(i);
						%>
						<tr>
							<td><%=temp.getS_gr_name() %></td>
							<td><%=temp.getSdate() %></td>
							<td><%=temp.getEdate() %></td>
							<td><%=temp.getSch_date() %></td>
							<td><%=temp.getSch_time() %></td>
						</tr>
						<tr>
						<% 
					}
				}
      		%>
      </table>
   </article>
   </section>
   <%@include file="/footer.jsp" %>
</body>
</html>
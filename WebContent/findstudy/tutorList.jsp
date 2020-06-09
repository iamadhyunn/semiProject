<!-- yong -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="semi.meminfo.*" %>
<%@ page import ="semi.tutor.*" %>
<%@ page import="java.util.*" %> 
<jsp:useBean id="tdao" class="semi.tutor.TutorDAO"></jsp:useBean>
<jsp:useBean id="mdao" class="semi.meminfo.MemInfoDAO"></jsp:useBean>
<%

MemInfoDTO mdto = (MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
   String select = request.getParameter("select");
   if(select==null){
      select ="";
   }
   ArrayList<TutorDTO> arr = tdao.tutorList(select);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@include file="/header.jsp" %>
<section>
<article id="art1">
<h2>지역별</h2>
   <form name="select">
   <%
      String locations[] = {"전체보기","강남구","강동구","강서구","강북구","관악구","광진구","구로구","금천구","노원구",
            "동대문구","도봉구","동작구","마포구","서대문구","성동구","성북구","서초구","송파구   ","영등포구","용산구","양천구",
            "은평구","종로구","중구","중랑구"};
      for(int i=0; i<locations.length; i++){
         %>
            <span><a href="tutorList.jsp?select=<%=locations[i]%>"><%=locations[i]%></a></span> | 
         <%
      }
   %>
      </form>
</article>

<article id="art2">
<h3>튜터리스트</h3>
<hr>
<form name="tutorList">
   
   <table>
      <%
      if(arr==null||arr.size()==0){
         %>
            <tr>
               <td colspan="12" >
                  정보가 없습니다.
               </td>
            </tr>
         <% 
      }else{
         for(int i=0; i<arr.size(); i++){
            TutorDTO dto = arr.get(i); 
            
            %>
               <tr>
               <th>Tutor name | </th>
               <td><a href="tutorInfo.jsp?midx=<%=mdto.getMidx()%>"><%=mdto.getMname() %></a></td>
               <th>Location | </th>
               <td><%=dto.getMaddr() %></td>
               <th>TOEIC | </th>
               <td><%=dto.getToeic() %></td>
               <th>TOSS | </th>
               <td><%=dto.getToss() %></td>
               <th>TOEFL | </th>
               <td><%=dto.getToefl() %></td>
               <th>Study 횟수? | </th>
               <td><%=dto.getTshots() %></td>
            </tr>
            <%
         }
      }
         
      
      %>
      
   </table>
</form>
</article>


</section>

<%@include file="/footer.jsp" %>
</body>
</html>
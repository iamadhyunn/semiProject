<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.meminfo.*" %>
<%
   String mid = (String)session.getAttribute("id");
   MemInfoDTO dto = (MemInfoDTO)session.getAttribute(mid);
   
   if(dto==null)System.out.println("dto is null in mypage.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/header.jsp" %>
   <h2>My Page</h2>
   <section>
   <article>
   <form name="mypage" action="myPage_ok.jsp">
   <table>
      <tr>
         <th>아이디</th>
         <td><%=dto.getMid()%></td>
      </tr>
      <tr>
         <th>이름</th>
         <td><%=dto.getMname()%></td>
      </tr>
      <tr>
         <th>생년월일</th>
         <td><%=dto.getMdob()%></td>
      </tr>
      <tr>
         <th>이메일</th>
         <td><input type="text" name="memail" value="<%=dto.getMemail()%>"></td>
      </tr>
      <tr>
         <th>주소</th>
         <td><input type="text" name="maddr" value="<%=dto.getMaddr()%>"></td>
      </tr>
      <tr>
         <th>토익</th>
         <td><input type="text" name="toeic" value="<%=dto.getToeic()%>"></td>
      </tr>
      <tr>
         <th>토스</th>
         <td>
            level <select name="toss">
               <%
                  for(int i=1;i<9; i++){
                        if(i==dto.getToss()){
                           %>
                              <option value=<%=i %> selected><%=i %></option>
                           <%
                        }else{
                           %>
                           <option value=<%=i %>><%=i %></option>
                           <%
                        }               
                  }
               %>
            </select>         
         </td>
      </tr>
      <tr>
         <th>토플</th>
         <td><input type="text" name="toefl" value="<%=dto.getToefl()%>"></td>
      </tr>
      <tr>
         <td colspan="2">
            <input type="submit" value="수정">
            <input type="reset" value="다시작성">
         </td>
      </tr>
   </table>
   </form>   
   </article>
   <article>
   <%
   String locations[] = {"전체보기","강남구","강동구","강서구","강북구","관악구","광진구","구로구","금천구","노원구",
            "동대문구","도봉구","동작구","마포구","서대문구","성동구","성북구","서초구","송파구   ","영등포구","용산구","양천구",
            "은평구","종로구","중구","중랑구"};
   %>
      <fieldset>
      <form name="tutorjoin" action="tutorJoin_ok.jsp">
         <legend>튜터 가입</legend>
         <div>
         튜터 활동할 지역을 선택해주세요   
         <select name="addr">
            <%
               for(int i=0;i<locations.length; i++){
                  %>
                     <option value="<%=locations[i]%>"><%=locations[i]%></option>
                     
                  <% 
               }
            %>
         </select>
         </div> 
         <input type="submit" value="가입신청">
         </form>
      </fieldset>
   </article>
   </section>
   <%@include file="/footer.jsp" %>
</body>
</html>
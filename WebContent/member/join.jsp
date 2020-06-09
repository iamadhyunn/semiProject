<!-- yong -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   
   fieldset {
      width:650px;
      text-align:center;
      margin:0px auto;
      background-img:;
   }
   table{
      text-align:center;
      margin:0px auto;
      padding:30px;
   }
   table td{
      padding:20px;
   }
   #join{
      text-align:center;
   }
</style>
<%
   String msg =""; 
   Cookie[] cks = request.getCookies();

   if(cks!=null){
      for(int i=0; i<cks.length; i++){
         if(cks[i].getName().equals("ok")){
            msg = cks[i].getValue();
         }
      }
      Cookie ck = new Cookie("ok","");
      ck.setMaxAge(0);
      response.addCookie(ck);
   }
%>
<script>
   function idcheck(){
       var mid =document.join_.mid.value;
       window.open("idCheck.jsp?mid="+mid,'idCheck','width=300,height=170');
   }
   
   function joinCheck(){
      var pwd1 = document.join_.mpwd.value;
      var pwd2 = document.join_.repwd.value;
      var check = document.join_.okid.checked; 
      var pc1 = false;
      var pc2 = false;
      var pc3 = false;
      for(var i =0; i<pwd1.length; i++){
         if(pwd1.charAt(i) >= 'A' && pwd1.charAt(i) <='Z'){
            pc1 = true;
         }
      }
      for(var i =0; i<pwd1.length; i++){
         if(pwd1.charAt(i) >= 'a' && pwd1.charAt(i) <='z'){
            pc2 = true;
         }
      }
      for(var i =0; i<pwd1.length; i++){
         if(pwd1.charAt(i) >= '0' && pwd1.charAt(i) <='9'){
            pc3 = true;
         }
      }
      if(pwd1!=pwd2){
         window.alert('비밀번호가 일치하지 않습니다.');
         return false
      }else if(!check){
         window.alert('아이디 중복확인을 해주세요');
         return false
      }else if(!pc1){
         window.alert('비밀번호는 대소문자 숫자를 포함시켜주세요')
         return false;
      }else if(!pc2){
         window.alert('비밀번호는 대소문자 숫자를 포함시켜주세요')
         return false;
      }else if(!pc3){
         window.alert('비밀번호는 대소문자 숫자를 포함시켜주세요')
         return false;
      }
   }
   
   
</script>
</head>
<body>
<section>
   <article id="join">
      <fieldset>
         <legend>회 원 가 입</legend>
         <form name="join_" action="join_ok.jsp" onsubmit="return joinCheck();">
            <table>
               <tr>
                  <th>I D</th>
                  <td><input type="text" name="mid" value="<%=msg%>"></td>
                  <td>
                  <input type="button" value="중복체크" onclick="idcheck()">
                  <input type="checkbox" name="okid"  <%=msg.equals("")?"":"checked" %> disabled>
                  </td>
               </tr>
               <tr>
                  <th>Password</th>
                  <td><input type="password" name="mpwd"></td>
                  <td>
                  대,소문자 +숫자 로 구성               
                  </td>
               </tr>
               <tr>
                  <th>Re Password</th>
                  <td><input type="password" name="repwd" placeholder="비빌번호 재입력"></td>
               </tr>
               <tr>
                  <th>Name</th>
                  <td><input type="text" name="mname"></td>
               </tr>
               <tr>
                  <th>Sex</th>
                  <td>
                  <input type="radio" name="msex" value=0>남자
                  <input type="radio" name="msex" value=1>여자
                  </td>
               </tr>
               <tr>
                  <th>year of birth </th>
                  <td>
                     <select name="year">
                        <%
                           for(int i=1950; i<2021; i++){
                              %>
                                 <option value=<%=i%>><%=i%></option>
                              <% 
                           }
                        %>
                     </select>&nbsp;-&nbsp;
                     <select name="month">
                        <%
                           for(int i=1;i<13; i++){
                              %>
                                 <option value=<%=i %>><%=i %></option>
                              <%
                           }
                        %>
                     </select>&nbsp;-&nbsp;
                     <select name="day">
                        <%
                           for(int i=1;i<32; i++){
                              %>
                                 <option value=<%=i %>><%=i %></option>
                              <%
                           }
                        %>
                     </select>
                  </td>
               </tr>
               <tr>
                  <th>E-mail</th>
                  <td><input type="text" name="memail"></td>
               </tr>
               <tr>
                  <th>Tel</th>
                  <td>
                     <select name="fronttel">
                        <option value=010>010</option>
                        <option value=011>011</option>
                        <option value=016>016</option>
                        <option value=070>070</option>
                     </select>-
                  <input type="text" name="midtel" size=4 maxlength=4>-
                  <input type="text" name="lasttel" size =4 maxlength=4>
                  </td>
               </tr>
               <tr>
                  <th>Address</th>
                  <td><input type="text" name="maddr"></td>
               </tr>
               <tr>
               <td colspan="3"><h3 text-align="center">부가정보</h3></td>
               </tr>
               <tr>
                  <th>Toeic</th>
                  <td><input type="text" name="toeic" value=0></td>
               </tr>
               <tr>
                  <th>Toss</th>
                  <td>level <select name="toss">
                  <%
                     for(int i=1; i<9; i++){
                        %>
                           <option value=<%=i%>><%=i %></option>
                        <%
                     }
                  %>
                  </select> 
                  </td>
               </tr>
               <tr>
                  <th>Toefl</th>
                  <td><input type="text" name="toefl" value=0></td>
               </tr>
               <tr>
                  <td colspan="3">
                     <input type="submit" value="join">
                     <input type="reset" value="reset">            
                  </td>
               </tr>
            </table>
         </form>
      </fieldset>
   </article>
</section>
</body>
</html>
<!-- leeHyunjin  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<section>
   <article>
      <h3>문의 게시판</h3>
      <form name="i_Board_Write" action="i_Board_Write_ok.jsp">
         <table>
            <tr>
               <th>작성자</th>   
               <td><input type="text" name="ib_writer"></td>
            
            </tr>
            <tr>
               <th>제목</th>
               <td colspan="2"><input type="text" name="ib_sub" size="55   "></td>
            </tr>
            <tr>
               
               <td colspan="4">
               <textarea rows="10" cols="70" name="ib_content"></textarea>
               </td>
            </tr>
            <tr>
               <td colspan="4" align="center">
                  <input type="submit" value="문의게시글 생성">
                  <input type="reset" value="다시쓰기">
                     <a href='i_Board_List.jsp'><input type="button" value="돌아가기"></a>
               </td>
            </tr>
         </table>
      </form>
   </article>
</section>




<a>   </a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="semi.meminfo.*" %>
    <%
    MemInfoDTO mdto = (MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
    int midx=mdto.getMidx();
    String mname=mdto.getMname();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>스터디 그룹 개설 신청</h2>
<article>
	<section>
		<form name="stdApplication" action="stdApplication_ok.jsp">
		<fieldset>
		<legend>스터디 그룹 신청</legend>
		<input type="hidden" value="<%=midx %>" name="midx">
		<input type="hidden" value="<%=mname%>" name="tutorname">
			<table>
				<tr>
				<th>스터디 명:</th> <td><input type="text" name="s_gr_name"></td>
				</tr>
				<tr>
				<th>스터디 인원:</th> <td><select name="std_limit" size="1">
										<option value="1">1<option value="2">2
										<option value="3">3<option value="4">4<option value="5">5
										</select>
				</td>
				</tr>
				<tr>
				<th>스터디 시작일:</th> <td><input type="text" name="sdate"></td>
				</tr>
				<tr>
				<th>스터디 종료일:</th> <td><input type="text" name="edate"></td>
				</tr>
				<tr>
				<th>스터디 일정 1:</th> <td><input type="text" name="sch_date"></td>
				</tr>
				<tr>
				<th>스터디 일정 2:</th> <td><input type="text" name="sch_time"></td>
				</tr>
				<tr>
				<th>스터디 안내글:</th> <td><input type="text" name="scontent"></td>
				</tr>
				<tr>
				<td>
				<input type="submit" value="스터디 등록하기">
				<input type="reset" value="다시작성">
				</td>
				</tr>
			</table>
			</fieldset>
		</form>
	</section>
</article>
</body>
</html>
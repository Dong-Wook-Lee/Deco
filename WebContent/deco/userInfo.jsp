<%@page import="com.deco.dao.UsersDao"%>
<%@page import="com.deco.dto.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deco :: 회원정보</title>
<!-- 스타일 참고  -->
<link rel="stylesheet" href="">
</head>
<body>
	<!--<c:if test="${alert!=null }">
	<script type="text/javascript">
		alert('회원 정보가 수정되었습니다.');
	</script>
</c:if>
--> <form action="userIntoUpdateAction.deco">
	<div style="width: 70%; margin: auto;">
		<h3>Deco :: 회원정보</h3>
		<!-- 이메일 , 지역 -->
		<table>
			<tr>
				<td>닉네임</td>
				<td>${dto.nickname }</td>
				<!-- 닉네임은 변경할수 없고 읽기만 -->
			</tr>
			<tr>
				<td>이름</td>
				<td>${dto.name }</td>
				<!-- 이름은 변경할수 없고 읽기만 -->
			</tr>
			<tr>
				<td>이메일</td>
				<td>${dto.email }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${dto.gender }</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>${dto.age }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${dto.phone }</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${dto.addr }</td>
			</tr>

			<tr>
			<!-- 뷰파일에서는 대소문자 상관없다. -->
				<td colspan="2" style="text-align: center">
				<input type="button" value="수정하기" onclick="location.href='userInfoUpdate.deco'">
				<!--  <input type="button" value="탈퇴하기" onclick="location.href='userInfodelete.deco'"> -->
			</tr>
		</table>
		</form>
	</div>

</body>
</html>
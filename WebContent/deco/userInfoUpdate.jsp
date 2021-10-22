<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deco :: 회원정보 수정</title>
<!-- 스타일 참고  -->
<link rel="stylesheet" href="">
</head>
<body>
	<!--  
<c:if test="${alert!=null }">
	<script type="text/javascript">
		alert('회원 정보가 수정되었습니다.');
	</script>
</c:if>
-->
	<div style="width: 70%; margin: auto;">
		<h3>Deco :: 회원 수정</h3>
		<!-- 이메일 , 지역 -->
		<form action="UserUpdateAction.deco" name="frmReg" method="post"
			onsubmit="return validCheck()">
			<input type="hidden" name="idx" value="${dto.idx }">
			<!--브라우저에 출력은 안되고 파라미터로 필요한값은 type을 hidden으로 한다. -->
			<table>
				<tr>
					<td><label>닉네임</label></td>

					<td><input type="text" name="nickname" placeholder=""
						value="${dto.nickname }"></td>
					<!-- 닉네임은 변경할수 없고 읽기만 -->
				</tr>
				<tr>
					<td><label>이름</label></td>

					<td><input type="text" name="name" placeholder=""
						value="${dto.name }" readonly></td>
					<!-- 이름은 변경할수 없고 읽기만 -->
				</tr>
				<tr>
					<td><label>이메일</label></td>
					<td><input type="email" name="email" value="${dto.email }"
						readonly></td>
				</tr>
				<tr>
					<td><label>전화번호</label></td>
					<td><input type="text" name="phone" placeholder="전화번호을 입력하세요"
						value="${dto.phone }"></td>
				</tr>
				<!-- value는 기본값. type="number" 일 때는 min,max 속성 설정 가능.-->
				</tr>
				<tr>
					<td><label>주소</label></td>
					<td><select name="addr" id="addr_select">
							<!-- value 속성은 서버에 전달시킬 값 -->
							<option value="서울 강남구" selected>서울 강남구</option>
							<option value="서울 강서구">서울 강서구</option>
							<option value="서울 강북구">서울 강북구</option>
							<option value="서울 강동구">서울 강동구</option>
							<option value="서울 종로구">서울 종로구</option>
							<option value="서울 관악구">서울 관악구</option>
							<option value="경기도 성남시">경기도 성남시</option>
							<option value="경기도 부천시">경기도 부천시</option>
					</select> <input placeholder="상세 주소" value="${dto.addr }"> <!-- <span id="addr_id"><input type="text" name="addr_etc" disabled="disabled" 
							placeholder="기타 지역을 입력하세요." >
					</span> --></td>
				</tr>
				<td><label>성별</label></td>
				<td><input type="radio" value="${dto.gender }" name="gender"
					checked id="male"> <label for="mals">남</label> <input
					type="radio" value="${dto.gender }" name="gender" id="female">
					<label for="female">여</label></td>

				<tr>
					<td colspan="2" style="text-align: center"><input
						type="submit" value="수정"> <!-- 취소 버튼 누르면 마이페이지 홈으로  --></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	document.getElementById("addr_select").addEventListener("change",function(){
		if(this.value=="기타"){  //this는 getElementById("addr_select") 요소
//			document.getElementById("addr_id").style.display="inline-block";   //화면에 보임
			document.frmReg.addr_etc.disabled=false;
		}else {
//			document.getElementById("addr_id").style.display="none";		//화면에  안보임.
			document.frmReg.addr_etc.disabled=true;
		}
		
	});
	
	/* 표현식으로 자바의 변수값을 가져오기. cus객체의 addr프로퍼티 (get메소드를 통해서 가져옵니다.)*/
	//document.querySelectorAll("option").forEach( item => {
	//	if(item.value===`${cus.addr}`) item.selected=true;   
	//});
	
	</script>
</body>
</html>
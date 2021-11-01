<!-- 여기는 테스트 공간 입니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="join.css">
  <script>
    function validCheck() {
       const frm = document.frmReg;
       //1. 패스워드는 8글자 이상이어야 한다.
       if (frm.password.value.length < 4){
          alert('패스워드는 4글자 이상으로 하세요.');
          frm.password.focus();            // 포커스(커서) 이동 
          return false;                  //함수가 종료.
       }
       //2. 나이 : 태그 min,max 무시 -> 20 ~ 70 값 범위로 검사합니다.
       if(frm.age.value < 15 || frm.age.value > 70 ){    //  return false 할 조건으로 작성. 이 위치는 위의 조건이 거짓일 때만 실행됩니다. 
          alert('나이는 15세 이상 70세 이하로만 가능합니다. ');
          frm.age.focus();
          return false;
       }
     
        if(frm.name.value.length<2){
            alert("이름을 2자 이상 입력해주십시오.")
            frm.name.focus();
            return false;
        }
       
       //체크한것 이 한개도 없으면 여기와서 실행합니다.
       
       return false;
    }
    
    function findAddr(){
        new daum.Postcode({
             oncomplete: function(data) {
                
                console.log(data);
                
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                 // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var roadAddr = data.roadAddress; // 도로명 주소 변수
                 var jibunAddr = data.jibunAddress; // 지번 주소 변수
                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById('member_post').value = data.zonecode;
                 if(roadAddr !== ''){
                     document.getElementById("member_addr").value = roadAddr;
                 } 
                 else if(jibunAddr !== ''){
                     document.getElementById("member_addr").value = jibunAddr;
                 }
             }
         }).open();
     }
    
 </script>
</head>
<body>
    <!--form 위에 div 클래스 안적어서  적용이 안되었음--> 
    <div class="decocontainer">
  <form action="decoJoin">
  <div class="decoJoinLogo">DECO</div>
    <ul class="joinContens">
      <li>
        <div class="joinTitle">이름</div>
        <input type="text" name="name" placeholder="이름">
      </li>
      <li>
        <div class="joinTitle">비밀번호</div>
        <input type="password" name="password" placeholder="비밀번호">
      </li>
      <li>
        <div class="joinTitle">비밀번호 확인</div>
        <input type="password" name="password1" placeholder="비밀번호 확인">
      </li>
      <li>
        <div class="joinTitle">이메일</div>
        <input type="text" name="str_email01" id="str_email01" style="width:100px"> @ 
                  <input type="text" name="str_email02" id="str_email02" style="width:100px;">
                  <select style="width:100px;margin-right:10px" name="str_email02" id="selectEmail"> 
                  <option value="1" selected>직접입력</option> 
                  <option value="naver.com" >naver.com</option> 
                  <option value="hanmail.net">hanmail.net</option> 
                  <option value="hotmail.com">hotmail.com</option> 
                  <option value="nate.com">nate.com</option> 
                  <option value="yahoo.co.kr">yahoo.co.kr</option> 
                  <option value="empas.com">empas.com</option> 
                  <option value="dreamwiz.com">dreamwiz.com</option> 
                  <option value="freechal.com">freechal.com</option> 
                  <option value="lycos.co.kr">lycos.co.kr</option> 
                  <option value="korea.com">korea.com</option> 
                  <option value="gmail.com">gmail.com</option> 
                  <option value="hanmir.com">hanmir.com</option> 
                  <option value="paran.com">paran.com</option> 
                  </select>
      </li>
      <li>
        <div class="gender">
          <div class="joinTitle">성별</div>
          <input type="radio" value="남" name="gender" id="male">
          <label for="male">남자</label>
          <input type="radio" value="여" name="gender" checked id="female">
          <label for="female">여자</label>
        </div>
        <div class="age">
          <div class="joinTitle">나이</div>
          <input type="number" name="age" min="10" max="99"
                  value="30">
        </div>
      </li>
      <li>
        <div class="joinTitle">전화번호</div>
        <input type="text" name="phone" placeholder="전화번호를 입력하세요">
      </li>
      <li>
        <div class="joinTitle">주소</div>
        <input name="addr" type="button" id="member_post" value="주소찾기" onclick="findAddr()">
        <input name="addr" id="member_addr"  >
      </li>
      <li>
        <div class="joinTitle">닉네임</div>
        <input type="text" name="nickname" placeholder="닉네임을 입력하세요">
      </li>
      <li>
        <input type="submit" value="가입하기">
      </li>
    </ul>
</form>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 주소 api -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script type="text/javascript">
$('#selectEmail').change(function(){ 
$("#selectEmail option:selected").each(function () { 
if($(this).val()== '1'){ 
   $("#str_email02").val('');
   $("#str_email02").attr("disabled",false); //활성화 
}else{ //직접입력이 아닐경우
   $("#str_email02").val($(this).text()); //선택값 입력
$("#str_email02").attr("disabled",true); //비활성화
 } }); }); </script>
</body>
</html>
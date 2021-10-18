<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3 [2]-ȸ�� ���</title>
<!-- ��Ÿ�� ����  -->
<link rel="stylesheet" href="member.css?v=3">
<link rel="stylesheet" href="../css/member.css">
<script>
	function validCheck() {
		const frm = document.frmReg;
		//1. �н������ 8���� �̻��̾�� �Ѵ�.
		if (frm.password.value.length < 8){
			alert('�н������ 8���� �̻����� �ϼ���.');
			frm.password.focus();				// ��Ŀ��(Ŀ��) �̵� 
			return false;						//�Լ��� ����.
		}
		//2. ���� : �±� min,max ���� -> 20 ~ 70 �� ������ �˻��մϴ�.
		if(frm.age.value < 1 || frm.age.value > 70 ){    //  return false �� �������� �ۼ�. �� ��ġ�� ���� ������ ������ ���� ����˴ϴ�. 
			alert('���̴� 20�� �̻� 70�� ���Ϸθ� �����մϴ�. ');
			frm.age.focus();
			return false;
		}
		
		//üũ�Ѱ� �� �Ѱ��� ������ ����ͼ� �����մϴ�.
		
		return false;
	}
	
</script>
</head>
<body>
	<div style="width: 70%; margin: auto;">
		<h3>ȸ�� ���</h3>
		<form action="membership.jsp" name="frmReg" method="post">
			<table style="width: 100%">
				<tr>
					<td><label>�̸�</label></td>
					<!--  required �ʼ� �Է�  , readonly : �б⸸.-->
					<td><input type="text" name="name" placeholder="�̸� �̷�(�ʼ�)"
						required></td>
				</tr>
				<tr>
					<td><label>�н�����</label></td>
					<td><input type="password" name="password" placeholder="password�� �Է��ϼ���"></td>
				</tr>
				<tr>
					<td><label>�̸���</label></td>
					<td><input type="email" name="email" placeholder="email�� �Է��ϼ���"></td>
				</tr>
				<tr>
					<td><label>����</label></td>
					<td><input type="radio" value="male" name="gender">����
						<input type="radio" value="female" name="gender" checked>����
						<!-- checked  �� �⺻ ���� --></td>
				</tr>
				<tr>
					<td><label>����</label></td>
					<td><input type="number" name="age" min="10" max="99"
						value="30"></td>
					<!-- value�� �⺻��. type="number" �� ���� min,max �Ӽ� ���� ����.-->
				</tr>
				<tr>
					<td><label>��ȭ��ȣ</label></td>
					<td><input type="phone" name="phone" placeholder="��ȭ��ȣ�� �Է��ϼ���"></td>
				</tr>
				<tr>
					<td><label>�ּ�</label></td>
					<td><select name="addr" id="addr_select">
							<!-- value �Ӽ��� ������ ���޽�ų �� -->
							<option value="���� ������" selected>���� ������</option>
							<option value="���� ������" >���� ������</option>
							<option value="���� ���ϱ�">���� ���ϱ�</option>
							<option value="���� ������">���� ������</option>
							<option value="���� ���α�">���� ���α�</option>
					</select> 
					<!-- <span id="addr_id"><input type="text" name="addr_etc" disabled="disabled" 
							placeholder="��Ÿ ������ �Է��ϼ���." >
					</span> --></td>
				</tr>
				
				<tr>
					<td colspan="2" style="text-align: center"><input
						type="submit" value="�����ϱ�"> <!-- submit : �������� �����͸� ���� (form action �Ӽ����� ������ url �� ������ ����.)
						action �� .html �� ������ ����Ȯ���� ���մϴ�. url �̵��� Ȯ��!!--> <input
						type="reset" value="�ٽþ���"></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	document.getElementById("addr_select").addEventListener("change",function(){
		if(this.value=="��Ÿ"){ //this�� getElementById("addr_select")���
//			document.getElementById("addr_id").style.display="inline-block";
			document.frmReg.addr_etc.disabled=false;
		}else {
//			document.getElementById("addr_id").style.display="none";
			document.frmReg.addr_etc.disabled=true;
		}
		
	});
	</script>
</body>
</html>
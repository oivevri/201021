<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div align="center">
		<div><h1>회 원 등 록</h1></div><br />
		<div>
			<form id="frm" name="frm" action="registerResult.jsp" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">아이디</th>
							<td width="300"><input type="text" id="id" name="id"></td>
						</tr>
						<tr>
							<th width="100">패스워드</th>
							<td width="300"><input type="password" id="pw" name="pw"></td>
						</tr>
						<tr>
							<th width="100">이  름</th>
							<td width="300"><input type="text" id="name" name="name"></td>
						</tr>
						<tr>
							<th width="100">취  미</th>
							<td width="300">
								<input type="checkbox" id="hobby" name="hobby" value="바둑">바둑
								<input type="checkbox" id="hobby" name="hobby" value="낚시">낚시
								<input type="checkbox" id="hobby" name="hobby" value="독서">독서
								<input type="checkbox" id="hobby" name="hobby" value="운동">운동
							</td>
						</tr>
						<tr>
							<th width="100">성  별</th>
							<td width="300">
								<input type="radio" id="gender" name="gender" value="남자">남자
								<input type="radio" id="gender" name="gender" value="여자" checked>여자
							</td>
						</tr>
					</table>
				</div>
				<br />
				<div>
					<input type="submit" value="등록하기">
					&nbsp;&nbsp;
					<input type="reset" value="취  소">
					&nbsp;&nbsp;
					<input type="button" onclick="location.href='main.jsp'" value="홈으로">
				</div>
			</form>
		</div>
	</div>
</body>
<jsp:include page="tail.jsp"></jsp:include>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등 록 결 과</title>
</head>
<%
// 한글 깨짐 방지
	request.setCharacterEncoding("utf-8");

// 선언과 함께 자바코드 바로 작성하므로 %! 가 아니라 그냥 % 쓴다
	String id = request.getParameter("id");
	String name = request.getParameter("name");
// hobby는 체크박스로 다중선택가능하므로 배열로 받는다. 출력할때도 hobby의 내용물(values)을 받고싶은거
	String[] hobby = request.getParameterValues("hobby");
	String gender = request.getParameter("gender");

	String url = request.getRequestURL().toString();
	String uri = request.getRequestURI();
	String contextPath = request.getContextPath();
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<h1>회원등록 결과</h1>
		<div>
			<table border="1">
				<tr>
					<th width="100">아이디</th>
					<c:if test="${param.id == 'hong' }">
						<td width="300">홍길동</td>
					</c:if>
					<c:if test="${param.id != 'hong' }">
						<td width="300">${param.id}</td>
					</c:if>
				</tr>
				<tr>
					<th width="100">이  름</th>
					<td width="300">${param.name}</td>
				</tr>
				<tr>
					<th width="100">취  미</th>
					<td width="300">
						${paramValues.hobby[0]} ${paramValues.hobby[1]} ${paramValues.hobby[2]} ${paramValues.hobby[3]}
					</td>
				</tr>
				<tr>
					<th width="100">성  별</th>
					<td width="300">${param.gender}</td>
				</tr>
			</table>
		</div>
		<div>
			<br />
			<button onclick="location.href='main.jsp'">홈으로</button>
		</div>
		<div>
			<br />
			요청 URL : <%= url %> <br />
			요청 URI : <%= uri %> <br />
			contextPath : <%= contextPath %> <br />
		</div>
	</div>
<jsp:include page="tail.jsp"></jsp:include>
</body>
</html>
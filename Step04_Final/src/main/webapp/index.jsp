<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session scope 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다. (없으면 null)
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<%-- /include/navbar.jsp 포함 시키기 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	
	<div class="container">
		<%if(id != null){ %>
			<p>
				<a href="${pageContext.request.contextPath }/users/private/info.jsp"><%=id %></a> 님 로그인중...
				<a href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a>
			</p>
		<%}else{ %>
			<a href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
		<%} %>
		<h1>ACORN 백엔드</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a></li>
			<li><a href="${pageContext.request.contextPath }/private/study.jsp">회원전용공간(공부)</a></li>
			<li><a href="${pageContext.request.contextPath }/private/game.jsp">회원전용공간(게임)</a></li>
			<li><a href="file/list.jsp">자료실</a></li>
			<li><a href="cafe/list.jsp">글목록보기</a></li>
		</ul>
	</div>
</body>
</html>
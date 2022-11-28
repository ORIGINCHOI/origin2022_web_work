<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인된 아이디가 있는지 확인해서
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/game.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	   <nav class="mt-2">
	      <ol class="breadcrumb">
	         <li class="breadcrumb-item">
	            <a href="${pageContext.request.contextPath }/index.jsp">Home</a>
	         </li>
	         <li class="breadcrumb-item active">회원전용공간(게임)</li>
	      </ol>
	   </nav>		
	</div>
	<h1>게임 페이지 입니다.</h1>

	<p><%=id %> 님 열심히 게임해요!</p>
	<%-- /include/footer.jsp 페이지를 포함 시켜서 이부분은 footer.jsp 페이지가 응답하도록 한다. --%>
     <jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>
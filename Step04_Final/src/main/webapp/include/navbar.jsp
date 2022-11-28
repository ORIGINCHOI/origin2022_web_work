<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /include/navbar.jsp 페이지의 내용 입니다. -->
<%
	// 이 navbar.jsp 페이지가 어디에 include 되었는지 읽어와 보기
	String thisPage=request.getParameter("thisPage"); // "index" | "member" | "todo"
%>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#712cf9;">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">
			<img src="https://getbootstrap.com/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
			Acorn
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
     			<span class="navbar-toggler-icon"></span>
   		</button>
   		<!-- 화면이 좁으면 숨겨지는 요소들은 아래의 div 안에 넣어두면 된다. -->
   		<div class="collapse navbar-collapse" id="navbarNav">
   			<ul class="navbar-nav">
   				<li class="nav-item">
   					<a class="nav-link <%= thisPage.equals("todo") ? "active" : "" %>" href="${pageContext.request.contextPath }/private/study.jsp">회원전용공간(공부)</a>
   				</li>
   				<li class="nav-item">
   					<a class="nav-link <%= thisPage.equals("todo") ? "active" : "" %>"  href="${pageContext.request.contextPath }/private/game.jsp">회원전용공간(게임)</a>
   				</li>
   				<li class="nav-item">
   					<a class="nav-link <%= thisPage.equals("todo") ? "active" : "" %>"  href="${pageContext.request.contextPath }/file/list.jsp">자료실</a>
   				</li>   
   				<li class="nav-item">
   					<a class="nav-link <%= thisPage.equals("todo") ? "active" : "" %>"  href="${pageContext.request.contextPath }/cafe/list.jsp">글목록보기</a>
   				</li>				
   			</ul>
   		</div>
	</div>
</nav>
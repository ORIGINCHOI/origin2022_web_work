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
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="https://www.acornedu.co.kr/images/bottom-img03.png" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://www.acornedu.co.kr/images/bottom-img04.png" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://www.acornedu.co.kr/images/bottom-img05.png" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://www.acornedu.co.kr/images/bottom-img06.png" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://www.acornedu.co.kr/images/bottom-img07.png" class="d-block w-100" alt="...">
		    </div>		    
		    <div class="carousel-item">
		      <img src="https://www.acornedu.co.kr/images/bottom-img09.png" class="d-block w-100" alt="...">
		    </div>			    
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>		
	</div>
	<div class="container">
        <div class="row">
            <div class="col-3">
                <div class="card">
                    <img src="https://cdn.pixabay.com/photo/2022/11/02/10/46/ice-rink-7564565_960_720.jpg" class="card-img-top"
                        alt="...">
                    <div class="card-body">
                        <h5 class="card-title">공부해요</h5>
                        <p class="card-text">
                        	에이콘 회원님~ 공부합시다
                        </p>
                        <a href="${pageContext.request.contextPath }/private/study.jsp" class="btn btn-primary">공부!!</a>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img src="https://cdn.pixabay.com/photo/2015/04/22/11/21/to-do-734587_960_720.jpg" class="card-img-top"
                        alt="...">
                    <div class="card-body">
                        <h5 class="card-title">게임해요</h5>
                        <p class="card-text">머리 식히고 합시다~</p>
                        <a href="${pageContext.request.contextPath }/private/game.jsp" class="btn btn-primary">게임!!</a>
                    </div>
                </div>
            </div>
         </div>
     </div>
     <%-- /include/footer.jsp 페이지를 포함 시켜서 이부분은 footer.jsp 페이지가 응답하도록 한다. --%>
     <jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>
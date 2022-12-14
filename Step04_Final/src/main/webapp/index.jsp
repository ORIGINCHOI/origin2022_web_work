<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<jsp:include page="WEB-INF/include/navbar.jsp"/>
	<div class="container">
		<%--
			1. sessionScope.id != null
			2. id != null
			3. id ne null
			4. not empty id
			
			el 에서 1,2,3,4 는 모두 같은 결과이다.
		 --%>
		<c:choose>
			<c:when test="${not empty id}">
				<p>
					<a href="${pageContext.request.contextPath }/users/private/info.jsp">${id }</a> 님 로그인중...
					<a href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a>
				</p>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
			</c:otherwise>
		</c:choose>

		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a></li>
			<li><a href="${pageContext.request.contextPath }/private/study.jsp">회원전용공간(공부)</a></li>
			<li><a href="${pageContext.request.contextPath }/private/game.jsp">회원전용공간(게임)</a></li>
			<li><a href="file/list.jsp">자료실</a></li>
			<li><a href="cafe/list.jsp">글목록보기</a></li>
			<li><a href="my_app/index.html">React 테스트</a></li>
			<li><a href="users/signup_form4.jsp">React 테스트2</a></li>
		</ul>
	</div>
		
		
		<%if(id != null){ %>
			<p>
				<a href="${pageContext.request.contextPath }/users/private/info.jsp"><%=id %></a> 님 로그인중...
								
				<a href="${pageContext.request.contextPath }/users/logout.jsp" class="icon-link">
				  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
				    <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
				    <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
				  </svg>
				<span class="visually-hidden">로그아웃</span>
				</a>
			</p>
		<%}else{ %>
	       <a href="${pageContext.request.contextPath }/users/signup_form.jsp" class="icon-link">
	           <svg xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
	             <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
	             <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
	           </svg>
	           <span class="visually-hidden">회원가입</span>
	        </a>
	        
	        <a href="${pageContext.request.contextPath }/users/loginform.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" fill="currentColor" class="bi bi-box-arrow-in-left" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0v-2z"/>
			  <path fill-rule="evenodd" d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
			</svg>
			<span class="visually-hidden">로그인</span>	        
			</a>
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
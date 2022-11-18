<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	1. 폼 전송되는 할일과 날짜를 읽어온다.
	2. TodoDao 에 TodoDto 를 전달하면 DB 에 저장을 하고 작업의 성공여부를 리턴하는 insert() 메소드를 만든다.
	   할일번호는 시퀀스를 이용해서 들어가도록 한다.
	3. 위에서 추출한 할일과 날짜를 TodoDto 객체에 담는다.
	4. TodoDao 객체를 이용해서 TodoDto 객체에 담긴 할일 정보를 DB 에 저장한다.
	5. 작업의 성공 여부를 클라이언트에게 응답한다.
*/

	//폼 전송되는 할일을 읽어온다.
	request.setCharacterEncoding("utf-8");
	String content=request.getParameter("content");

	//TodoDto 객체에 할일을 담고
	TodoDto dto=new TodoDto();
	dto.setContent(content);
	
	//TodoDao 객체를 이용해서 DB 에 저장하고 작업의 성공여부를 리턴 받는다.
	boolean isSuccess=TodoDao.getInstance().insert(dto);
	
	//응답하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%if(isSuccess){ %>
			<p>
				<strong><%=content %></strong>로 할일을 추가했습니다!
				<a href="${pageContext.request.contextPath }/todo/list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p>
				할일 추가 실패!
				<a href="${pageContext.request.contextPath }/todo/insertform.jsp">다시 입력하러 가기</a>
			</p>
		<%} %>
	</div>
</body>
</html>
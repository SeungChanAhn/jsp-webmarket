
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>

<!-- useBean 액션 태그 사용 scope를 session으로 -->
<jsp:useBean id="repository" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<!-- 부트스트랩 불러오기 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- include 액션 태그 사용하여 클래스와 연결, 모든 페이지에서 네비게이션이 다 출력되도록 복붙한다. -->
	<jsp:include page="menu.jsp" />
	<%!// 변수, 메서드 선언
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다!";
	String tagline = "Welcome to Web Market!";%>
	<%
	// 그냥 java 코드
	// out.println("<h1>Hello World</h1>");
	%>
	<!-- p-5 : 전체패딩 5 (굉장히 많이) (3: 보통) -->
	<!-- bg-primary: 기본색상 , text-white: 글자 하얗게-->
	<div class="p-5 bg-primary text-white">
		<!-- container : 좌우 가운데 정렬 -->
		<div class="container">
			<!-- display-3 : 큰 글자중에 보통 크기 (1~5) -->
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>

	<div class="container">
		<!-- 가운데 정렬 -->
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
			// 1초에 한번씩 새로고침 안좋은 방법, 전체가 다 새로고침되서 네트워크 힘듬
			// AJAX 사용해서 시간부부만 바뀌게 해줘야한다.
			response.setIntHeader("Refresh", 5); // 5초마다 1번씩 새로고침
			
			Date today = new Date();
			SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
			out.println("현재 접속 시간: " + format.format(today));
			
			session.setAttribute("name", "안승찬");
			session.setAttribute("age", 29);
			
			List<String> foods = new ArrayList<>();
			foods.add("짜장면");
			foods.add("라면");
			%>
		</div>
	</div>
	<!-- include 액션 태그 사용 -->
	<jsp:include page="footer.jsp" />
</body>
</html>
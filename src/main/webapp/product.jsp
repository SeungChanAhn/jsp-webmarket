<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="repository" class="dao.ProductRepository"
	scope="session" />
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="p-5 bg-primary text-white">
		<!-- container : 좌우 가운데 정렬 -->
		<div class="container">
			<!-- display-3 : 큰 글자중에 보통 크기 (1~5) -->
			<h1 class="display-3">상세 정보</h1>
		</div>
	</div>
	<%
	// product.jsp?id=p1234 이런식으로 넘어온 값 얻기
	String id = request.getParameter("id"); // 무조건 스트링으로 받음
	Product product = repository.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getName()%></h3>
				<p><%=product.getDescription()%></p>
				<!-- 나머지는 책에있음 174p -->
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a> 
					<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
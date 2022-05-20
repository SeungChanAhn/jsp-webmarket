<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
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
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
	out.println(session.getAttribute("name"));
	out.println(session.getAttribute("food"));
	// ProductRepository  repository = new ProductRepository(); -> 이 코드를 쓰고 새고고침하면 해시코드가 계속 바뀜 new를 계속만나니까.. 액션코드 사용
	ProductRepository repository = ProductRepository.getInstance();
	List<Product> products = repository.getAllProducts();
	%>
	<div class="container">
		<div class="row text-center">
			<%
			for (Product product : products) { // 반복
			%>
			<div class="col-md-4">
				<h3><%=product.getName()%></h3>
				<p><%=product.getDescription()%></p>
				<p><%=product.getUnitPrice()%>원
				</p>
				<P>
					<a class="btn btn-secondary" role="button"
						href="./product.jsp?id=<%=product.getProductId()%>"> 
						상세 정보 &raquo;
					</a>
				</p>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>
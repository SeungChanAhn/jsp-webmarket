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
<title>상품 목록</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%
	// ProductRepository  repository = new ProductRepository(); -> 이 코드를 쓰고 새고고침하면 해시코드가 계속 바뀜 new를 계속만나니까.. 액션코드 사용
	List<Product> products = repository.getAllProducts();
	for (Product product : products) {
		out.println(product + "<br><br>");
	}
	%>
	<jsp:include page="footer.jsp" />

</body>
</html>
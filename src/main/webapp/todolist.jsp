<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="assets/css/todolist.css" />
<link rel="stylesheet" type="text/css" href="assets/css/form.css" />
<link rel="stylesheet" type="text/css" href="assets/css/todoitem.css" />
<!-- <script src="assets/js/common.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Todo List</title>
<script>
	function setDone(id) {
		$.ajax({
			url : "processToggle.jsp",
			type : "post",
			data : {
				"id" : id // 넣어서 보냄
			},
			success : function (data) {
				window.location.reload();
			}
		});
	}

	function addTodo() {
		console.log('클릭!!!')
		// post 방식으로 processAddTodo.jsp?task=어쩌구
		let task = $("#text").val();
		$.ajax({
			url : "processAddTodo.jsp",
			type : "post",
			data : {
				"task" : task // 넣어서 보냄
			},
			success : function (data) {
				window.location.reload();
			}
		});
	}

	function remove(id) {
	}
</script>
</head>

<body>
	<%
	TodoRepository repository = TodoRepository.getInstance();
	out.println(repository.getTodos());
	List<Todo> todos = repository.getTodos();
	%>
	<div class="todo-list-template">
		<div class="title">오늘 할 일</div>

		<section class="form-wrapper">
			<div class="form">
				<input name="text" id="text" />
				<div class="create-button" onclick="addTodo()">추가</div>
				<!-- import를 했으니까 사용가능 -->
			</div>
		</section>

		<section class="todos-wrapper">
			<%
			for (Todo todo : todos) {
			%>
			<div class="todo-item" onclick="setDone(<%=todo.getId()%>)">
				<div class="remove">&times;</div>
				<div class="todo-text <%=todo.isDone() ? "checked" : ""%>"><%=todo.getTask() %></div>
				<%
				if (todo.isDone()) {
				%>
					<div class="check-mark">&#x2713;</div>
				<%
				}
				%>
			</div>
			<%
			}
			%>


			<div class="todo-item">
				<div class="remove">&times;</div>
				<div class="todo-text checked}">숙제</div>
				<div class="check-mark">&#x2713;</div>
			</div>
			<div class="todo-item">
				<div class="remove">&times;</div>
				<div class="todo-text}">청소</div>
			</div>
		</section>
	</div>
</body>

</html>
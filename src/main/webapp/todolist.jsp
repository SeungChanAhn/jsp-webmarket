<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="assets/css/todolist.css" />
<link rel="stylesheet" type="text/css" href="assets/css/form.css" />
<link rel="stylesheet" type="text/css" href="assets/css/todoitem.css" />
<meta charset="UTF-8">
<title>Todo List</title>
<script>
	function setDone(id) {
	}

	function addTodo() {
	}

	function remove(id) {
	}
</script>
</head>

<body>
	<div class="todo-list-template">
		<div class="title">오늘 할 일</div>

		<section class="form-wrapper">
			<div class="form">
				<input name="text" id="text" />
				<div class="create-button">추가</div>
			</div>
		</section>

		<section class="todos-wrapper">
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
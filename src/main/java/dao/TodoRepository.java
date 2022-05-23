package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Todo;

public class TodoRepository { // 저장소는 새로고침해도 계속 써야한다.
	
	private static long currentId = 0;
	
	private List<Todo> todos = new ArrayList<>();
	
	private static TodoRepository instance = new TodoRepository(); // 프로그램이 기동하자마자 만들고 다른애들이 쓸수있게 해줌
	
	public static TodoRepository getInstance() {
		return instance;
	}
	

	
	public List<Todo> getTodos() {
		return todos;
	}
	
	public void addTodo(Todo todo) {
		
		todo.setId(currentId);
		currentId++;
		todos.add(todo);
	}
	
	public void toggle(long id) {
		for (Todo todo : todos) {
			if (todo.getId() == id) {
				todo.setDone(!todo.isDone());
				break;
			}
		}
	}
}

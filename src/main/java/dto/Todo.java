package dto;

import java.util.Objects;

public class Todo {
	private long id;// 모든 데이터는 고유한 아이디를 들고있는 것이 좋다.
					// 각 아이템을 판별할 때 ID를 알면 판별하기 쉬움
	private String task;
	private boolean isDone; // 기본값 False
	
	public Todo(String task) {
		this.task = task;
	}
	
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTask() {
        return task;
    }

    public void setTask(String task) {
        this.task = task;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDone(boolean isDone) {
        this.isDone = isDone;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Todo other = (Todo) obj;
        return id == other.id;
    }

    @Override
    public String toString() {
        return "Todo [id=" + id + ", task=" + task + ", isDone=" + isDone + "]";
    }

}

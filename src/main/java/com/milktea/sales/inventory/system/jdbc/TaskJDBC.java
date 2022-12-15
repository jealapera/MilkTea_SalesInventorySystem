package com.milktea.sales.inventory.system.jdbc;

import com.milktea.sales.inventory.system.mapper.TaskMapper;
import com.milktea.sales.inventory.system.model.Task;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class TaskJDBC {

    private static final String CREATE_TASK = "INSERT INTO tasks(id, title, description, due_date, remarks, status) VALUES(?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_TASK = "UPDATE tasks SET title=?, description=?, due_date=?, remarks=?, status=? WHERE id=?";
    private static final String DELETE_TASK = "DELETE FROM tasks WHERE id = ?";
    private static final String GET_TASK_BY_ID = "SELECT * FROM tasks WHERE id = ?";
    private static final String TASKS_LIST = "SELECT * FROM tasks";
    private DataSource dataSource;
    private JdbcTemplate jdbcObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcObject = new JdbcTemplate(dataSource);
    }

    public boolean createTask(Task task) {
        try {
            jdbcObject.update(CREATE_TASK, task.getId(), task.getTitle(), task.getDescription(), task.getDueDate(), task.getRemarks(), task.getStatus());
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean updateTask(Task task) {
        try {
            jdbcObject.update(UPDATE_TASK, task.getTitle(), task.getDescription(), task.getDueDate(), task.getRemarks(), task.getStatus(), task.getId());
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean deleteTask(int taskId) {
        try {
            jdbcObject.update(DELETE_TASK, new Object[] { taskId });
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public Task getTaskById(int taskId) {
        try {
            return jdbcObject.queryForObject(GET_TASK_BY_ID, new Object[] { taskId }, new TaskMapper());
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public List<Task> getAllTasks() {
        try {
            return jdbcObject.query(TASKS_LIST, new TaskMapper());
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}


package com.milktea.sales.inventory.system.mapper;

import com.milktea.sales.inventory.system.model.Task;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TaskMapper implements RowMapper<Task> {

    public Task mapRow(ResultSet rs, int rowNum) throws SQLException {
        Task task = new Task();

        task.setId(rs.getInt("id"));
        task.setTitle(rs.getString("title"));
        task.setDescription(rs.getString("description"));
        task.setDueDate(rs.getTimestamp("due_date"));
        task.setRemarks(rs.getString("remarks"));
        task.setStatus(rs.getString("status"));

        return task;
    }
}

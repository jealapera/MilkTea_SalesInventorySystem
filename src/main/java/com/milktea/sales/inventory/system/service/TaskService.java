package com.milktea.sales.inventory.system.service;

import com.milktea.sales.inventory.system.jdbc.TaskJDBC;
import com.milktea.sales.inventory.system.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskService {

    @Autowired
    private TaskJDBC taskJDBC;

    public boolean createTask(Task task) {
        return taskJDBC.createTask(task);
    }

    public boolean updateTask(Task task) {
        Task taskRecord = taskJDBC.getTaskById(task.getId());

        task.setId(taskRecord.getId());
        task.setTitle(task.getTitle());
        task.setDescription(task.getDescription());
        task.setDueDate(task.getDueDate());
        task.setRemarks(task.getRemarks());
        task.setStatus(task.getStatus());

        return taskJDBC.updateTask(task);
    }

    public boolean deleteTask(int taskId) {
        Task task = taskJDBC.getTaskById(taskId);
        if(task != null) {
            return taskJDBC.deleteTask(taskId);
        }
        return false;
    }
    public Task getTaskById(int taskId) {
        return taskJDBC.getTaskById(taskId);
    }
    public List<Task> getAllTasks() {
        return taskJDBC.getAllTasks();
    }
}

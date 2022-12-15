package com.milktea.sales.inventory.system.controller;

import com.milktea.sales.inventory.system.model.Task;
import com.milktea.sales.inventory.system.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }

    @RequestMapping(value={"", "task_list"}, method = RequestMethod.GET)
    public ModelAndView getAllTasks() {
        ModelAndView mav = new ModelAndView("task_list");
        mav.addObject("now", new Date());
        mav.addObject("tasks", taskService.getAllTasks());
        return mav;
    }

    @RequestMapping(value={"", "task_create"}, method = RequestMethod.GET)
    public ModelAndView showCreateTaskForm() {
        ModelAndView mav = new ModelAndView("task_create");
        Date dateNow = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        mav.addObject("dateNow", dateFormat.format(dateNow).toString());
        mav.addObject("task", new Task());
        return mav;
    }

    @RequestMapping(value = "task_create", method = RequestMethod.POST)
    public String createTask(@ModelAttribute("task") Task task) {
        ModelAndView mav = new ModelAndView("task_list");

        if(taskService.createTask(task)) {
            mav.addObject("message", "Saving is successful.");
        } else {
            mav.addObject("message", "Saving is not successful.");
        }

        mav.addObject("task", task);
//        return mav;
        return "redirect:/task_list";
    }

    @RequestMapping(value = "task/{id}", method = RequestMethod.GET)
    public ModelAndView showUpdateTaskForm(@PathVariable("id") int id) {
        ModelAndView mav = new ModelAndView("task_update");
        Date dateNow = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        mav.addObject("now", new Date());
        mav.addObject("dateNow", dateFormat.format(dateNow).toString());
        mav.addObject("task", taskService.getTaskById(id));
        return mav;
    }

    @RequestMapping(value = "task_update/{id}", method = RequestMethod.POST)
    public String updateTask(@ModelAttribute("task") Task task,
                                   @PathVariable("id") int id) {
        ModelAndView mav = new ModelAndView("task_list");

        if(taskService.updateTask(task)) {
            mav.addObject("message", "Saving is successful.");
        } else {
            mav.addObject("message", "Saving is not successful.");
        }
        mav.addObject("task", task);
//        return mav;
        return "redirect:/task_list";
    }

    @RequestMapping(value = "/delete_task", method = RequestMethod.GET)
    public String deleteTask(@RequestParam int id) {
        taskService.deleteTask(id);
        return "redirect:/task_list";
    }

}
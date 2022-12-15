package com.milktea.sales.inventory.system.controller;

import com.milktea.sales.inventory.system.model.Task;
import com.milktea.sales.inventory.system.model.User;
import com.milktea.sales.inventory.system.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class AuthController {
    @RequestMapping(value={"", "login"}, method = RequestMethod.GET)
    public ModelAndView showLoginForm() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    @RequestMapping(value = "login_user", method = RequestMethod.GET)
    public String login(@ModelAttribute("user") User user) {
        System.out.println("login function");

        return "redirect:/user_orders_list";
    }

    @RequestMapping(value = "user_orders_list", method = RequestMethod.GET)
    public ModelAndView getOrdersByUserId() {
        ModelAndView mav = new ModelAndView("user_orders_list");
        return mav;
    }
}

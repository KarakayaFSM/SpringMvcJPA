package com.fsm.demo.controller;

import com.fsm.demo.model.Employee;
import com.fsm.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    private final EmployeeService employeeService;

    @Autowired
    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public ModelAndView signUpPage() {
        return new ModelAndView("signUp")
                .addObject(new Employee());
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String signUp(@ModelAttribute("employee") Employee employee) {
        employeeService.save(employee);
        return "employeeProfile";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String employeeProfile(@ModelAttribute("employee") Employee employee) {
        return "employeeProfile";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView employeeEditPage(@PathVariable("id") Integer id) {

        return new ModelAndView("employeeEdit")
                .addObject(employeeService
                        .findById(id));
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public void editEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.save(employee);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    public String getAllEmployees(Model model) {

        model.addAttribute("employees",
                employeeService.getAll());

        return "employeesListDisplay";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String employeeSearch(Model model) {
        model.addAttribute("employee",new Employee());
        return "searchView";
    }

}
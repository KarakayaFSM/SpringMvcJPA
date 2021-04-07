package com.fsm.demo.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandler {
    public ModelAndView handle(EmployeeNotFound e) {
        ModelAndView model = new ModelAndView();
        model.addObject(e);
        model.setViewName("errorPage");
        return model;
    }
}

package com.fsm.demo.exception;

public class EmployeeNotFound extends RuntimeException {

    private String message;

    private EmployeeNotFound() {
    }

    private static final EmployeeNotFound e =
            new EmployeeNotFound();

    public static EmployeeNotFound getInstance() {
        return e;
    }

    public EmployeeNotFound setId(Integer id) {
        e.message = "Employee with id: " + id + "\nnot found";
        return e;
    }

}

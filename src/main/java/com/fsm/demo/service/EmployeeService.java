package com.fsm.demo.service;

import com.fsm.demo.exception.EmployeeNotFound;
import com.fsm.demo.model.Employee;
import com.fsm.demo.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {
    private final EmployeeRepository repository;

    @Autowired
    public EmployeeService(EmployeeRepository repository) {
        this.repository = repository;
    }

    public List<Employee> getAll() {
        return repository.findAll();
    }

    public void save(Employee employee) {
        repository.save(employee);
    }

    public Employee findById(Integer id) {
        return repository.findById(id)
                .orElseThrow(() -> EmployeeNotFound
                        .getInstance()
                        .setId(id)
                );
    }
}

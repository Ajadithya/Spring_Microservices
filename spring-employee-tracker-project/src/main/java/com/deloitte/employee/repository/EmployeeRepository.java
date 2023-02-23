package com.deloitte.employee.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.deloitte.employee.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	@Query(value = " select * from employees order by first_name asc", nativeQuery = true)
	List<Employee> findAll();

	
	
	
	
}

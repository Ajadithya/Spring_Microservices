package com.deloitte.employee.model;

import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="employment_history")
@Data
public class EmploymentHistory {
	
	@Id
	private Long id;
	
	@Column(insertable=false, updatable=false)
	private Long emp_id;
	
	
	
	private String organization_name;
	
	private Date from_date;
	
	private Date until_date;
	
	private String locaiton;
	
	private String country;
	
	private String post;
	
	private String skill_used;
	
	@ManyToOne()
	@JoinColumn(name="emp_id")
	private Employee employee;
	
	

}

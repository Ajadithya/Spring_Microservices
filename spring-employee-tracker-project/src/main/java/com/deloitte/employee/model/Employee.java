package com.deloitte.employee.model;

import java.sql.Blob;
import java.util.Date;
import java.util.List;




import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Entity
@Table(name="employees")
@Data
public class Employee {
	@Id
	@NotNull(message="cannot be null")
	private Long emp_id;
	
	@NotBlank(message="cannot be blank")
	@Pattern(regexp="^[a-zA-Z]$",message="must be only alphabets")
	@Size(min=1, max=50,message=" number of characters must be between 1 and 50 ")
	private String first_name;
	
	@Pattern(regexp="^[a-zA-Z]$",message="must be only alphabets")
	@Size(min=1, max=50,message=" number of characters must be between 1 and 50 ")
	@NotBlank(message="cannot be blank")
	private String last_name;
	
	
	private Date dob;
	
	@Pattern(regexp="^[A-za-z0-9]$",message="should contain only alphanumeric characters")
	@NotBlank(message="cannot be blank")
	private String pan_num;
	
	@Pattern(regexp="^[0-9]$",message="should contain only numbers")
	@NotBlank(message="cannot be blank")
	private String aadhar_num;

	@Size(min=10, max=10,message="number should be 10 digits")
	@Pattern(regexp="^[0-10]$",message="only numbers allowed")
	@NotBlank(message="cannot be blank")
	private String mobile_num;
	
	@Email(message="enter valid email")
	@NotBlank(message="cannot be blank")
	private String email_id;
	
	@Email(message="enter valid email")
	@NotBlank(message="cannot be blank")
	private String office_mail;
	
	@Size(max=200,message="cannot exceed 200 characters")
	@NotBlank(message="cannot be blank")
	private String permanent_address;
	
	@Size(max=200,message="cannot exceed 200 characters")
	@NotBlank(message="cannot be blank")
	private String present_address;
	
	@NotBlank(message="cannot be blank")
	@Pattern(regexp="^(A|B|AB|O)[-+]$",message="enter valid blood group with caps")
	private String blood_group;
	
	private Blob profile_pict;
	
	
	private Date doj;
	
//	@Pattern(regexp="^[1-20]$",message="only numbers alloweed 1-20")
	@Min(value=1)
	@Max(value=10)
	private Long emp_level;
	
	@Pattern(regexp="^[A-za-z]|[\\s]$",message="enter valid post name")
	@NotBlank(message="not blank pls")
	private String post_name;
	
	
//	@Size(min=3, max=8,message="should be between 3 and 8 characters")
	@NotNull(message="no blank pls")
	private Long basic_pay;
	
	
	@NotNull(message="not blank pls")
	@Min(value=100)
	@Max(value=10000,message="please enter below 10k")
	private Long house_allowance;
	
	@OneToMany(mappedBy = "employee", cascade = CascadeType.REMOVE)
	private List<EmploymentHistory> employment_history;
	
	
	
	

}

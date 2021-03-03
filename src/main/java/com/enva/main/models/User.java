package com.enva.main.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    
    @NotNull
	@Size(min = 3, max = 200, message="First name must be longer than 3 chars")
	private String firstName;
    
    @NotNull
	@Size(min = 3, max = 200, message="Last name must be longer than 3 chars")
	private String lastName;
    
    @NotNull
    @Email(message="Email should be in valid format")
    @Size(min=5, message="Email must be at least 3 charecters")
    private String email;

//    @NotNull
//    @Past
//    private Date birthday;
    
    @NotEmpty(message="Must enter a phone number")
    @Pattern(regexp="\\(\\d{3}\\)\\d{3}-\\d{4}", message="Please input a valid phone number!")
    private String phoneNumber;
    
    @NotNull(message="Select a gender")
    private String gender;

    @NotNull
    @Size(min=8, message="Password must be greater than eight charecters!")
    private String password;
    @Transient
    private String passwordConfirmation;
    
    @Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;    
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="section_id")

    private Section current_section;

    @OneToMany(mappedBy="lead", fetch=FetchType.LAZY)
    private List<Section> sections;
    
	
	public User() {
    }
    // other getters and setters removed for brevity
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}
	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Section getCurrent_section() {
		return current_section;
	}
	public void setCurrent_section(Section current_section) {
		this.current_section = current_section;
	}
	public List<Section> getSections() {
		return sections;
	}
	public void setSections(List<Section> sections) {
		this.sections = sections;
	}

}
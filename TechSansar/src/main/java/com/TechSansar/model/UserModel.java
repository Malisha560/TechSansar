package com.TechSansar.model;


public class UserModel {

	private int id;
	private String firstName;
	private String lastName;
	private String userName;
	private String gender;
	private String email;
	private String number;
	private String password;
	private RoleModel role;

	public UserModel() {
	}

	public UserModel(String username, String pasword) {
		this.userName = username;
		this.password = pasword;
	}

	public UserModel(int id, String firstName, String lastName, String userName, String gender,
			String email, String number, String password, RoleModel role) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.gender = gender;
		this.email = email;
		this.number = number;
		this.password = password;
		this.role = role;
	}

	public UserModel(String firstName, String lastName, String userName, String gender, String email,
			String number, String password, RoleModel role) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.gender = gender;
		this.email = email;
		this.number = number;
		this.password = password;
		this.role = role;
	}

	public UserModel(int id, String firstName, String lastName, RoleModel role, String email, String number) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.role = role;
		this.email = email;
		this.number = number;
	}
	
	public UserModel(int id, String firstName, String lastName, String email, String number) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.number = number;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RoleModel getRole() {
		return role;
	}

	public void setProgram(RoleModel role) {
		this.role = role;
	}

}
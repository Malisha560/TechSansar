package com.TechSansar.model;

public class RoleModel {

	private int role_id;
	private String name;
	private String type;

	public RoleModel() {
	}


	public RoleModel(int role_id, String name, String type) {
		super();
		this.role_id = role_id;
		this.name = name;
		this.type = type;
	}

	public RoleModel(String name) {
		this.name = name;
	}

	public int getrole_id() {
		return role_id;
	}

	public void setrole_id(int role_id) {
		this.role_id = role_id;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}


	public String gettype() {
		return type;
	}

	public void settype(String type) {
		this.type = type;
	}

}
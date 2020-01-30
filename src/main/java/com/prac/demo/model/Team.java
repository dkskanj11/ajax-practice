package com.prac.demo.model;

public class Team {

	private int id;
	private String tName;
	private int tYear;
	
	public Team() {
		// TODO Auto-generated constructor stub
	}

	public Team(int id, String tName, int tYear) {
		super();
		this.id = id;
		this.tName = tName;
		this.tYear = tYear;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public int gettYear() {
		return tYear;
	}

	public void settYear(int tYear) {
		this.tYear = tYear;
	}
	
	
}

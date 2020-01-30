package com.prac.demo.model;

public class Player {

	private int id;
	private String pName;
	private int pNo;
	private int pTeamId;
	private int pAge;
	
	public Player() {
		// TODO Auto-generated constructor stub
	}

	public Player(int id, String pName, int pNo, int pTeamId, int pAge) {
		super();
		this.id = id;
		this.pName = pName;
		this.pNo = pNo;
		this.pTeamId = pTeamId;
		this.pAge = pAge;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getpTeamId() {
		return pTeamId;
	}

	public void setpTeamId(int pTeamId) {
		this.pTeamId = pTeamId;
	}

	public int getpAge() {
		return pAge;
	}

	public void setpAge(int pAge) {
		this.pAge = pAge;
	}
	
	
}

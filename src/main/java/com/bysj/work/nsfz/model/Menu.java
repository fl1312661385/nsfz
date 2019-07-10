package com.bysj.work.nsfz.model;

public class Menu {
    private int id;
    private int  pid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Menu(int id, int pid) {
		super();
		this.id = id;
		this.pid = pid;
	}
	
	public Menu() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", pid=" + pid + "]";
	}
 

}

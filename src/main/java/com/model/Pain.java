package com.model;

public class Pain {
	private String name;
	private float y;
	public Pain() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pain(String name, float y) {
		super();
		this.name = name;
		this.y = y;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getY() {
		return y;
	}
	public void setY(float y) {
		this.y = y;
	}
	@Override
	public String toString() {
		return "Pain [name=" + name + ", y=" + y + "]";
	}
}

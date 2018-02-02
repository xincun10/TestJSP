package com.beans;

public class NumberBean {

	private double num = 0;
	public NumberBean(){}
	public NumberBean(double number)
	{
		setNum(number);
	}
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}
	
}

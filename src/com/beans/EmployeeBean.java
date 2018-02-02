package com.beans;

public class EmployeeBean {

	private NameBean name;
	private CompanyBean company;
	
	public EmployeeBean(){}
	public EmployeeBean(NameBean name, CompanyBean company) {
		this.name = name;
		this.company = company;
	}
	
	public NameBean getName() {
		return name;
	}
	public void setName(NameBean name) {
		this.name = name;
	}
	public CompanyBean getCompany() {
		return company;
	}
	public void setCompany(CompanyBean company) {
		this.company = company;
	}
	
}

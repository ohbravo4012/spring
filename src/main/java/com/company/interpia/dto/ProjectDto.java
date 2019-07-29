package com.company.interpia.dto;

public class ProjectDto {
	private int no;
	private String kor_name;
	private String jumin_no;
	private String pro_name;
	private String pro_period1;
	private String pro_period2;
	private String pro_customer;
	private String pro_company;
	private String pro_field;
	private String pro_role;
	private String pro_type;
	private String pro_os;
	private String pro_lang;
	private String pro_dbms;
	private String pro_tool;
	private String pro_commu;
	private String pro_other;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getKor_name() {
		return kor_name;
	}

	public void setKor_name(String kor_name) {
		this.kor_name = kor_name;
	}

	public String getJumin_no() {
		return jumin_no;
	}

	public void setJumin_no(String jumin_no) {
		this.jumin_no = jumin_no;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_period1() {
		return pro_period1;
	}

	public void setPro_period1(String pro_period1) {
		this.pro_period1 = pro_period1;
	}

	public String getPro_period2() {
		return pro_period2;
	}

	public void setPro_period2(String pro_period2) {
		this.pro_period2 = pro_period2;
	}

	public String getPro_customer() {
		return pro_customer;
	}

	public void setPro_customer(String pro_customer) {
		this.pro_customer = pro_customer;
	}

	public String getPro_company() {
		return pro_company;
	}

	public void setPro_company(String pro_company) {
		this.pro_company = pro_company;
	}

	public String getPro_field() {
		return pro_field;
	}

	public void setPro_field(String pro_field) {
		this.pro_field = pro_field;
	}

	public String getPro_role() {
		return pro_role;
	}

	public void setPro_role(String pro_role) {
		this.pro_role = pro_role;
	}

	public String getPro_type() {
		return pro_type;
	}

	public void setPro_type(String pro_type) {
		this.pro_type = pro_type;
	}

	public String getPro_os() {
		return pro_os;
	}

	public void setPro_os(String pro_os) {
		this.pro_os = pro_os;
	}

	public String getPro_lang() {
		return pro_lang;
	}

	public void setPro_lang(String pro_lang) {
		this.pro_lang = pro_lang;
	}

	public String getPro_dbms() {
		return pro_dbms;
	}

	public void setPro_dbms(String pro_dbms) {
		this.pro_dbms = pro_dbms;
	}

	public String getPro_tool() {
		return pro_tool;
	}

	public void setPro_tool(String pro_tool) {
		this.pro_tool = pro_tool;
	}

	public String getPro_commu() {
		return pro_commu;
	}

	public void setPro_commu(String pro_commu) {
		this.pro_commu = pro_commu;
	}

	public String getPro_other() {
		return pro_other;
	}

	public void setPro_other(String pro_other) {
		this.pro_other = pro_other;
	}

	@Override
	public String toString() {
		return "ProjectDto [no=" + no + ", kor_name=" + kor_name + ", jumin_no=" + jumin_no + ", pro_name=" + pro_name
				+ ", pro_period1=" + pro_period1 + ", pro_period2=" + pro_period2 + ", pro_customer=" + pro_customer
				+ ", pro_company=" + pro_company + ", pro_field=" + pro_field + ", pro_role=" + pro_role + ", pro_type="
				+ pro_type + ", pro_os=" + pro_os + ", pro_lang=" + pro_lang + ", pro_dbms=" + pro_dbms + ", pro_tool="
				+ pro_tool + ", pro_commu=" + pro_commu + ", pro_other=" + pro_other + "]";
	}

}

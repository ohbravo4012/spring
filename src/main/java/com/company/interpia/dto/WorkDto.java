package com.company.interpia.dto;

public class WorkDto {
	private int no;
	private String kor_name;
	private String jumin_no;
	private String work_project;
	private String work_place;
	private String work_start;
	private String work_end;
	private String work_sales;
	private String work_dday;
	private String work_day;
	private String work_customer;

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

	public String getWork_project() {
		return work_project;
	}

	public void setWork_project(String work_project) {
		this.work_project = work_project;
	}

	public String getWork_place() {
		return work_place;
	}

	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}

	public String getWork_start() {
		return work_start;
	}

	public void setWork_start(String work_start) {
		this.work_start = work_start;
	}

	public String getWork_end() {
		return work_end;
	}

	public void setWork_end(String work_end) {
		this.work_end = work_end;
	}

	public String getWork_sales() {
		return work_sales;
	}

	public void setWork_sales(String work_sales) {
		this.work_sales = work_sales;
	}

	public String getWork_dday() {
		return work_dday;
	}

	public void setWork_dday(String work_dday) {
		this.work_dday = work_dday;
	}

	public String getWork_day() {
		return work_day;
	}

	public void setWork_day(String work_day) {
		this.work_day = work_day;
	}

	public String getWork_customer() {
		return work_customer;
	}

	public void setWork_customer(String work_customer) {
		this.work_customer = work_customer;
	}

	@Override
	public String toString() {
		return "WorkDto [no=" + no + ", kor_name=" + kor_name + ", jumin_no=" + jumin_no + ", work_project="
				+ work_project + ", work_place=" + work_place + ", work_start=" + work_start + ", work_end=" + work_end
				+ ", work_sales=" + work_sales + ", work_dday=" + work_dday + ", work_day=" + work_day
				+ ", work_customer=" + work_customer + "]";
	}

}

package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class HairstylistVO {
	private int h_no;
	private int m_no; 
	private int a_no; 
	private long h_price;
	private String h_self;
	private String h_sel;
	private String h_license;
	private String h_businessNo;
	private int h_best;
	private int h_career;
	private long h_salary;
	private Timestamp h_date;
	private double h_RAvg;
	private int h_RTotal;
}

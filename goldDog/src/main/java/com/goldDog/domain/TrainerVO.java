package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class TrainerVO {
	private int t_no;
	private int m_no; 
	private int a_no; 
	private long t_price;
	private String t_self;
	private String t_sel;
	private String t_license;
	private String t_businessNo;
	private int t_best;
	private int t_career;
	private long t_salary;
	private Timestamp t_date;
	private double t_RAvg; 
	
}
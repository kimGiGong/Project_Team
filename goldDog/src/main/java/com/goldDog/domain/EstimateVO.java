package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class EstimateVO {
	private int e_no;
	private int m_no_puppy;
	private String e_note;
	private String e_service;
	private int m_no_manager;
	private String e_trainning;
	private int e_extraprice;
	private String e_extra_reason;
	private int e_total;
	private int e_con;
	private String e_reject;
	private int d_no;
	private Timestamp e_date;
	private int a_no;
}

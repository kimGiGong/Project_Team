package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int r_no;
	private int m_no;
	private String r_text ;
	private int r_score;
	private Timestamp r_date;
	private String r_img;
	private int t_no;
	private int h_no;
	
}

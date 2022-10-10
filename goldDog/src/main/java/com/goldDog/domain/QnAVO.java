package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QnAVO {
	private int q_no ;
	private String q_img;
	private String q_title;
	private String q_content; 
	private Timestamp q_date;
	private int q_readcount;
	
	
	
}

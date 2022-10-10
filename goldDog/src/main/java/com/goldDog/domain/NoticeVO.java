package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeVO {
	private int n_no ;
	private String n_title;
	private String n_content; 
	private Timestamp n_date;
	private int n_readcount;
}

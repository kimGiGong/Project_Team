package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PayVO {
	
	private String p_order;
	private int m_no;
	private int t_no;
	private String t_no_name;
	private String p_name_user;
	private int p_status;
	private int p_okno;
	private Timestamp p_time;
	private int p_amount; 
	
}

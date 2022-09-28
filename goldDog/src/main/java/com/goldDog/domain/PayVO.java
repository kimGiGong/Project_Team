package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PayVO {
	
	private int p_order;
	private int m_no;
	private String p_name_manager;
	private String p_name_user;
	private int p_status;
	private int p_okno;
	private Timestamp p_time;
	
}

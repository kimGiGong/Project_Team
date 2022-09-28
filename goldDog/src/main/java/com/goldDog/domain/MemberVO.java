package com.goldDog.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberVO {
	
	private int m_no;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_nick;
	private int m_manager;
	private int m_status;
	private String m_img;
	private Timestamp m_date;
	
	
}

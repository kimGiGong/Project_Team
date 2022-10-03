package com.goldDog.domain;

import java.sql.Timestamp;
import java.util.List;

import com.goldDog.domain.AuthVO; 

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
	private String m_type;
	private int m_status;
	private String m_img;
	private Timestamp m_date;
	private List<AuthVO> authList; // 권한 (여러개) 저장가능한 변수
	
	
}

package com.goldDog.persistence.bum;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;


public interface MemberMapper {
	
	//회원 추가
	public int addMember(MemberVO member);
	
	//회원 추가 (주소)
	public int addaddress(AddressVO address);
	
	//회원 추가 (권한)
	public int addAuth(AuthVO auth);
	
	
	/* 아이디 비번 확인
	public int idPwCheck(MemberVO member); */

	//회원 한 명 정보 가져오기
	public MemberVO getMember(String m_id);
	
	//회원 한 명 정보 가져오기
	public int getMno(String m_id);
	
	//회원 정보 수정
	public int updateMember(MemberVO member);
	
	//회원 삭제
	public int deleteMember(String m_no);
	
	
	
}
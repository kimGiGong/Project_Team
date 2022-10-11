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
	
	//아이디 확인
	public int idCheck(String m_id);
	
	//이메일 확인
	public int emailCheck(String m_email);
	
	//닉네임 확인
	public int nickCheck(String m_nick);
	
	//이름 확인
	public int nameCheck(String m_name);
	
	//비밀번호 업데이트
	public int updatePw(MemberVO member);
	
	//getMemberEmail
	public MemberVO getMemberEmail(String m_id);
	
	//getNameEmail
	public MemberVO getNameEmail(String m_email);
	
	//getAddress
	public AddressVO getAddress(int m_no);

	//updateAddress
	public int updateAddress(AddressVO address);
	
}
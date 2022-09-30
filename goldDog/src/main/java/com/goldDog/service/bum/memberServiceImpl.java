package com.goldDog.service.bum;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.MemberVO;
import com.goldDog.persistence.bum.MemberMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class memberServiceImpl implements memberService{
	
	 
	@Autowired 
	private MemberMapper mapper;

	@Override	
	public int addMember(MemberVO member) {
		
		return mapper.addMember(member);
	}

	@Override
	public int addAuth(String auth, String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int idPwCheck(MemberVO member) {
		int result = mapper.idPwCheck(member);	//mapper 메서드 실행시키고
		return result;
	}
	@Override
	public MemberVO getMember(String m_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int ModifyMember(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}

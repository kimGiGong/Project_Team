package com.goldDog.service.bum;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.persistence.bum.MemberMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class memberServiceImpl implements memberService{
	
	//비밀번호 암호화를 위한 객체 자동 주입
	
	//BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
	 
	@Autowired 
	private MemberMapper mapper;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	 
	
	/* 회원가입 처리*/
	@Override	
	public int addMember(MemberVO member) {
		log.info("*************service add member pw before: **"+ member.getM_pw());
		//비밀번호 암호화
		member.setM_pw(bcryptPasswordEncoder.encode(member.getM_pw()));
		mapper.addMember(member);
		
		return mapper.addMember(member);
	}

	@Override
	public int addAuth(String auth, int m_no) {
		int result= -1;
		AuthVO authVO = new AuthVO();
		
		authVO.setM_no(m_no);
		if(auth.equals("member")) {			// 일반 회원 가입시 권한 추가
			authVO.setAuth("ROLE_MEMBER");
			result =mapper.addAuth(authVO);
			 
		}else if (auth.equals("trainer")) { 	// 훈련사로 가입시 권한 추가
			authVO.setAuth("ROLE_TRAINER");
			result =mapper.addAuth(authVO);
			
		}
		
		return result ;
		
	}
	/* 회원 가입 주소 처리 */
	@Override	
	public int addaddress(AddressVO address) {
		return mapper.addaddress(address);
	}

	
	/* 로그인 처리*/
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

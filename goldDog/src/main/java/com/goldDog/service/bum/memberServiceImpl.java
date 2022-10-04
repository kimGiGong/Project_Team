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
		int result1 = mapper.addMember(member);
		
		//int result2 = mapper.addaddress(address);
		return result1;
	}
	
	/* 회원 가입 주소 처리 */
	@Override
	public int addaddress(AddressVO address, int m_no) {
		int result= -1;
		
		address.setM_no(m_no);
		
		result = mapper.addaddress(address);
		
		return 0;
	}
	/* 회원 가입 권한 처리 */
	@Override
	public int addAuth(String auth, int m_no) {
		int result= -1;
		AuthVO authVO = new AuthVO();
		
		authVO.setM_no(m_no);
		if(auth.equals("member")) {			// 일반 회원 가입시 권한 추가
			authVO.setAuth("ROLE_MEMBER");
			result = mapper.addAuth(authVO);
			 
		}else if (auth.equals("trainer")) { 	// 훈련 매니저로 가입시 권한 추가
			authVO.setAuth("ROLE_TRAINER");
			result = mapper.addAuth(authVO);
			
		}else if (auth.equals("hairstylist")) { 	// 미용 매니저로 가입시 권한 추가
			authVO.setAuth("ROLE_HAIR");
			result = mapper.addAuth(authVO);
		}
		else if (auth.equals("manager")) { 	// 통합 매니저로 가입시 권한 추가
			authVO.setAuth("ROLE_TRAINER");
			result = mapper.addAuth(authVO);
			authVO.setAuth("ROLE_HAIR");
			result = mapper.addAuth(authVO);
		}
		
		return 0 ;
		
	}

	/* 로그인 처리
	@Override
	public int idPwCheck(MemberVO member) {
		int result = mapper.idPwCheck(member);	//mapper 메서드 실행시키고
		return result;
	} */
	
	@Override
	public MemberVO getMember(String m_id) {
		return mapper.getMember(m_id);
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

	@Override
	public int getMno(String m_id) {
		
		return mapper.getMno(m_id);
				
	}



	

}

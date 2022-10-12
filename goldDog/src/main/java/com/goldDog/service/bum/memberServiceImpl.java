package com.goldDog.service.bum;


import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.persistence.bum.MemberMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class memberServiceImpl implements memberService{
	 
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
	@Override
	public MemberVO getMember(String m_id) {
		return mapper.getMember(m_id);
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
	
	@Override
	public void sendEmail(MemberVO vo, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "cqt95@naver.com";
		String hostSMTPpwd = "qjatjr95!!";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "cqt95@naver.com";
		String fromName = "금댕이";
		String subject = "";
		String msg = "";

		if(div.equals("findpw")) {
			subject = "금댕이 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getM_id() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getM_pw() + "</p></div>";
		}
		// 받는 사람 E-Mail 주소
		String mail = vo.getM_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	@Override
	public void findPw(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		
		MemberVO ck = mapper.getMemberEmail(vo.getM_id());
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(mapper.idCheck(vo.getM_id()) == 0 ) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!vo.getM_email().equals(ck.getM_email())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setM_pw(pw);
			
			// 비밀번호 변경 메일 발송
			sendEmail(vo, "findpw");
			
			// 비밀번호 변경
			updatePw(vo);
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}
	
	@Override
	public void sendIdEmail(MemberVO vo, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "cqt95@naver.com";
		String hostSMTPpwd = "qjatjr95!!";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "cqt95@naver.com";
		String fromName = "금댕이";
		String subject = "";
		String msg = "";

		if(div.equals("findId")) {
			subject = "금댕이 아이디 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getM_name() + "님의 아이디 입니다.</h3>";
			msg += "<p>아이디 : ";
			msg += vo.getM_id() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getM_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
	
	@Override
	public void findId(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		
		MemberVO ck = mapper.getNameEmail(vo.getM_name());
		PrintWriter out = response.getWriter();
		// 가입된 이름이 없으면
		if(mapper.nameCheck(vo.getM_name()) == 0) {
			out.print("등록되지 않은 이름입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!vo.getM_email().equals(ck.getM_email())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}
		else {
			// 아이디 메일 발송
			sendIdEmail(ck, "findId");
			
			out.print("이메일로 아이디를 발송하였습니다.");
			out.close();
		}
	}

	@Override
	public int idCheck(String m_id) {
		int result = mapper.idCheck(m_id);
		System.out.println("result: " + result);
		return result;
	}
	@Override
	public int emailCheck(String m_email) {
		int result = mapper.emailCheck(m_email);
		System.out.println("result: " + result);
		return result;
	}

	@Override
	public int nickCheck(String m_nick) {
		int result = mapper.nickCheck(m_nick);
		System.out.println("result: " + result);
		return result;
	}

	@Override
	public int updatePw(MemberVO member) {
		//비밀번호 암호화
		member.setM_pw(bcryptPasswordEncoder.encode(member.getM_pw()));
		int result1 = mapper.updatePw(member);
		mapper.updatePw(member);
		//int result2 = mapper.addaddress(address);
		return result1;
	}
	
	@Override
	public int nameCheck(String m_name) {
		return mapper.nameCheck(m_name); 
	}

	@Override 
	public MemberVO getMemberEmail(String m_id) {
		return mapper.getMemberEmail(m_id);
	}

	@Override
	public MemberVO getNameEmail(String m_email) {
		return mapper.getNameEmail(m_email); 
	}
	
	@Override
	public int modifyMember(MemberVO member) {
		//id pw 체크 추가
		/*int result = 0;
		MemberVO dbMember = getMember(member.getM_id());
		if(bcryptPasswordEncoder.matches(member.getM_pw(), dbMember.getM_pw())) {
			
			result = mapper.updateMember(member);
			
			// 비밀번호 암호화 변경
			updatePw(member);
		} */
		int result = mapper.updateMember(member);
		updatePw(member);
		return result;
	}
	
	@Override
	public AddressVO getAddress(int m_no) {
		return mapper.getAddress(m_no);
	}
	
	@Override
	public int modifyAddress(AddressVO address) {
		int result = mapper.updateAddress(address);
		return result;
	}
	
	@Override
	public int addReview(ReviewVO review) {
		return mapper.addReview(review);
	}


	

	

	


	

}

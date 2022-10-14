package com.goldDog.service.bum;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.NoticeVO;
import com.goldDog.domain.ReviewVO;

public interface memberService {

		//회원 가입 (추가)
		public int addMember(MemberVO member);
		
		//회원가입 (주소)
		public int addaddress(AddressVO address, int m_no);
		
		//회원가입 (권한)
		public int addAuth(String auth, int m_no);
		
		/* id, pw 확인
		public int idPwCheck(MemberVO member); */
		
		// 회원 정보 가져오기
		public MemberVO getMember(String m_id);
		
		// 회원 정보(m_no) 가져오기
		public int getMno(String m_id);
		
		// 회원 탈퇴 처리
		public int deleteMember(MemberVO member);
		
		//비밀번호 이메일발송
		public void sendEmail(MemberVO vo, String div) throws Exception;

		//비밀번호찾기
		public void findPw(HttpServletResponse resp, MemberVO vo) throws Exception;
		
		//아이디 확인
		public int idCheck(String m_id);
		
		//이메일 확인
		public int emailCheck(String m_email);
		
		//닉네임 확인
		public int nickCheck(String m_nick);
		
		//아이디 이메일발송
		public void sendIdEmail(MemberVO vo, String div) throws Exception;
		
		//아이디찾기
		public void findId(HttpServletResponse resp, MemberVO vo) throws Exception;
		
		//이름 확인
		public int nameCheck(String m_id);
				
		//비밀번호 업데이트
		public int updatePw(MemberVO member);
		
		// 회원 정보 가져오기 (아이디)
		public MemberVO getMemberEmail(String m_id);

		// 회원 정보 가져오기 (이름)
		public MemberVO getNameEmail(String m_email);
		
		//회원 정보 수정 처리
		public int modifyMember(MemberVO member);
		
		//주소 가져오기
		public AddressVO getAddress(int m_no);
		
		//주소 수정
		public int modifyAddress(AddressVO address);
		
		//addReivew
		public int addReview(ReviewVO review);
		
		//insertDog
		public int insertDog(DogVO dog);
		
		//getDog
		public List<DogVO> getDog(int m_no);
		
		//getOneDog
		public DogVO getOneDog(int d_no);

		//modifytDog
		public int modifytDog(DogVO dog);
		
}

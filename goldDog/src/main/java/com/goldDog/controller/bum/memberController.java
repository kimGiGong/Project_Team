package com.goldDog.controller.bum;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.service.bum.memberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	@Autowired
	private memberService service;
	
	
	@RequestMapping("mypage")
	public String a123444() {
		
		return "mypage/mypage";
	}
	
	@RequestMapping("hmain")
	public String a1234445() {
		
		return "main/hmain";
	}
	
	@GetMapping("test1")
	public void test() {
		log.info("************ test1 ************");
	}
	
	/*
	@GetMapping("login")
	public void login() {
		log.info("************ login ************");
	}
	
	@PostMapping("login")
	public String loginPro(MemberVO member, String auto, Model model, HttpSession session) {
		log.info(member);
		log.info(auto);
		//비지니스 로직 처리
		int result = service.idPwCheck(member);
		if(result == 1) { //로그인 성공
			session.setAttribute("memId", member.getM_id());
			return "redirect:/main/tmain";	//컨트롤러에 재요청하여 메인으로 바로 이동
		}else {
			model.addAttribute("result",result); //결과 pro페이지로 전달
			return "/member/loginPro";
		}
	}
	*/
	
	//로그인 폼 요청 (처리는 시큐리티가 해줌)
	@GetMapping("login")
	public void login(String error, HttpServletRequest request) {
		log.info("********************** login ! **********************");
		log.info("error : " + error);
		
		//접근 제한때문에 로그인폼으로 강제 이동되었다면 직전 url 뽑아서 session 임시저장
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referrer);
	}

	@PostMapping("signup")
	public String signup(MemberVO member, AddressVO address, @Param("auth") String auth,RedirectAttributes rttr) {
		log.info("********************** signupPro MemberVO : " + member);
		log.info("********************** signupPro AddressVO : " + address);
		
		int result = service.addMember(member); 		//회원 추가
		int mno = service.getMno(member.getM_id());
		log.info(" ========================"+address+" ========================");
	
		service.addaddress(address, mno); 	//주소 추가
		
		service.addAuth(auth, mno); 			//권한 추가
		
		if(result == 1) {
			rttr.addFlashAttribute("msg", "success");
		}
		return "redirect:/member/login";
	}
	
	//회원가입
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
	}
	
	@GetMapping("idFind")
	public void idFind() {
		log.info("************ idFind ************");
	}
	
	@GetMapping("pwFind")
	public void pwFind() {
		log.info("************ pwFind ************");
	}
	
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	@ResponseBody
	public int memberIdChkPOST(String m_id) throws Exception{
		int result = service.idCheck(m_id);
		if(result != 0) {
			return result;	// 중복 아이디가 존재
		} else {
			return result;	// 중복 아이디 x
		}	
		
	}
	
	@RequestMapping(value = "emailCheck", method = RequestMethod.POST)
	@ResponseBody
	public int memberemailCheck(String m_email) throws Exception{
		int result = service.emailCheck(m_email);
		if(result != 0) {
			return result;	// 중복 아이디가 존재
		} else {
			return result;	// 중복 아이디 x
		}	
		
	}
	
	@RequestMapping(value = "nickCheck", method = RequestMethod.POST)
	@ResponseBody
	public int membernickCheck(String m_nick) throws Exception{
		int result = service.nickCheck(m_nick);
		if(result != 0) {
			return result;	// 중복 아이디가 존재
		} else {
			return result;	// 중복 아이디 x
		}	
		
	} 
	
	
	
	
}

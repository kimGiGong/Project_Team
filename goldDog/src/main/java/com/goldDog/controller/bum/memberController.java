package com.goldDog.controller.bum;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;

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
	
	//로그인 폼 요청 (처리는 시큐리티가 해줌)
	@GetMapping("login")
	public void login(String error, HttpServletRequest request) {
		log.info("********************** login ! **********************");
		log.info("error : " + error);
		
		//접근 제한때문에 로그인폼으로 강제 이동되었다면 직전 url 뽑아서 session 임시저장
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referrer);
	}
	
	//회원가입
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
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
	
	@GetMapping("pwFind")
	public void findPwGET() throws Exception{
	}
 
	@PostMapping("pwFind")
	public void findPwPOST(@ModelAttribute MemberVO member, HttpServletResponse response) throws Exception{
		service.findPw(response, member);
	}
	
	@GetMapping("idFind")
	public void findIdGET() throws Exception{
	}
 
	@PostMapping("idFind")
	public void findIdPOST(@ModelAttribute MemberVO member, HttpServletResponse response) throws Exception{
		service.findId(response, member);
		log.info(member.getM_name()+"********************"+member.getM_email());
	}
	
	//아이디 중복 검사
	@PostMapping("idCheck")
	@ResponseBody
	public int memberIdChkPOST(String m_id) throws Exception{
		
		int result = service.idCheck(m_id);
		
		return result;
	} // memberIdChkPOST() 종료
	
	//이메일 중복 검사
	@PostMapping("emailCheck")
	@ResponseBody
	public int memberemailChkPOST(String m_email) throws Exception{
		
		int result = service.emailCheck(m_email);
		
		return result;
	} // memberemailChkPOST() 종료
	
	//닉네임 중복 검사
	@PostMapping("nickCheck")
	@ResponseBody
	public int membernickChkPOST(String m_nick) throws Exception{
		
		int result = service.nickCheck(m_nick);
		
		return result;
	} // membernickChkPOST() 종료
	
	@GetMapping("modify")
	public void modify(Authentication auth, Model model) {
		log.info("******* modify form *******");
		//Authentication 매개변수 선언하면 principal등 정보 꺼낼 수 있다.
		CustomUser user = (CustomUser)auth.getPrincipal();
		log.info("********** user : " + user);
		MemberVO member =  service.getMember(user.getUsername()); //== principal.username
		int mno = service.getMno(user.getUsername());
		AddressVO address = service.getAddress(mno); 
		
		model.addAttribute("member", member);
		model.addAttribute("address", address);
	}
	@PostMapping("modify")
	public String modifyPro(MemberVO member, AddressVO address, Authentication auth, Model model) {
		log.info("******* modify Pro *******");
		log.info("******* modify Pro customUser : "+((CustomUser)auth.getPrincipal()).getUsername());
		
		member.setM_id(((CustomUser)auth.getPrincipal()).getUsername()); //auth에서 username == id 꺼내 vo에 채우기
		int result = service.modifyMember(member);
		log.info("******* modify Pro result : " + result);
		
		int mno = service.getMno(((CustomUser)auth.getPrincipal()).getUsername());
		log.info("******* modify mno : " + mno);
		
		address.setM_no(mno);
		int result2 = service.modifyAddress(address);
		log.info("******* modify Address result : " + result2);
		
		model.addAttribute("result", result);
		model.addAttribute("result2", result2);
		
		return "member/modifyPro";
	}
	
	
	
	
	
	
	
	
	
}

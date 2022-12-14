package com.goldDog.controller.bum;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.NoticeVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.instance.MyPageService;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	@Autowired
	private memberService service;
	
	@Autowired
	private MainService mainService;
	
	@Autowired
	private MyPageService mypageService;
	
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
	
	//????????? ??? ?????? (????????? ??????????????? ??????)
	@GetMapping("login")
	public void login(String error, HttpServletRequest request) {
		log.info("********************** login ! **********************");
		log.info("error : " + error);
		
		//?????? ??????????????? ?????????????????? ?????? ?????????????????? ?????? url ????????? session ????????????
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referrer);
	}
	
	//????????????
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
	}
	@PostMapping("signup")
	public String signup(MemberVO member, AddressVO address, @Param("auth") String auth,RedirectAttributes rttr) {
		log.info("********************** signupPro MemberVO : " + member);
		log.info("********************** signupPro AddressVO : " + address);
		member.setM_img("default.png");
		
		int result = service.addMember(member); 		//?????? ??????
		int mno = service.getMno(member.getM_id());
		log.info(" ========================"+address+" ========================");
	
		service.addaddress(address, mno); 	//?????? ??????
		
		service.addAuth(auth, mno); 			//?????? ??????
		
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
	
	//????????? ?????? ??????
	@PostMapping("idCheck")
	@ResponseBody
	public int memberIdChkPOST(String m_id) throws Exception{
		
		int result = service.idCheck(m_id);
		
		return result;
	} // memberIdChkPOST() ??????
	
	//????????? ?????? ??????
	@PostMapping("emailCheck")
	@ResponseBody
	public int memberemailChkPOST(String m_email) throws Exception{
		
		int result = service.emailCheck(m_email);
		
		return result;
	} // memberemailChkPOST() ??????
	
	//????????? ?????? ??????
	@PostMapping("nickCheck")
	@ResponseBody
	public int membernickChkPOST(String m_nick) throws Exception{
		
		int result = service.nickCheck(m_nick);
		
		return result;
	} // membernickChkPOST() ??????
	
	@GetMapping("modify")
	public void modify(Authentication auth, Model model) {
		log.info("******* modify form *******");
		//Authentication ???????????? ???????????? principal??? ?????? ?????? ??? ??????.
		CustomUser user = (CustomUser)auth.getPrincipal();
		log.info("********** user : " + user);
		MemberVO member =  service.getMember(user.getUsername()); //== principal.username
		int mno = service.getMno(user.getUsername());
		AddressVO address = service.getAddress(mno); 
		
		model.addAttribute("member", member);
		model.addAttribute("address", address);
	}
	@PostMapping("modify")
	public String modifyPro(MemberVO member, AddressVO address, Authentication auth, Model model, MultipartHttpServletRequest request) {
		try {
			log.info("******* modify Pro *******");
			log.info("******* modify Pro customUser : "+((CustomUser)auth.getPrincipal()).getUsername());
			MemberVO M_img=service.getMember(((CustomUser)auth.getPrincipal()).getUsername());
			
			member.setM_id(((CustomUser)auth.getPrincipal()).getUsername()); //auth?????? username == id ?????? vo??? ?????????
			
			int mno = service.getMno(((CustomUser)auth.getPrincipal()).getUsername());
			log.info("******* modify mno : " + mno);
			address.setM_no(mno);
							
			MultipartFile mf = request.getFile("part_img");
			
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			if(mf.getSize() != 0) {
				log.info(mf.getOriginalFilename()+"?????? ????????? ?????? ??????");
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // ????????? ????????? ?????? ??????
				
				// ?????? ?????? ????????? ?????? ??? ????????? ??????
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				//???????????? ?????? ???????????? ????????????
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// ????????? ?????????
				newFileName= uuid + ext;
			}
			//DB ????????? ???????????? ????????? ??????.
			int result = 0;
			int result2 = 0;
			if(mf.getSize() == 0) {
				member.setM_img(M_img.getM_img());
				log.info("?????????????************************************");
				result = service.modifyMember(member);
				log.info("******* modify Pro result : " + result);
				result2 = service.modifyAddress(address);
				log.info("******* modify Address result : " + result2);
				
				model.addAttribute("result", result);
				model.addAttribute("result2", result2);
				 
			}else if(mf.getSize() != 0) {
				member.setM_img(newFileName);
				log.info("?????? ???????????? ***************************");
				result = service.modifyMember(member);
				log.info("******* modify Pro result : " + result);
				result2 = service.modifyAddress(address);
				log.info("******* modify Address result : " + result2);
				
				log.info("***********uuid"+uuid);
				//????????? ?????? ?????? ??????
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);
				
				// ?????? ??????
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
				
				model.addAttribute("result", result);
				model.addAttribute("result2", result2);
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "member/modifyPro";
	}
	
	
	@GetMapping("review")
	public void review() {
		
	}
	
	@PostMapping("reviewPro")
	public String reviewPro(ReviewVO review, MultipartHttpServletRequest request, Authentication auth ,int m_no_manager) {
		try {
			boolean tCheck = true;
			//??????????????? ??????
			if(mainService.getMTrainer(m_no_manager)!=null) {
				log.info("???????????? ???????????????"+m_no_manager);
				 tCheck = true; 
			}else {
				log.info("???????????? ???????????????"+m_no_manager);
				 tCheck = false; 
			}
			EstimateVO newEstimate = new EstimateVO();
			//???????????????
			if(tCheck) {
				
				review.setT_no(mainService.getMTrainer(m_no_manager).getT_no());
				review.setH_no(0);
				newEstimate.setE_con(5);
				newEstimate.setE_no(review.getE_no());
				mainService.updateEstEcon(newEstimate);
			}else {
			//???????????????
				review.setT_no(0);
				review.setH_no(mainService.getMhairstylist(m_no_manager).getH_no());
				newEstimate.setE_con(5);
				newEstimate.setE_no(review.getE_no());
				mainService.updateEstEcon(newEstimate);
			}
			
			
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			review.setM_no(service.getMno(user.getUsername()));
							
			MultipartFile mf = request.getFile("part_img");
			log.info(mf.getOriginalFilename()+"?????? ????????? ?????? ??????");
			
			log.info(mf.getSize());
			log.info(mf.getContentType());
			String path =request.getRealPath("/resources/serverImg");  // ????????? ????????? ?????? ??????
			
			// ?????? ?????? ????????? ?????? ??? ????????? ??????
			String uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
			log.info(uuid);
			//???????????? ?????? ???????????? ????????????
			String orgName=mf.getOriginalFilename();
			String ext= orgName.substring(orgName.lastIndexOf("."));
			// ????????? ?????????
			String newFileName= uuid + ext;
			
			//DB ????????? ???????????? ????????? ??????.
			int result = 0;
			if(mf.getOriginalFilename()==null) {
				review.setR_img("default.png");
				 result = service.addReview(review);	
				 
			}else if(mf.getOriginalFilename()!=null) {
				review.setR_img(newFileName);
				 result = service.addReview(review);
				 
			}
			if(result == 1) {
				//????????? ??????????????? ????????? ???????????????
				if(tCheck) {
					log.info("????????? ?????????????????????");
					
					double rTotal = 0.0;
					//?????? ???????????? ?????????
		            List<ReviewVO> re =mainService.getTReview(mainService.getMTrainer(m_no_manager).getT_no());
		            int t_review_total = 0;
	                for(int i=0 ;i<re.size() ;i++) {
	                        t_review_total += re.get(i).getR_score();
	                }
	                	log.info(t_review_total+"t_review_total!!!");
		                rTotal = (double)t_review_total / re.size();
		                rTotal = Math.round(rTotal*100);
		                rTotal = rTotal/100; 
		                log.info(rTotal+"rTotal!!");
		                mainService.updateRAvg(mainService.getMTrainer(m_no_manager).getT_no(), rTotal,re.size());
		                log.info("????????? ??????????????????");
		                
					}
					else if(!tCheck){ 
					log.info("????????? ?????????????????????");	
	                double rTotal = 0.0;
	                List<ReviewVO> re =mainService.getHReview(mainService.getMhairstylist(m_no_manager).getH_no());
	                int h_review_total = 0;
	                for(int i=0 ;i<re.size() ;i++) {
	                	h_review_total += re.get(i).getR_score();
	                }
		                rTotal = (double)h_review_total / re.size();
		                rTotal = Math.round(rTotal*100);
		                rTotal = rTotal/100; 
		                log.info(rTotal+"rTotal!!");
		                mainService.updateRHAvg(mainService.getMhairstylist(m_no_manager).getH_no(), rTotal,re.size());
		                log.info("????????? ??????????????????");
					}
	    	}
			 
			log.info("***********uuid"+uuid);
			//????????? ?????? ?????? ??????
			String imgPath = path+"\\"+newFileName;
			log.info("*****imgPath"+imgPath);

			// ?????? ??????
			File copyFile = new File(imgPath);
			mf.transferTo(copyFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/member/mypage";
	}
	
	@GetMapping("dogAD")
	public void dogAD() {
		
	}
	@PostMapping("dogInsertPro")
	public String dogInsertPro(DogVO dog, MultipartHttpServletRequest request, Authentication auth) {
		try {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			dog.setM_no(service.getMno(user.getUsername()));
							
			MultipartFile mf = request.getFile("part_img");
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			if(mf.getSize() != 0) {
				
				log.info(mf.getOriginalFilename()+"?????? ????????? ?????? ??????");
				
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // ????????? ????????? ?????? ??????
				
				// ?????? ?????? ????????? ?????? ??? ????????? ??????
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				//???????????? ?????? ???????????? ????????????
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// ????????? ?????????
				newFileName= uuid + ext;
			}
			
			//DB ????????? ???????????? ????????? ??????.
			int result = 0;
			if(mf.getSize() == 0) {
				dog.setD_img("default.png");
				log.info("?????????????************************************");
				result = service.insertDog(dog);	
				 
			}else if(mf.getSize() != 0) {
				dog.setD_img(newFileName);
				log.info("?????? ???????????? ***************************");
				result = service.insertDog(dog);
				
				log.info("***********uuid"+uuid);
				//????????? ?????? ?????? ??????
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);
				
				// ?????? ??????
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/member/mypage";
	}
	
	
	@PostMapping("dogModifyPro")
	public String dogModifyPro(DogVO dog, MultipartHttpServletRequest request, Authentication auth ) {
		try {
			System.out.println("?????????"+dog);
			//CustomUser user = (CustomUser)auth.getPrincipal();
			//String m_id =user.getUsername();
			//dog.setM_no(service.getMno(user.getUsername()));
			DogVO O_img=mainService.getOneDog(dog.getD_no());
			MultipartFile mf = request.getFile("part_img");
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			
			if(mf.getSize() != 0) {
			
				log.info(mf.getOriginalFilename()+"?????? ????????? ?????? ??????");
				
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // ????????? ????????? ?????? ??????
				
				// ?????? ?????? ????????? ?????? ??? ????????? ??????
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				log.info(mf.getOriginalFilename()+"*******************************************");
				
				//???????????? ?????? ???????????? ????????????
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// ????????? ?????????
				newFileName= uuid + ext;
			}
			
			//DB ????????? ???????????? ????????? ??????.
			int result = 0;
			if(mf.getSize() == 0) {
				dog.setD_img(O_img.getD_img());
				log.info("?????????????************************************");
				result = service.modifytDog(dog);	
				 
			}else if(mf.getSize() != 0) {
				dog.setD_img(newFileName);
				log.info("?????? ???????????? ***************************");
				 result = service.modifytDog(dog);
				 System.out.println("??? ??? ???"+result);
				 log.info("***********uuid"+uuid);
				 //????????? ?????? ?????? ??????
				 String imgPath = path+"\\"+newFileName;
				 log.info("*****imgPath"+imgPath);
				 
				 // ?????? ??????
				 File copyFile = new File(imgPath);
				 mf.transferTo(copyFile);
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:/member/mypage";
	}
	
	//	?????? ????????? MyPage ??????
	@GetMapping("mypage")
	public String viewMypage(Authentication auth, Model model) {
		
		CustomUser user = (CustomUser)auth.getPrincipal();
		String loginID = user.getUsername();
		MemberVO member = service.getMember(loginID);
		
		int mno = service.getMno(user.getUsername());
		List<DogVO> dog = service.getDog(mno);
		
		List<EstimateVO> estimate = mypageService.getMemberEstimate(member.getM_no()); 
		List<MemberVO> estimateMember = new ArrayList<MemberVO>();
		
		for (int i = 0; i < estimate.size(); i++) {
			estimateMember.add(mainService.getOneMember(estimate.get(i).getM_no_manager()));
			
		}
		
		
		model.addAttribute("manager",member);
		model.addAttribute("dog", dog);
		model.addAttribute("dogCheck", dog.size());
		model.addAttribute("estimatelist",estimate);
		model.addAttribute("estimateMember",estimateMember);
		
		return "/member/mypage";
	}
	//?????? ?????? ??????
	 @GetMapping(value="dogModal/{d_no}", 
			 produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	 public ResponseEntity<DogVO> dogModal(@PathVariable("d_no") int d_no) {
	      
		 log.info("**************** get reply list d_no : " + d_no);
		 DogVO dog = service.getOneDog(d_no);  
	      
		 return new ResponseEntity<DogVO>(dog, HttpStatus.OK);
	}
	

	//?????? ?????? ??????(??????)
	@PostMapping("deleteDogPro")
	@PreAuthorize("isAuthenticated()") 
	public String deleteEstPro(@Param("d_no") Integer d_no) {
		int result = service.deleteDog(d_no);
		if(result==1) {
			log.info(result+ "????????? ?????? ?????? ??????");

		}
		return "redirect:/member/mypage" ;
	}

}

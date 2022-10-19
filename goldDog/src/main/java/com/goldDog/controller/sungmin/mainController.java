package com.goldDog.controller.sungmin;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.ADVO;
import com.goldDog.domain.AddressTranslator;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.HairstylistVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.PageDTO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.persistence.bum.MemberMapper;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.instance.MyPageService;
import com.goldDog.service.sungmin.MainService;



import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService mainService;
	@Autowired
	private MemberMapper memberService;
	@Autowired
	private MyPageService instanceService;
	
	@GetMapping("premain")
	public void premain() {
		
	}
	
	@RequestMapping("main")
	public void main() {
		
	}
	
	//*************************************훈련사 메인**********************************************
	//메인올때 훈련사도 가져온다.
	@GetMapping("tmain")
	public void tmain(Model model,Criteria cri) {
		//광고 가져오기 for 문 돌리기 귀찬...
		String ad1 = mainService.getAdName(1).getAd_img();
		String ad2 = mainService.getAdName(2).getAd_img();
		String ad3 = mainService.getAdName(3).getAd_img();
		model.addAttribute("ad1",ad1);
		model.addAttribute("ad2",ad2);
		model.addAttribute("ad3",ad3);
		log.info(cri.getSort()+"정렬기준 가져오는거야??");
		log.info(cri.getKeyword()+"훈련사 이름 이거 맞아 ?");
		
		//담을 그릇 생성
		List<TrainerVO> Tlist = new ArrayList<TrainerVO>();
		int Ttotal=4;
		log.info(cri);
		
		//훈련사 활동지역 추가해주기
		
		
		if( cri.getKeyword()==null && cri.getSort()==null){
			//기본 훈련사 정렬
			log.info("기본를 탄다구");
			Tlist= mainService.getAllTrainer(cri);
			Ttotal = mainService.getAllTrainerCount();
			
			log.info(Tlist+"2번쨰!!");
		}
		
		if(cri.getKeyword()!=null&&cri.getSort()==null) {
			log.info("검색을 탄다구");
			Tlist=mainService.searchTrainer(cri);
			Ttotal=mainService.countSearchTrainer(cri);
			
			log.info(Tlist+"1번쨰!!");
		}
		
		if(cri.getKeyword()==null && cri.getSort()!=null ) {
			// 정렬로 검색
			log.info("getSort!!!!!!!!!!!!!!!");
			Tlist=mainService.sortTrainer(cri);
			log.info(Tlist);
			Ttotal = mainService.getAllTrainerCount();
			cri.setSort(null);
			log.info(Tlist+"3번쨰!!");
		}
		
		
		
		log.info(Tlist+"최종!!");
		
		//초기화
		// 페이징 처리해서 가져오기
		List<Integer> t_no_list = new ArrayList<Integer>(); 
		List<Integer> t_m_no_list = new ArrayList<Integer>(); 
		List<MemberVO> member = new ArrayList<MemberVO>(); 
		//활동지역 처리하기
		List<AddressVO> address = new ArrayList<AddressVO>(); 
		
		for(int i = 0; i < Tlist.size(); i++) {
			t_no_list.add(Tlist.get(i).getT_no()); 
			t_m_no_list.add(Tlist.get(i).getM_no());
			
		}
		
		
		// t_no 를 받아서 그에 맞게 띄워주기
		log.info(t_no_list+"입니다잇"); 
		log.info(t_m_no_list+"입니다잇"); 
		model.addAttribute("t_no",t_no_list);
		
			
		if(t_m_no_list.size()!=0) {
			model.addAttribute("trainer",Tlist);
		}
		
		for(int i=0 ;i<Tlist.size() ;i++) {
			member.add(mainService.getOneMember(t_m_no_list.get(i)));
			//활동지역 처리하기
			address.add(instanceService.getAddress(t_m_no_list.get(i)));
		}
			model.addAttribute("member", member);
			model.addAttribute("trainercheck",t_no_list.size()); //트레이너 숫자 체크
			model.addAttribute("pager", new PageDTO(cri, Ttotal)); // total count로 수정    

			
			//활동지역 처리하기
			List<Object> list = new ArrayList<Object>();
			AddressTranslator addrtr = new AddressTranslator();
			for(int i=0 ;i<address.size() ;i++) {
				
				list.add(addrtr.translator(address.get(i).getA_addr()));
				
			}
			
			model.addAttribute("ActArea",list);
			
		//리뷰 추가해야함 베스트 5개 뽑기
			List<ReviewVO> BestReview=mainService.getAllTReview();
			model.addAttribute("bestReview",BestReview);
			
		//베스트 리뷰에 해당하는 맴버의 이름 가져오기위한 처리
			List<Integer> r_m_no_list = new ArrayList<Integer>();
			List<MemberVO> bestReviewUser= new ArrayList<MemberVO>(); 
			
			for(int i =0 ;i<BestReview.size() ;i++) {
				r_m_no_list.add(BestReview.get(i).getM_no());
				bestReviewUser.add(mainService.getOneMember(r_m_no_list.get(i)));
			}
			
			model.addAttribute("bestReviewUser",bestReviewUser);
			
		
		
	}
	
	//*************************************미용사 메인**********************************************
	
	//메인올때 미용사 가져온다.
		@RequestMapping("hmain")
		public void hmain(Model model,Criteria cri) {
			//광고 가져오기 for 문 돌리기 귀찬...
			String ad1 = mainService.getAdName(4).getAd_img();
			String ad2 = mainService.getAdName(5).getAd_img();
			String ad3 = mainService.getAdName(6).getAd_img();
			model.addAttribute("ad1",ad1);
			model.addAttribute("ad2",ad2);
			model.addAttribute("ad3",ad3);
			log.info(cri.getSort()+"정렬기준 가져오는거야??");
			log.info(cri.getKeyword()+"미용사 이름 이거 맞아 ?");
			
			// m_no 만 뽑아오기
			List<HairstylistVO> Hlist = new ArrayList<HairstylistVO>(); 
			int Htotal=4;		
			log.info(cri);
			
			if( cri.getKeyword()==null && cri.getSort()==null ){
				//기본 훈련사 정렬
				log.info("기본를 탄다구");
				Hlist= mainService.getAllHairstylist(cri);
				Htotal = mainService.getAllhairstylistCount();
				
				log.info(Hlist+"2번쨰!!");
			}
			
			if(cri.getKeyword()!=null&&cri.getSort()==null) {
				log.info("검색을 탄다구");
				Hlist=mainService.searchHairstylist(cri);
				Htotal=mainService.countSearchHairstylist(cri);
				
				log.info(Hlist+"1번쨰!!");
			}
			
			if(cri.getKeyword()==null && cri.getSort()!=null) {
				// 정렬로 검색
				log.info("getSort!!!!!!!!!!!!!!!");
				Hlist=mainService.sortHairstylist(cri);
				log.info(Hlist);
				Htotal = mainService.getAllhairstylistCount();
				cri.setSort(null);
				log.info(Hlist+"3번쨰!!");
			}
			
			
			
			log.info(Hlist+"최종!!");
					
					
			List<Integer> h_no_list = new ArrayList<Integer>(); 
			List<Integer> h_m_no_list = new ArrayList<Integer>(); 
			List<MemberVO> member = new ArrayList<MemberVO>();
			//활동지역 처리하기
			List<AddressVO> address = new ArrayList<AddressVO>(); 
			
			for(int i = 0; i < Hlist.size(); i++) {
				h_no_list.add(Hlist.get(i).getH_no()); 
				h_m_no_list.add(Hlist.get(i).getM_no());
				
			}
			
			// t_no 를 받아서 그에 맞게 띄워주기
			log.info(h_no_list+"입니다잇"); 
			model.addAttribute("h_no",h_no_list);
			
			
			
			
			// 등록된훈련사가 없을경우레
			if(h_m_no_list.size()!=0) {
				//이거
				model.addAttribute("hairstylist",Hlist);
			}
			
			for(int i=0 ;i<Hlist.size() ;i++) {
				member.add(mainService.getOneMember(h_m_no_list.get(i)));
				//활동지역 처리하기
				address.add(instanceService.getAddress(h_m_no_list.get(i)));
			}
			
				model.addAttribute("member", member);
				model.addAttribute("hairstylistcheck",h_no_list.size()); //미용사 숫자 체크
				model.addAttribute("pager", new PageDTO(cri, Htotal));  // total count로 수정
				
			//활동지역 처리하기
			List<Object> list = new ArrayList<Object>();
			AddressTranslator addrtr = new AddressTranslator();
			for(int i=0 ;i<address.size() ;i++) {
				
				list.add(addrtr.translator(address.get(i).getA_addr()));
				
			}
			
			model.addAttribute("ActArea",list);	
			
				
			//리뷰 추가해야함 베스트 5개 뽑기
				List<ReviewVO> BestReview=mainService.getAllHReview();
				
				model.addAttribute("bestReview",BestReview);
				
			//베스트 리뷰에 해당하는 맴버의 이름 가져오기위한 처리
				List<Integer> r_m_no_list = new ArrayList<Integer>();
				List<MemberVO> bestReviewUser= new ArrayList<MemberVO>(); 
				
				for(int i =0 ;i<BestReview.size() ;i++) {
					r_m_no_list.add(BestReview.get(i).getM_no());
					bestReviewUser.add(mainService.getOneMember(r_m_no_list.get(i)));
				}
				
				model.addAttribute("bestReviewUser",bestReviewUser);	
				
				
				
		}
	
	
		
		
	//*************************************훈련사 디테일**********************************************	
	@GetMapping("tDetailForm")
	public void detailForm(@Param("t_no") int t_no,@Param("m_no")int m_no, Model model, Authentication auth) {
		log.info("디테일폼으로 왔다!");
		log.info(t_no);
		log.info(m_no);
		//오늘 날짜 구하기
		 LocalDate now = LocalDate.now();
		 String today = now+"T12:30:00";
		log.info(now+"오늘의 날짜 !!");
		model.addAttribute("today",today);
		
		model.addAttribute("trainer",mainService.getTrainer(t_no));
		model.addAttribute("member",mainService.getOneMember(m_no));
		
		List<ReviewVO> re = mainService.getTReview(t_no);
		int rTotal = 0; // 
		double Ravg = 0;
		//리뷰 평점 처리
		for(int i =0 ;i<re.size() ;i++) {
		rTotal +=re.get(i).getR_score();
		}
		Ravg=(double)rTotal/re.size();
		
		String Ravg1 =String.format("%.2f", Ravg); // 리뷰 뒤에 끊어주기
		model.addAttribute("review",mainService.getTReview(t_no));
		//리뷰갯수 분기처리위해 뽑기
		model.addAttribute("reviewCount",mainService.getTReview(t_no).size());
		model.addAttribute("Ravg",Ravg1);
		// 리뷰에 해당하는 맴버의 이름 가져오기위한 처리
		List<Integer> r_m_no_list = new ArrayList<Integer>();
		List<MemberVO> bestReviewUser= new ArrayList<MemberVO>(); 
		
		for(int i =0 ;i<re.size() ;i++) {
			r_m_no_list.add(re.get(i).getM_no());
			bestReviewUser.add(mainService.getOneMember(r_m_no_list.get(i)));
		}
		
		model.addAttribute("bestReviewUser",bestReviewUser);
		
		
		
		System.out.println("auth : " + auth);
		
		
		//사용자가 로그인이 되어있다면 강아지 정보와 주소 보내주는 처리 
		// 여기서 로그인 안했을때 오류가 뜸
		if(auth != null) { // 로그인 
			String userId=((CustomUser)auth.getPrincipal()).getUsername();
			log.info(userId+"=======================");
			MemberVO member= memberService.getMember(userId);
			
			List<AuthVO> list =member.getAuthList();
			for(int i=0 ;i<list.size() ;i++) {
					
			}
			
			List<Integer> D_no = new ArrayList<Integer>();
			List<String> myDogName = new ArrayList<String>();
			
			int user_M_no =member.getM_no();
			List<DogVO> myDog =mainService.getMyDog(user_M_no);
			List<AddressVO> address= mainService.getMyAddress(user_M_no);
			
				model.addAttribute("addrSize",address.size());
				model.addAttribute("address",address);
				
			
			// 로그인한 사람의 강아지들 불러오기
			for(int i=0 ;i<myDog.size() ;i++) {
				D_no.add(myDog.get(i).getD_no());
				myDogName.add(myDog.get(i).getD_name());
			} 
			model.addAttribute("d_no",D_no);
			model.addAttribute("m_no",member.getM_no());
			
			if(D_no.size()==0) {
				model.addAttribute("pet",0);	
				model.addAttribute("petSize",2);//임의로 지정해준것
				
			}else if (D_no.size()!=0) {
				model.addAttribute("pet",1);
				model.addAttribute("petSize",myDog.size());
				model.addAttribute("petName",myDogName);
			}
			
		}else { // 로그아웃
			//로그인 안하고 협상 눌렀을때 띄울 모달
			model.addAttribute("pet",2);
			model.addAttribute("petSize",2);//임의로 지정해준것
		}
		
	}
	
	
	//*************************************미용사 디테일**********************************************
	@GetMapping("hDetailForm")
	public void hDetailForm(@Param("h_no") int h_no,@Param("m_no")int m_no, Model model, Authentication auth) {
		log.info("디테일폼으로 왔다!");
		log.info(h_no);
		log.info(m_no);
		//오늘 날짜 구하기
		 LocalDate now = LocalDate.now();
		 String today = now+"T12:30:00";
		log.info(now+"오늘의 날짜 !!");
		model.addAttribute("today",today);
		model.addAttribute("hairstylist",mainService.getHairstylist(h_no));
		model.addAttribute("member",mainService.getOneMember(m_no));
		
		List<ReviewVO> re = mainService.getHReview(h_no);
		int rTotal = 0; // 
		double Ravg = 0;
		//리뷰 평점 처리
		for(int i =0 ;i<re.size() ;i++) {
		rTotal +=re.get(i).getR_score();
		}
		Ravg=(double)rTotal/re.size();
		
		String Ravg1 =String.format("%.2f", Ravg); // 리뷰 뒤에 끊어주기
		model.addAttribute("review",mainService.getHReview(h_no));
		model.addAttribute("reviewCount",mainService.getHReview(h_no).size());
		model.addAttribute("Ravg",Ravg1);
		System.out.println("auth : " + auth);
		
		
		
		// 리뷰에 해당하는 맴버의 이름 가져오기위한 처리
		List<Integer> r_m_no_list = new ArrayList<Integer>();
		List<MemberVO> bestReviewUser= new ArrayList<MemberVO>(); 
		
		for(int i =0 ;i<re.size() ;i++) {
			r_m_no_list.add(re.get(i).getM_no());
			bestReviewUser.add(mainService.getOneMember(r_m_no_list.get(i)));
		}
		
		model.addAttribute("bestReviewUser",bestReviewUser);	
		
		
		
		
		
		//사용자가 로그인이 되어있다면 강아지 정보와 주소 보내주는 처리 
		// 여기서 로그인 안했을때 오류가 뜸
		if(auth != null) { // 로그인 
			String userId=((CustomUser)auth.getPrincipal()).getUsername();
			log.info(userId+"=======================");
			MemberVO member= memberService.getMember(userId);
			
			List<AuthVO> list =member.getAuthList();
			for(int i=0 ;i<list.size() ;i++) {
					
			}
			
			List<Integer> D_no = new ArrayList<Integer>();
			List<String> myDogName = new ArrayList<String>();
			
			int user_M_no =member.getM_no();
			List<DogVO> myDog =mainService.getMyDog(user_M_no);
			List<AddressVO> address= mainService.getMyAddress(user_M_no);
			
				model.addAttribute("addrSize",address.size());
				model.addAttribute("address",address);
			
			// 로그인한 사람의 강아지들 불러오기
			for(int i=0 ;i<myDog.size() ;i++) {
				D_no.add(myDog.get(i).getD_no());
				myDogName.add(myDog.get(i).getD_name());
			} 
			model.addAttribute("d_no",D_no);
			model.addAttribute("m_no",member.getM_no());
			
			if(D_no.size()==0) {
				model.addAttribute("pet",0);	
				model.addAttribute("petSize",2);//임의로 지정해준것
				
			}else if (D_no.size()!=0) {
				model.addAttribute("pet",1);
				model.addAttribute("petSize",myDog.size());
				model.addAttribute("petName",myDogName);
			}
			
		}else { // 로그아웃
			//로그인 안하고 협상 눌렀을때 띄울 모달
			model.addAttribute("pet",2);
			model.addAttribute("petSize",2);//임의로 지정해준것
		}
		
	}
	
	@GetMapping("selUpload")
	@PreAuthorize("isAuthenticated()")
	public String selUpload(int m_no, Authentication auth,RedirectAttributes redirect) {
		MemberVO member =mainService.getOneMember(m_no);
		
		if (auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_TRAINER"))) {
			//훈련사 분기처리
			if(mainService.getMTrainer(m_no) != null) {
				redirect.addAttribute("m_no",m_no);
				return "redirect:/main/selModifyT";
			}else {
				redirect.addAttribute("m_no",m_no);
				return "redirect:/main/selUploadT";
			}
		
		}else if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_HAIR"))) {
			//미용사 분기처리
			
			if(mainService.getMhairstylist(m_no) != null) {
				redirect.addAttribute("m_no",m_no);
				return "redirect:/main/selModifyH";
			}else {
				redirect.addAttribute("m_no",m_no);
				return "redirect:/main/selUploadH";
			}
			
		}
		return "redirect:/main/tmain";
		
	}
	
	
	
	
	//훈련사용 자기정보 수정
	@GetMapping("selUploadT")
	@PreAuthorize("isAuthenticated()") 
	public String selUploadTrainer(int m_no,Model model) {
		MemberVO member =mainService.getOneMember(m_no);
		if(mainService.getMTrainer(m_no) != null) {
		
		//훈련사 맨첨 등록할때 가야할 페이지
			model.addAttribute("m_no",m_no);
			model.addAttribute("member",member);
			
			return "redirect:/main/selUploadPro";
			
		}else {
			
			return "redirect:/main/selUpload";
		
		}
		
	}

	
	//훈련사용
	@GetMapping("selModifyT")
	@PreAuthorize("isAuthenticated()") 
	public void selModify(Model model,Authentication auth) {
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginUser=memberService.getMember(userId);
		
		TrainerVO trainer =mainService.getMTrainer(loginUser.getM_no());
		MemberVO member =mainService.getOneMember(loginUser.getM_no());
		model.addAttribute("trainer",trainer);
		log.info(trainer+"가져왔니??");
		model.addAttribute("member",member);
		
		
	}
	
	
	
	// 정보 수정 업데이트
	@PostMapping("selModifyPro")
	@PreAuthorize("isAuthenticated()") 
	public String selModifyPro(Model model,Authentication auth,TrainerVO trainer) {
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
		
		MemberVO loginUser=memberService.getMember(userId);
		
		
		if(trainer.getM_no()==loginUser.getM_no()) {
		int result = mainService.updateTinfo(trainer);
		
		log.info(result+"성공했니??");
		return "redirect:/manager";
		}
		
		
		return "redirect:/member/login";
	}
	
	
	
	@PostMapping("selUpload")
	public String selUploadPro(TrainerVO trainer,Authentication auth) {
		
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
			MemberVO loginMember=memberService.getMember(userId);
			
			if(trainer.getM_no()==loginMember.getM_no()) {
			log.info(trainer);
			int result=mainService.addTinfo(trainer);
			log.info(result+"추가정보 등록 결과");
			
			return "redirect:/main/tmain";
		}
		
		
		return "redirect:/member/login";
	}
	
	
	
	
	//미용사용
	@GetMapping("selUploadH")
	@PreAuthorize("isAuthenticated()") 
	public void selUploadH(int m_no,Model model) {
		MemberVO member =mainService.getOneMember(m_no);
		
		model.addAttribute("m_no",m_no);
		model.addAttribute("member",member);
		
	}
	
	//미용사 업로드
	@PostMapping("selUploadH")
	public String selUploadHPro(HairstylistVO hairstylist,Authentication auth) {
		
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginMember=memberService.getMember(userId);
		
		if(hairstylist.getM_no()==loginMember.getM_no()) {
			log.info(hairstylist);
			int result=mainService.addHinfo(hairstylist);
			log.info(result+"추가정보 등록 결과");
			
			return "redirect:/main/tmain";
		}
		
		return "redirect:/member/login";
	}
	
	
	
	//미용사 정보수정
	@GetMapping("selModifyH")
	@PreAuthorize("isAuthenticated()") 
	public void selModifyH(Model model,Authentication auth) {
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginUser=memberService.getMember(userId);
		
		HairstylistVO stylist =mainService.getMhairstylist(loginUser.getM_no());
		MemberVO member =mainService.getOneMember(loginUser.getM_no());
		model.addAttribute("stylist",stylist);
		log.info(stylist+"가져왔니??");
		model.addAttribute("member",member);
		
		
	}
	
	
	
	// 정보 수정 업데이트
	@PostMapping("selModifyProH")
	@PreAuthorize("isAuthenticated()") 
	public String selModifyProH(Model model,Authentication auth,HairstylistVO stylist) {
		String userId= ((CustomUser)auth.getPrincipal()).getUsername();
		
		MemberVO loginUser=memberService.getMember(userId);
		
		
		if(stylist.getM_no()==loginUser.getM_no()) {
		int result = mainService.updateHinfo(stylist);
		
		log.info(result+"성공했니??");
		return "redirect:/manager";
		}
		
		
		return "redirect:/member/login";
	}
	
	
	
	
	
	
	
	
	
	
	@GetMapping("addPetInfo")
	public void addPetInfo() {
		
		
		
	}
	
	
	@GetMapping("pushDetailForm")
	public void pushDetailForm() {
		
		
	}

	//견적서 보내자마자 마이페이지에서 첫번쨰로 확인하는 견적서
	@GetMapping("estimate1")
	@PreAuthorize("isAuthenticated()") 
	public void Estimate1(Model model,@Param("e_no") int e_no) {
		
		
		EstimateVO estimate =mainService.getEOneEstimate(e_no);
		DogVO clientDog =mainService.getOneDog(estimate.getD_no());
		AddressVO clientAddress=mainService.getOneAddress(estimate.getA_no());
		log.info(clientDog.getD_img());
		
		
		model.addAttribute("estimate",estimate);
		model.addAttribute("clientDog",clientDog);
		model.addAttribute("clientAddress",clientAddress);
		
	}
	
	//견적 취소 처리(삭제)
	@PostMapping("deleteEstPro")
	@PreAuthorize("isAuthenticated()") 
	public String deleteEstPro(@Param("e_no") Integer e_no) {
		int result = mainService.deleteEst(e_no);
		if(result==1) {
			log.info(result+ "견적서취소(삭제) 완료");
		}
		return "redirect:/member/mypage" ;
	}
	
	
	
	//매니저가 확인하고 추가사항 적을 견적서 페이지
	//유효성 처리해서 가져가야함
	@GetMapping("estimate2")
	@PreAuthorize("isAuthenticated()") 
	public void Estimate2(Model model,@Param("e_no") int e_no) {
		//오늘 날짜 구하기
		 LocalDate now = LocalDate.now();
		 String today = now+"T12:30:00";
		log.info(now+"오늘의 날짜 !!");
		model.addAttribute("today",today);
		
		EstimateVO estimate =mainService.getEOneEstimate(e_no);
		DogVO clientDog =mainService.getOneDog(estimate.getD_no());
		AddressVO clientAddress=mainService.getOneAddress(estimate.getA_no());
		log.info(clientDog.getD_img());
		
		
		model.addAttribute("estimate",estimate);
		model.addAttribute("clientDog",clientDog);
		model.addAttribute("clientAddress",clientAddress);
		
	}
	
	
	//매니저가 확인하고 추가사항 적을 견적서 넣어주는 처리 
	@PostMapping("estimate2Pro")
	public String Estimate2Pro(EstimateVO addEstimate,String t_date) {
		//원래 견적서 불러오는 메서드.
		String newDate=t_date.replace("T", " ");
		log.info(newDate+"어떻게 생겼나요!!!");
		
		
		EstimateVO estimate =mainService.getEOneEstimate(addEstimate.getE_no());
		if(addEstimate.getE_extra_reason().trim()==null&&addEstimate.getE_extra_reason().trim()=="") {
			estimate.setE_extra_reason("추가 없음");
		}else {
			estimate.setE_extra_reason(addEstimate.getE_extra_reason());
		}
		
		
		if(addEstimate.getE_extraprice()==0) {
			estimate.setE_extraprice(0);
		}else if(addEstimate.getE_extraprice()!=0){
			estimate.setE_extraprice(addEstimate.getE_extraprice());
			//견적서 최종가격에 더해서 추가
			int e_total_price = addEstimate.getE_extraprice()+estimate.getE_basicprice();
			estimate.setE_total_price(e_total_price);
		}
		
		//메니저가 확인했을때 컨디션 바꿔주는 처리
		
		estimate.setE_date(newDate);
		estimate.setE_con(1);
		log.info(estimate+"확인");
		
		mainService.updateEst(estimate);
		return "redirect:/manager";
		
	}
	
	//매니저가 확인하고 추가사항 적을 견적서 페이지
	@GetMapping("estimate3")
	@PreAuthorize("isAuthenticated()") 
	public void Estimate3(Model model,@Param("e_no") int e_no) {
		
		EstimateVO estimate =mainService.getEOneEstimate(e_no);
		DogVO clientDog =mainService.getOneDog(estimate.getD_no());
		AddressVO clientAddress=mainService.getOneAddress(estimate.getA_no());
		log.info(clientDog.getD_img());
		
		
		model.addAttribute("estimate",estimate);
		model.addAttribute("clientDog",clientDog);
		model.addAttribute("clientAddress",clientAddress);
		
	}
	//견적서 e_con 3으로 업데이트 견적완료시
	@PostMapping("endEstPro")
	public String endEstPro(@Param("e_no") int e_no) {
		EstimateVO newEstimate = new EstimateVO();
		EstimateVO estimate =mainService.getEOneEstimate(e_no);
		//훈련 방문 완료
		newEstimate.setE_con(3);
		newEstimate.setE_no(e_no);
		mainService.updateEstEcon(newEstimate);
		
		return "redirect:/manager";
	}
	
	//견적서 e_con 4으로 업데이트 고객이 방문 완료 눌렀을때
	@PostMapping("endEstModalMember")
	public String endEstModalMember(@Param("e_no") int e_no) {
		EstimateVO newEstimate = new EstimateVO();
		//훈련 방문 완료
		newEstimate.setE_con(4);
		newEstimate.setE_no(e_no);
		mainService.updateEstEcon(newEstimate);
		
		return "redirect:/member/mypage";
	}
	
	@GetMapping("successPay")
	public String successPay(@Param("e_no") int e_no) {
		EstimateVO newEstimate = new EstimateVO();
		//결제 완료
		newEstimate.setE_con(2);
		newEstimate.setE_no(e_no);
		mainService.updateEstEcon(newEstimate);
		
		
		return "redirect:/member/mypage";
	}
	
	
	
	//*************************************훈련사 견적서 추가**********************************************
	@PostMapping("insertEst")
	public String insertEst(DogVO dog, EstimateVO est, Model model,@Param("t_m_no") int t_m_no,Authentication auth ) {
		
		String userId=((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginUser=memberService.getMember(userId);
		AddressVO loginUserAddress=memberService.getAddress(loginUser.getM_no());
		
		
		
		//훈련사 정보 불러오기
		TrainerVO trainer =mainService.getMTrainer(t_m_no);
		
		//강아지 정보 불러오기
		int d_no = dog.getD_no();
		DogVO dogInfo = mainService.getOneDog(d_no);
		
		//견주 m_no , 훈련사 m_no, 강아지 고유넘 d_no 사용해서 견적서 추가 셋팅   
		est.setM_no_puppy(dogInfo.getM_no());
		//훈련에서 오는 페이지
		est.setM_no_manager(t_m_no);
		//강아지 넘버
		est.setD_no(d_no);
		//회원의 주소도 넣어 보내기
		est.setA_no(loginUserAddress.getA_no());
		//훈련사의 기본가격 넣어 보내기
		est.setE_basicprice(trainer.getT_price());
		//예약원하는 시간 셋팅
		String newDate=est.getE_date().replace("T", " ");
		log.info(newDate);
		est.setE_date(newDate);
		log.info(est+"넘어오는 셋팅정보!!");
		//원하는 서비스 , 빼고 다시 넣기
		est.setE_service(est.getE_service().replace(",", " "));
		
		
		
		// 견적서 생성
		mainService.insertEst(est);
		log.info("생성 완료");
		
		
		return "redirect:/main/tmain" ;
		
	}
	
	
	
	//*************************************미용사 견적서 추가**********************************************
	@PostMapping("insertHEst")
	public String insertHEst(DogVO dog, EstimateVO est, Model model,@Param("h_m_no") int h_m_no,Authentication auth ) {
		
		String userId=((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginUser=memberService.getMember(userId);
		AddressVO loginUserAddress=memberService.getAddress(loginUser.getM_no());
		
		
		
		//훈련사 정보 불러오기
		HairstylistVO hairstylist =mainService.getMhairstylist(h_m_no);
		
		//강아지 정보 불러오기
		int d_no = dog.getD_no();
		DogVO dogInfo = mainService.getOneDog(d_no);
		
		//견주 m_no , 훈련사 m_no, 강아지 고유넘 d_no 사용해서 견적서 추가 셋팅   
		est.setM_no_puppy(dogInfo.getM_no());
		//훈련에서 오는 페이지
		est.setM_no_manager(h_m_no);
		//강아지 넘버
		est.setD_no(d_no);
		//회원의 주소도 넣어 보내기
		est.setA_no(loginUserAddress.getA_no());
		//훈련사의 기본가격 넣어 보내기
		est.setE_basicprice(hairstylist.getH_price());
		//예약원하는 시간 셋팅
		String newDate=est.getE_date().replace("T", " ");
		log.info(newDate);
		est.setE_date(newDate);
		log.info(est+"넘어오는 셋팅정보!!");
		//원하는 서비스 , 빼고 다시 넣기
		est.setE_service(est.getE_service().replace(",", " "));
		
		
		
		// 견적서 생성
		mainService.insertEst(est);
		log.info("생성 완료");
		
		
		return "redirect:/main/tmain" ;
		
	}
	
	
	
	
	@GetMapping("test01")
	@PreAuthorize("isAuthenticated()") 
	public void test1(Authentication auth,Model model) {
		//로그인한 유저 정보
		
		String userId=((CustomUser)auth.getPrincipal()).getUsername();
		MemberVO loginUser=memberService.getMember(userId);
		
		
		//로그인한 사용자가 가지고있는 견적서 번호들
		List<Integer> e_no = new ArrayList<Integer>();
		//로그인한 사용자가 가지고있는 견적서의 훈련사 번호들
		List<Integer> m_no_manager = new ArrayList<Integer>();
		List<EstimateVO> Estimate =mainService.getEstimate(loginUser.getM_no());
		List<MemberVO> tMember= new ArrayList<MemberVO>();
		MemberVO member = new MemberVO();
		
		for(int i = 0 ;i<Estimate.size();i++) {
			//유저가 가지고있는 견적서넘버 정보 담기(미리 만들어놓음)
			e_no.add(Estimate.get(i).getE_no());
			m_no_manager.add(Estimate.get(i).getM_no_manager());
			member=mainService.getOneMember(Estimate.get(i).getM_no_manager());
			tMember.add(member);
		}
		
		
		log.info(tMember+"맴버 리스트");
		log.info(m_no_manager+"견적서의 훈련사 정보");
		//견적서에 있는 훈련사 맴버정보 가져오기
		
		
		model.addAttribute("tMember",tMember);
		model.addAttribute("estimate",Estimate);
		model.addAttribute("eCount",Estimate.size());
		}
	
	
	

		
	@GetMapping("/main") 
	public String address() {
		System.out.println("카카오 API 테스트");
		
		return "address";
	}
	
	@GetMapping("address")
	public void address1() {
		log.info("********************** 카카오 API 테스트 *********************");
	}
	
	
		
		
	
	
	
	
	@GetMapping("session") 
	public String Session(HttpServletRequest request, String useType) {
		
		HttpSession session = request.getSession();
		String sessionType = (String) session.getAttribute("useType");
		System.out.println(sessionType);
		System.out.println(useType);
		if(sessionType == null) {
			session.setAttribute("useType", useType);
			System.out.println(session.getAttribute("useType")); 
		}else if(!sessionType.equals(useType)) {
			request.removeAttribute("useType");
			session.setAttribute("useType", useType);
		}
		
		if(session.getAttribute("useType").equals("trainer")) {
			return "redirect:/main/tmain";
		}else if(session.getAttribute("useType").equals("hair")) {
			return "redirect:/main/hmain";
		}else {
			return "redirect:/main/premain";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
}
	
	
	
	

package com.goldDog.controller.sungmin;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.ADVO;
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
import com.goldDog.service.sungmin.MainService;



import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService mainService;
	@Autowired
	private MemberMapper memberService;
	
	
	@GetMapping("premain")
	public void premain() {
		
	}
	
	@RequestMapping("main")
	public void main() {
		
	}
	
	//*************************************훈련사 메인**********************************************
	//메인올때 훈련사도 가져온다.
	@RequestMapping("tmain")
	public void tmain(Model model,Criteria cri) {
		//광고 가져오기 for 문 돌리기 귀찬...
		String ad1 = mainService.getAdName(1).getAd_img();
		String ad2 = mainService.getAdName(2).getAd_img();
		String ad3 = mainService.getAdName(3).getAd_img();
		model.addAttribute("ad1",ad1);
		model.addAttribute("ad2",ad2);
		model.addAttribute("ad3",ad3);
		
		log.info(cri.getKeyword()+"훈련사 이름 이거 맞아 >");
		List<TrainerVO> Tlist = mainService.getAllTrainer(cri);
		
		
		// 페이징 처리해서 가져오기
		int Ttotal = mainService.getAllTrainerCount();
		List<Integer> t_no_list = new ArrayList<Integer>(); 
		List<Integer> t_m_no_list = new ArrayList<Integer>(); 
		
		
		for(int i = 0; i < Tlist.size(); i++) {
			t_no_list.add(Tlist.get(i).getT_no()); 
			t_m_no_list.add(Tlist.get(i).getM_no());
		}
		
		// t_no 를 받아서 그에 맞게 띄워주기
		log.info(t_no_list+"입니다잇"); 
		model.addAttribute("t_no",t_no_list);
		
		
		List<Double> total = new ArrayList<Double>(); 
		List<Integer> rTotal = new ArrayList<Integer>();
		
		//t_no를 받아서 훈련사 당 리뷰 평점 구하기
		for(int i =0 ;i<t_no_list.size() ;i++) {
			List<ReviewVO> re =mainService.getTReview(t_no_list.get(i));
				rTotal.add(re.size());
				int t_review_total = 0;
				for(int j=0 ;j<re.size() ;j++) {
					t_review_total += re.get(j).getR_score();
				}
				if(re.size()==0) {
					total.add(0.0);	
				}else {
					total.add((double)t_review_total/re.size());
				}
		}
		
		
		if(t_m_no_list.size()!=0) {
			model.addAttribute("member", mainService.getMember(t_m_no_list));
			model.addAttribute("trainer",mainService.getAllTrainer(cri));
		}
			model.addAttribute("trainercheck",t_no_list.size()); //트레이너 숫자 체크
			model.addAttribute("rAvg", total); //리뷰 평점
			model.addAttribute("rTotal", rTotal); //리뷰 총 갯수
			model.addAttribute("pager", new PageDTO(cri, Ttotal)); // total count로 수정    

		//리뷰 추가해야함 베스트 5개 뽑기
		
		
		
	}
	
	//*************************************미용사 메인**********************************************
	
	//메인올때 훈련사도 가져온다.
		@RequestMapping("hmain")
		public void hmain(Model model,Criteria cri) {
			//광고 가져오기 for 문 돌리기 귀찬...
			String ad1 = mainService.getAdName(1).getAd_img();
			String ad2 = mainService.getAdName(2).getAd_img();
			String ad3 = mainService.getAdName(3).getAd_img();
			model.addAttribute("ad1",ad1);
			model.addAttribute("ad2",ad2);
			model.addAttribute("ad3",ad3);
			
			
			// m_no 만 뽑아오기
			List<HairstylistVO> Hlist = mainService.getAllHairstylist();
			
			List<Integer> h_no_list = new ArrayList<Integer>(); 
			List<Integer> h_m_no_list = new ArrayList<Integer>(); 
			
			for(int i = 0; i < Hlist.size(); i++) {
				h_no_list.add(Hlist.get(i).getH_no()); 
				h_m_no_list.add(Hlist.get(i).getM_no());
			}
			
			// t_no 를 받아서 그에 맞게 띄워주기
			log.info(h_no_list+"입니다잇"); 
			model.addAttribute("h_no",h_no_list);
			
			
			List<Double> total = new ArrayList<Double>(); 
			List<Integer> rTotal = new ArrayList<Integer>();
			
			//t_no를 받아서 훈련사 당 리뷰 평점 구하기
			for(int i =0 ;i<h_no_list.size() ;i++) {
				List<ReviewVO> re =mainService.getHReview(h_no_list.get(i));
					rTotal.add(re.size());
					int t_review_total = 0;
					for(int j=0 ;j<re.size() ;j++) {
						t_review_total += re.get(j).getR_score();
					}
					if(re.size()==0) {
						total.add(0.0);	
					}else {
						total.add((double)t_review_total/re.size());
					}
			}
			
			// 등록된훈련사가 없을경우레
			if(h_m_no_list.size()!=0) {
				model.addAttribute("member", mainService.getMember(h_m_no_list));
				model.addAttribute("hairstylist",mainService.getAllHairstylistH_no(h_no_list));
			}
				model.addAttribute("hairstylistcheck",h_no_list.size()); //리뷰 평점
				model.addAttribute("rAvg", total); //리뷰 평점
				model.addAttribute("rTotal", rTotal); //리뷰 총 갯수
				model.addAttribute("pager", new PageDTO(cri, Hlist.size()));  
			//리뷰 추가해야함 베스트 5개 뽑기
			
		}
	
	
		
		
	//*************************************훈련사 디테일**********************************************	
	@GetMapping("tDetailForm")
	public void detailForm(@Param("t_no") int t_no,@Param("m_no")int m_no, Model model, Authentication auth) {
		log.info("디테일폼으로 왔다!");
		log.info(t_no);
		log.info(m_no);
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
		
		model.addAttribute("Ravg",Ravg1);
		
		
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
		model.addAttribute("Ravg",Ravg1);
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
	
	
	@GetMapping("selUpload")
	public void selUpload(int m_no,Model model) {
		model.addAttribute("m_no",m_no);
		log.info(m_no+"가져왔니??");
		
	}
	
	@PostMapping("selUpload")
	public String selUploadPro(TrainerVO trainer) {
		
		log.info(trainer);
		int result=mainService.addTinfo(trainer);
		log.info(result+"추가정보 등록 결과");
		
		
		return "redirect:/main/tmain";
	}
	
	
	@GetMapping("addPetInfo")
	public void addPetInfo() {
		
		
		
	}
	
	
	@GetMapping("pushDetailForm")
	public void pushDetailForm() {
		
		
	}

	@PostMapping("insertEst")
	public String insertEst(DogVO dog, EstimateVO est, Model model,@Param("t_m_no") int t_m_no) {
		   
		
		//강아지 정보 불러오기
		int d_no = dog.getD_no();
		DogVO dogInfo = mainService.getOneDog(d_no);
		
		//견주 m_no , 훈련사 m_no, 강아지 고유넘 d_no 사용해서 견적서 추가 셋팅   
		est.setM_no_puppy(dogInfo.getM_no());
		est.setM_no_manager(t_m_no);
		est.setP_no(d_no);
		
		// 견적서 생성
		mainService.insertEst(est);
		log.info("생성 완료");
		
		
//		//사용자의 견적서 불러오기
//		EstimateVO test1 = mainService.getEstimate(dogInfo.getM_no());
//		model.addAttribute("est", test1);
//		model.addAttribute("dog", dogInfo);
		
		return "redirect:/main/tmain" ;
		
	}
	
	
	@GetMapping("test01")
	public void test011(Model model) {
		
		
		
		
	}
	
	
	
}
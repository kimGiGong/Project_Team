package com.goldDog.controller.instance;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.goldDog.domain.AddressTranslator;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.HairstylistVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.PayVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.instance.MyPageService;
import com.goldDog.service.sungmin.MainService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
public class mypageController {
	
	@Autowired
	private MainService sungminService;
	
	@Autowired
	private memberService bumService; 
	
	@Autowired
	private MyPageService instanceService;
	
	
	//	에러 페이지
	@RequestMapping("error")
	public String errorPage() {
		
		return "/error";
	}
	
	
	//	일반 이용자 MyPage 이동
	@GetMapping("mypage")
	@PreAuthorize("isAuthenticated()")
	public String viewMypage(Authentication auth, Model model) {
			return "redirect:/member/mypage";
//		if(auth == null) {
//			return "redirect:/member/login";
//		}else {
//			
//		
//				CustomUser user = (CustomUser)auth.getPrincipal();
//				String loginID = user.getUsername();
//				MemberVO member = bumService.getMember(loginID);
//				
//				
//				int mno = bumService.getMno(user.getUsername());
//				List<DogVO> dog = bumService.getDog(mno);
//				List<EstimateVO> estimate = instanceService.getMemberEstimate(member.getM_no()); 
//				List<MemberVO> estimateMember = new ArrayList<MemberVO>();
//				for (int i = 0; i < estimate.size(); i++) {
//					estimateMember.add(sungminService.getOneMember(estimate.get(i).getM_no_puppy()));
//				}
//				
//				model.addAttribute("manager",member);
//				model.addAttribute("dog", dog);
//				model.addAttribute("dogCheck", dog.size());
//				model.addAttribute("estimatelist",estimate);
//				model.addAttribute("estimateMember",estimateMember);
//				
//				
//				return "mypage/mypage";
//		}
	}
	
//	매니저 MyPage 이동
	@RequestMapping("manager")
	public String viewManager(Authentication auth, Model model) {
		if(auth == null) {
			return "redirect:member/login"; 
		}else {
			Boolean trainerCheck = auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_TRAINER"));
			Boolean hairCheck = auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_HAIR"));
			if (!auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_TRAINER"))
					&& !auth.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_HAIR"))) {
				System.out.println(!hairCheck+"헤어아님");
				System.out.println(!trainerCheck+"트레이너 아님");
				return "redirect:/mypage";
			}else {
				CustomUser user = (CustomUser)auth.getPrincipal();
				String loginID = user.getUsername();
				MemberVO member = bumService.getMember(loginID);
				AddressVO address = instanceService.getAddress(member.getM_no());
				List<Object> list = new ArrayList<Object>();
				AddressTranslator addrtr = new AddressTranslator();
				List<String []> area = new ArrayList<String []>();
				List<EstimateVO> estimate =new ArrayList<EstimateVO>();
				
				area.add(addrtr.getSeoul());
				area.add(addrtr.getGyeonggi());
				list.add(member);
				list.add(addrtr.translator(address.getA_addr()));
				list.add(area);
				//트레이너가 왔을때
				if(trainerCheck == true) {
					TrainerVO trainer = sungminService.getMTrainer(member.getM_no());
					System.out.println(trainer);
					if(trainer != null) {
						estimate= instanceService.getEstimate(trainer.getM_no()); 
					}
					list.add(trainer);
				}else if(hairCheck == true){
					HairstylistVO hair = sungminService.getMhairstylist(member.getM_no());
					System.out.println(hair);
					if(hair != null) {
						estimate= instanceService.getEstimate(hair.getM_no()); 
					}
					list.add(hair);
				}
				List<MemberVO> estimateMember = new ArrayList<MemberVO>();
				
				if(estimate != null) {
					for (int i = 0; i < estimate.size(); i++) {
						estimateMember.add(sungminService.getOneMember(estimate.get(i).getM_no_puppy()));
					}
				}
				System.out.println(list);
				System.out.println(estimate);
				model.addAttribute("managerlist",list);
				model.addAttribute("estimatelist",estimate);
				model.addAttribute("estimateMember",estimateMember);
				
				return "mypage/managerpage";
			}
		}
	}
	
	
	@RequestMapping("selUpload")
	public String viewSelUpload(Authentication auth, Model model) {
		if(auth == null) {
			return "redirect:member/login"; 
			
		}else {
			
			CustomUser user = (CustomUser)auth.getPrincipal();
			String loginID = user.getUsername();
			MemberVO member = bumService.getMember(loginID);
			
			model.addAttribute("manager",member);
			
			return "main/selUpload";
		}
	}
	
	
	
	// 이미지 업로드
    @RequestMapping(value="/ImgUpLoad/imageUpload.do", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
    		HttpServletResponse response, MultipartHttpServletRequest multiFile
    		, @RequestParam MultipartFile upload) throws Exception{
    	// 랜덤 문자 생성
    	UUID uid = UUID.randomUUID();
    	
    	OutputStream out = null;
    	PrintWriter printWriter = null;
    	
    	//인코딩
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	try{
    		//파일 이름 가져오기
    		String fileName = upload.getOriginalFilename();
    		byte[] bytes = upload.getBytes();
    		
    		//이미지 경로 생성
    		String path = "C:\\Users\\tjoeun\\Pictures\\Saved Pictures" + "ckImage/";	// 이미지 경로 설정(폴더 자동 생성)
    		String ckUploadPath = path + uid + "_" + fileName;
    		File folder = new File(path);
    		System.out.println("imageUpload path:"+path);	// 이미지 저장경로 console에 확인
    		//해당 디렉토리 확인
    		if(!folder.exists()){
    			try{
    				folder.mkdirs(); // 폴더 생성
	    		}catch(Exception e){
	    			e.getStackTrace();
	    		}
    		}
    	
	    	out = new FileOutputStream(new File(ckUploadPath));
	    	out.write(bytes);
	    	out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
    	
	    	String callback = request.getParameter("CKEditorFuncNum");
	    	System.out.println(callback);
	    	printWriter = response.getWriter();
	    	String fileUrl = "/ImgUpLoad/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName; // 작성화면
	    	
	    	// 업로드시 메시지 출력
	    	printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
	    	printWriter.flush();
    	
    	}catch(IOException e){
    		e.printStackTrace();
    	} finally {
    		try {
    		System.out.println("imageUpload 닫기");
    		if(out != null) { out.close(); }
    		if(printWriter != null) { printWriter.close(); }
    	} catch(IOException e) { e.printStackTrace(); }
    	}
    	return;
    }
    
    
    // 서버로 전송된 이미지 뿌려주기
    @RequestMapping(value="/ImgUpLoad/ckImgSubmit.do")
    public void ckSubmit(@RequestParam(value="uid") String uid
    		, @RequestParam(value="fileName") String fileName
    		, HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    	
    	//서버에 저장된 이미지 경로
    	String path = "C:\\Users\\tjoeun\\Pictures\\Saved Pictures" + "ckImage/";	// 저장된 이미지 경로
    	System.out.println("ckImgSubmit path:"+path);
    	System.out.println("미리보기 + 업로드 미리보기 + HTMLeditor보기 총 3번 로드");
    	String sDirPath = path + uid + "_" + fileName;
    	
    	File imgFile = new File(sDirPath);
    	
    	//사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
    	if(imgFile.isFile()){
    		byte[] buf = new byte[1024];
    		int readByte = 0;
    		int length = 0;
    		byte[] imgBuf = null;
    		
    		FileInputStream fileInputStream = null;
    		ByteArrayOutputStream outputStream = null;
    		ServletOutputStream out = null;
    		
    		try{
    			fileInputStream = new FileInputStream(imgFile);
    			outputStream = new ByteArrayOutputStream();
    			out = response.getOutputStream();
    			
    			while((readByte = fileInputStream.read(buf)) != -1){
    				outputStream.write(buf, 0, readByte); 
    			}
    			
    			imgBuf = outputStream.toByteArray();
    			length = imgBuf.length;
    			out.write(imgBuf, 0, length);
    			out.flush();
    			
    		}catch(IOException e){
    			e.printStackTrace();
    		}finally {
    			outputStream.close();
    			fileInputStream.close();
    			out.close();
    			}
    		}
    	
    }
    
    //	HTML 에디터 DB저장 
    @PostMapping("amm")
    public String name(TrainerVO vo) {
    	log.info(vo.toString()+"엿엿");
    	instanceService.updateResume( vo.getM_no() , vo.getT_sel() );
		
    	return "redirect:/manager";
	}
    @PostMapping("area.go")
    public String areaSave(@Param("seoul")String [] seoul,@Param("gyeonggi") String [] gyeonggi , int m_no){
    	instanceService.updateAddr( seoul,gyeonggi , m_no, "");
    	System.out.println(seoul);
    	System.out.println(gyeonggi);
    	return "redirect:/manager";
    }
    
    
    
    @GetMapping("memberEstimate")
    public String memberEstimateMapping(int e_no) {
    	int mappingNumber = sungminService.getEOneEstimate(e_no).getE_con();
		if(mappingNumber == 0) {
			return "redirect:/main/estimate1?e_no="+e_no;
		}else {
			return "redirect:/main/estimate3?e_no="+e_no;
		}
    }
    
    @GetMapping("managerEstimate")
    public String managerEstimateMapping(int e_no) {
    	int mappingNumber = sungminService.getEOneEstimate(e_no).getE_con();
    	if(mappingNumber == 0) {
    		return "redirect:/main/estimate2?e_no="+e_no;
    	}else {
    		return "redirect:/main/estimate3?e_no="+e_no;
    	}
    }
    
    
    
	@PostMapping(value = "payment/members", produces = "application/text; charset=utf8")
	@ResponseBody
	public String paymentsReturn(Authentication auth , String e_no) {
		
		System.out.println(e_no+"이노다");
		CustomUser user = (CustomUser)auth.getPrincipal();
		String loginID = user.getUsername();
		MemberVO member = bumService.getMember(loginID);
		
		Map<String,String> result = new HashMap<String,String>();
		JsonObject jsonObject = new JsonObject();

		// Gson 객체 생성
		Gson gson = new Gson();
		
		EstimateVO estimate = sungminService.getEOneEstimate(Integer.parseInt(e_no));
		MemberVO manager = sungminService.getOneMember(estimate.getM_no_manager());
		
		
		
		boolean tCheck = true;
		//훈련사인지 체크
		if(sungminService.getTrainer(manager.getM_no())!=null) {
			log.info("훈련사로 들어옵니다"+manager.getM_no());
			 tCheck = true; 
		}else {
			log.info("미용사로 들어옵니다"+manager.getM_no());
			 tCheck = false; 
		}
		
		
		
		
		
		if(tCheck) {
			TrainerVO trainer = sungminService.getMTrainer(manager.getM_no());
			
			result.put("t_no",""+trainer.getT_no());
			
		}else {
			HairstylistVO hair = sungminService.getMhairstylist(manager.getM_no());
			result.put("t_no",""+hair.getH_no());
					
		}
		result.put("e_no", ""+e_no);
		result.put("m_no",""+estimate.getM_no_puppy());
		result.put("t_m_no",""+estimate.getM_no_manager());
		result.put("t_name",""+manager.getM_nick());
		result.put("m_name",""+member.getM_nick());
		
		// 맵을 JSON Object 문자열로 바꿈
		String jsonString = gson.toJson(result);
		System.out.println(manager);
		System.out.println("요청됨"+jsonString);
		 
		return jsonString;
	 }
    
    
    @PostMapping("payment")
    public void paymentsInsert(String p_order, String p_name_user, 
    	String t_no_name,int p_amount,String m_no, String t_m_no, String e_no , String t_no , Authentication auth) {
    	PayVO pay = new PayVO();
    	int eno = Integer.parseInt(e_no);
    	pay.setM_no(Integer.parseInt(m_no));
    	pay.setP_order(p_order); 
    	pay.setP_name_user((p_name_user));
    	pay.setP_status(0);
    	pay.setP_amount(p_amount);
    	pay.setT_no_name((t_no_name));
    	pay.setT_no(Integer.parseInt(t_no));
    	
    	int result = instanceService.insertPay(pay);
    	result += instanceService.updateE_con(eno);
    	System.out.println(result);
    }
    
    
    

}

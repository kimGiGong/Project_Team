package com.goldDog.controller.sungmin;

import java.io.File;
import java.util.UUID;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.goldDog.domain.ADVO;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class adminController {

	@Autowired
	private MainService mainService;
	
	
	@RequestMapping("addAD")
	public void addAD(Model model) {
		
		//현재 등록된 광고3개 이름 가져오는 메서드
		ADVO ad1=mainService.getAdName(1);
		ADVO ad2=mainService.getAdName(2);
		ADVO ad3=mainService.getAdName(3);
		model.addAttribute("add1",ad1);
		model.addAttribute("add2",ad2);
		model.addAttribute("add3",ad3);
		
	}
	//메인 광고 수정파일 등록하는 컨트롤러
	@PostMapping("uploadPro")
	public String chageAD(MultipartHttpServletRequest request, Authentication auth,@Param("ad_no") Integer ad_no) {
		try {
			
		ADVO ad = new ADVO();	
			
		MultipartFile mf = request.getFile("img");
		log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
		
		log.info(mf.getSize());
		log.info(mf.getContentType());
		String path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
		
		
		// 이름 중복 방지를 위한 새 파일명 생성
		String uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		log.info(uuid);
		//업로드한 파일 확장자만 가져오기
		String orgName=mf.getOriginalFilename();
		String ext= orgName.substring(orgName.lastIndexOf("."));
		// 저장할 파일명
		String newFileName= uuid + ext;
		
		//DB 상에도 파일명을 저장해 준다.
		ad.setAd_img(newFileName);
		ad.setAd_no(ad_no);
		mainService.addAD(ad);
		 
		log.info("***********uuid"+uuid);
		//저장할 파일 전체 경로
		String imgPath = path+"\\"+newFileName;
		log.info("*****imgPath"+imgPath);

		// 파일 저장
		File copyFile = new File(imgPath);
		mf.transferTo(copyFile);
					
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/admin/addAD";
	}	
	
	
	@GetMapping("QnA")
	public void QnA(Model model) {
		
		//공지사항 가져와서 뿌려주기
		
		
		
		
		
		//현재 등록된 광고3개 이름 가져오는 메서드
		ADVO ad1=mainService.getAdName(1);
		ADVO ad2=mainService.getAdName(2);
		ADVO ad3=mainService.getAdName(3);
		model.addAttribute("add1",ad1);
		model.addAttribute("add2",ad2);
		model.addAttribute("add3",ad3);
		
	}
	
	
	
	
	
	
	
	
}

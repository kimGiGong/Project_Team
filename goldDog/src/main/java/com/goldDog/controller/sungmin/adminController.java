package com.goldDog.controller.sungmin;

import java.io.File;
import java.util.List;
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
import com.goldDog.domain.Criteria;
import com.goldDog.domain.Criteria2;
import com.goldDog.domain.NoticeVO;
import com.goldDog.domain.PageDTO;
import com.goldDog.domain.PageDTO2;
import com.goldDog.domain.QnAVO;
import com.goldDog.service.bum.domain.CustomUser;
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
		
		//현재 등록된 광고3개 이름 가져오는 메서드 훈련
		ADVO ad1=mainService.getAdName(1);
		ADVO ad2=mainService.getAdName(2);
		ADVO ad3=mainService.getAdName(3);
		model.addAttribute("add1",ad1);
		model.addAttribute("add2",ad2);
		model.addAttribute("add3",ad3);
		//미용
		ADVO ad4=mainService.getAdName(4);
		ADVO ad5=mainService.getAdName(5);
		ADVO ad6=mainService.getAdName(6);
		model.addAttribute("add4",ad4);
		model.addAttribute("add5",ad5);
		model.addAttribute("add6",ad6);
		
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
	public void QnA(Model model,Criteria cri,Integer pageNumber) {
		
		Criteria2 cri2 = new Criteria2();
		if(pageNumber!=null) {
			cri2.setPageNumber(pageNumber);
		}else {
			cri2.setPageNumber(1);
		}
		//공지사항 가져와서 뿌려주기
		log.info(cri2+"페이지 이동할때 정보");
		List<NoticeVO> notice =mainService.getAllNoticeCri(cri2);
		int countNotice = mainService.getAllNotice();
		log.info(notice+"dhdhdhdhdhdhdh");
		log.info(notice.size()+"성민확인");
		
		
		model.addAttribute("noticeCheck",notice.size());
		model.addAttribute("notice",notice);
		model.addAttribute("npager", new PageDTO2(cri2, countNotice)); 
		 
		
		//QnA 가져와서 뿌려주기
		log.info(cri+"페이지 이동할때 정보 QnA");
		List<QnAVO> QnA = mainService.getAllQnACri(cri);
		int countQna = mainService.getAllQnA();
		model.addAttribute("QnACheck",QnA.size());
		model.addAttribute("QnA",QnA);
		model.addAttribute("pager", new PageDTO(cri, countQna)); 
	
		
	}
	
	@GetMapping("noticeForm")
	public void noticeForm(Model model,@Param("n_no") int n_no) {
	
		
		mainService.addViewPoint(n_no);
		log.info(n_no+"가져왔어!!!!");
		NoticeVO notice =mainService.getNotice(n_no);
		model.addAttribute("notice",notice);
		
		
	}
	@GetMapping("QnAForm")
	public void QnAForm(Model model,@Param("q_no") int q_no) {
		mainService.addQViewPoint(q_no);
		log.info(q_no+"가져왔어!!!!");
		QnAVO QnA =mainService.getQnA(q_no);
		model.addAttribute("QnA",QnA);
		
		
	}
	
	
	@PostMapping("addNoticePro")
	public String addNoticePro(NoticeVO notice,MultipartHttpServletRequest request,Authentication auth) {
		try {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			notice.setM_id(m_id);
			
			
			NoticeVO ad = new NoticeVO();	
				
			MultipartFile mf = request.getFile("part_img");
			 String newFileName=null;
	         String path=null;
	         String uuid=null;
	         String orgName = null;
	         String ext=null;
	         
	         if(mf.getSize() != 0) {
	         
			log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
			
			log.info(mf.getSize());
			log.info(mf.getContentType());
			 path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
			
			
			// 이름 중복 방지를 위한 새 파일명 생성
			 uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
			log.info(uuid);
			//업로드한 파일 확장자만 가져오기
			 orgName=mf.getOriginalFilename();
			 ext= orgName.substring(orgName.lastIndexOf("."));
			// 저장할 파일명
			 newFileName= uuid + ext;
	         }
			//DB 상에도 파일명을 저장해 준다.
					
			int result = 0;
			if(mf.getSize() == 0) {
				notice.setN_img("default.png");
				 result = mainService.addNotice(notice);	
			}else if(mf.getSize() != 0) {
				notice.setN_img(newFileName);
				 result = mainService.addNotice(notice);
				log.info("***********uuid"+uuid);
				//저장할 파일 전체 경로
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);

				// 파일 저장
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
				 
				 
			}
			if(result == 1) {
				log.info("글추가완료");
			}
			 
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/admin/QnA";
	}
	
	@PostMapping("addQnAPro")
	public String addQnAPro(QnAVO qna,MultipartHttpServletRequest request,Authentication auth) {
		try {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			qna.setM_id(m_id);
			MultipartFile mf = request.getFile("part_img");
	        String newFileName=null;
	        String path=null;
	        String uuid=null;
	        String orgName = null;
	        String ext=null;
	        if(mf.getSize() != 0) {
			
	        	log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
	        	
	        	log.info(mf.getSize());
	        	log.info(mf.getContentType());
	        	 path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
			
				// 이름 중복 방지를 위한 새 파일명 생성
				 uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				//업로드한 파일 확장자만 가져오기
				 orgName=mf.getOriginalFilename();
				 ext= orgName.substring(orgName.lastIndexOf("."));
				// 저장할 파일명
				 newFileName= uuid + ext;
	        }
			//DB 상에도 파일명을 저장해 준다.

			int result = 0;
			if(mf.getSize() == 0) {
				qna.setQ_img("default.png");
				 result = mainService.addQnA(qna);	
			}else if(mf.getSize() != 0) {
				qna.setQ_img(newFileName);
				
				 result = mainService.addQnA(qna);
				 
				log.info("***********uuid"+uuid);
				//저장할 파일 전체 경로
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);

				// 파일 저장
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
				 
			}
			if(result == 1) {
				log.info("수정완료");
			}
		
						
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:/admin/QnA";
	}
	
	
	
	
	
	@GetMapping("noticeDeletePro")
	public String noticeDeletePro(@Param("n_no") int n_no,Criteria cri) {
		//notice 글 하나 삭제하기
		// 관리자가 글삭제를 누르면 모달 띄우고 삭제하기
		int result = mainService.deleteNotice(n_no);
		if(result == 1) {
			log.info("삭제완료");
		}
			int pageNum=1;
					//cri.getPageNum();
		return "redirect:/admin/QnA";
		
		
	}
	
	@PostMapping("noticeModifyPro")
	public String noticeModifyPro(NoticeVO notice,Criteria cri,MultipartHttpServletRequest request) {
		try {
			
			
			MultipartFile mf = request.getFile("part_img");
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

			int result = 0;
			if(mf.getOriginalFilename()==null) {
				notice.setN_img("dog.jpg");
				 result = mainService.modifyNotice(notice);	
			}else if(mf.getOriginalFilename()!=null) {
				notice.setN_img(newFileName);
				
				 result = mainService.modifyNotice(notice);
			}
			if(result == 1) {
				log.info("수정완료");
			}
			
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
		
		
		
		return "redirect:/admin/QnA";
		
		
	}
	
	@GetMapping("QnADeletePro")
	public String QnADeletePro(@Param("q_no") int q_no,Criteria cri) {
		//notice 글 하나 삭제하기
		// 관리자가 글삭제를 누르면 모달 띄우고 삭제하기
		int result = mainService.deleteQnA(q_no);
		if(result == 1) {
			log.info("삭제완료");
		}
		int pageNum= 1;
		//cri.getPageNum();
		return "redirect:/admin/QnA";
		
		
	}
	
	@PostMapping("QnAModifyPro")
	public String QnAModifyPro(QnAVO qna,Criteria cri,MultipartHttpServletRequest request) {
		try {
			
			
			MultipartFile mf = request.getFile("part_img");
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

			int result = 0;
			
			if(mf.getOriginalFilename()==null) {
				qna.setQ_img("dog.jpg");
				 result = mainService.modifyQnA(qna);
			}else if(mf.getOriginalFilename()!=null) {
				qna.setQ_img(newFileName);
				
				 result = mainService.modifyQnA(qna);
			}
			if(result == 1) {
				log.info("수정완료");
			}
			
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
		
		return "redirect:/admin/QnA";
		
		
	}
	
	
	
	
	
	
	
}

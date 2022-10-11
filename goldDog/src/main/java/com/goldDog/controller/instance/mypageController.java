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
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.goldDog.domain.AddressTranslator;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.instance.MyPageService;
import com.goldDog.service.sungmin.MainService;

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
	
	
	/*
	@RequestMapping("headers.do")
	public String headers(Authentication auth, Model model) {
		if(auth == null) {
			return "header";
		}else {
			CustomUser user = (CustomUser)auth.getPrincipal();
			MemberVO member =  user.getMember();
			model.addAttribute("member",member);
			return "header";
		}
	}
	*/
	
	
	//	일반 이용자 MyPage 이동
	@GetMapping("mypage")
	public String viewMypage(Authentication auth, Model model) {
		
		CustomUser user = (CustomUser)auth.getPrincipal();
		String loginID = user.getUsername();
		MemberVO member = bumService.getMember(loginID);
		model.addAttribute("manager",member);
		
		return "mypage/mypage";
	}
	
//	매니저 MyPage 이동
	@RequestMapping("manager")
	public String viewManager(Authentication auth, Model model) {
		if(auth == null) {
			return "member/login"; 
			
		}else {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String loginID = user.getUsername();
			MemberVO member = bumService.getMember(loginID);
			AddressVO address = instanceService.getAddress(member.getM_no());
			List<Object> list = new ArrayList<Object>();
			AddressTranslator addrtr = new AddressTranslator();
			List<String []> area = new ArrayList<String[]>();
			area.add(addrtr.getSeoul());
			area.add(addrtr.getGyeonggi());
			list.add(member);
			list.add(address.getA_addr());
			list.add(area);
			System.out.println(list);
			model.addAttribute("managerlist",list);
			
			return "mypage/managerpage";
		}
	}
	
	
	@RequestMapping("selUpload")
	public String viewSelUpload(Authentication auth, Model model) {
		if(auth == null) {
			return "member/login"; 
			
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
    public void name(TrainerVO vo) {
    	log.info(vo.toString());
		
	}
    

}

package com.team.project;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	IamportClient client = new IamportClient( "4565286812547616", "rwecWl1uRkZXcYODaio6woHxjTfJlPhkSjlMWBEkXUChS4Ra7ir7gQMT2rOolu91PV7iVF6CMEMhw8ua");;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "api";
	}
	
	
	
	
	
	
	
	@RequestMapping("/req")
	public String req() {
		try {
			IamportResponse<Payment> paymentResponse = client.paymentByImpUid("imp_23825600");
			//TODO : 처리 로직
			
			IamportResponse<AccessToken> auth_response = client.getAuth();
			System.out.println(auth_response.getResponse());
			System.out.println(auth_response.getResponse().getToken());
			
			
			
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO : 401 Unauthorized 
				System.out.println("401 Unauthorized ");
				break;
			case 404 :
				//TODO : imp_123412341234 에 해당되는 거래내역이 존재하지 않음
				System.out.println("imp1234 에 해당되는 거래내역이 존재하지 않음");
			 	break;
			case 500 :
				//TODO : 서버 응답 오류
				System.out.println("서버 응답 오류");
				break;
			}
		} catch (IOException e) {
			//서버 연결 실패
			e.printStackTrace();
		}
		
		//	리턴
		return "api";
	}

	
}

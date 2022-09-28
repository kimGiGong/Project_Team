package com.team.project;

import static org.junit.Assert.assertNotNull;

import java.io.IOException;

import org.aspectj.lang.annotation.Before;
import org.junit.Test;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;

public class IamportRestTest {

	 IamportClient client;


	    @org.junit.Before
	    public void setup() {
	        String test_api_key = "4565286812547616";
	        String test_api_secret = "rwecWl1uRkZXcYODaio6woHxjTfJlPhkSjlMWBEkXUChS4Ra7ir7gQMT2rOolu91PV7iVF6CMEMhw8ua";
	        client = new IamportClient(test_api_key, test_api_secret);
	    }

	    @Test
	    public void testGetToken() {
	        try {
	            IamportResponse<AccessToken> auth_response = client.getAuth();

	            assertNotNull(auth_response.getResponse());
	            assertNotNull(auth_response.getResponse().getToken());
	            
	            System.out.println(auth_response.getResponse());
	            System.out.println(auth_response.getResponse().getToken());
	            
	        } catch (IamportResponseException e) {
	            System.out.println(e.getMessage());

	            switch (e.getHttpStatusCode()) {
	                case 401:
	                    //TODO
	                    break;
	                case 500:
	                    //TODO
	                    break;
	            }
	        } catch (IOException e) {
	            //서버 연결 실패
	            e.printStackTrace();
	        }
	    }
}

package com.goldDog.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import lombok.Getter;

public class AddressTranslator {
	
	private static final Map<String, String> seoulMap;
	private static final Map<String, String> gyeonggiMap;
	
	
	
	static final String [] seoul = {"전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구",
			"도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구",
			"영등포구","용산구","은평구","종로구","중구","중랑구"};
	static final String [] gyeonggi = {"전체","가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시",
			"광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시 분당구",
			"성남시 수정구","성남시 중원구","수원시 권선구","수원시 장안구","수원시 팔달구","수원시 영통구",
			"시흥시","안산시 단원구","안산시 상록구","안성시","안양시 동안구","안양시 만안구","양주시","양평군",
			"여주시","연천군","오산시","용인시 기흥구","용인시 수지구","용인시 처인구","의왕시","의정부시","이천시",
			"파주시","평택시","포천시","하남시","화성시"};
	
	public Map<String, String> getSeoulMapMap() {
		return this.seoulMap;
	}
	public Map<String, String> getGyeonggiMap() {
		return this.gyeonggiMap;
	}
	
	public String[] getSeoul() {
		return this.seoul;
	}
	
	public String[] getGyeonggi() {
		return this.gyeonggi;
	}
	
	
	//	static hashmap 초기값 넣어주기 
	static {
		
		Map<String,String>implMap00 = new HashMap<String, String>();
		Map<String,String>implMap01 = new HashMap<String, String>();
		
		
		//	아마도 String[] 추가? 예정
		
		
		for (int i = 0; i < seoul.length; i++) {
			if(i<10) {
				implMap00.put("000"+i,seoul[i]);
			}else {
				implMap00.put("00"+i,seoul[i]);
			}
		}
		
		
		
		System.out.println();
		for (int i = 0; i < gyeonggi.length; i++) {
			if(i<10) {
				implMap01.put("010"+i,gyeonggi[i]);
			}else {
				implMap01.put("01"+i,gyeonggi[i]);
			}
		}
		
		//	map 입력
		seoulMap = Collections.unmodifiableMap(implMap00);
		gyeonggiMap = Collections.unmodifiableMap(implMap01);
	}
	
	
	//	받은 문자열 분해 및 서치
	public List<String> translator(String addr) {
		if(!addr.isEmpty()) {
			
			String [] address = addr.split("_");
			Arrays.sort(address);
			
			List<String> list = new ArrayList<String>();
			
					
			for (int i = 0; i < address.length; i++) {
				if(address[i].substring(0,1).equals("00")) {
					list.add(seoulMap.get(address[i]));
				}else if(address[i].substring(0,1).equals("01")) {
					list.add(gyeonggiMap.get(address[i]));
				}
			}
			
			return list;
		}else {
			return null;
		}
	} 
	
	
	
	
	
	
	

}

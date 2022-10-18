package com.goldDog.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import lombok.Data;
import lombok.Getter;
import oracle.net.aso.m;

public class AddressTranslator {
	
	static final Map<String, String> seoulMap;
	static final Map<String, String> gyeonggiMap;
	
	
	
	static final String [] seoul = {"전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구",
			"도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구",
			"영등포구","용산구","은평구","종로구","중구","중랑구"};
	static final String [] gyeonggi = {"전체","가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시",
			"광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시 분당구",
			"성남시 수정구","성남시 중원구","수원시 권선구","수원시 장안구","수원시 팔달구","수원시 영통구",
			"시흥시","안산시 단원구","안산시 상록구","안성시","안양시 동안구","안양시 만안구","양주시","양평군",
			"여주시","연천군","오산시","용인시 기흥구","용인시 수지구","용인시 처인구","의왕시","의정부시","이천시",
			"파주시","평택시","포천시","하남시","화성시"};
	
	public Map<String, String> getSeoulMap() {
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
	public List<AreaVO> translator(String addr) {
		if(addr != null) {
			String [] address = null;
			if(addr.length() != 1) {
				address = addr.split("_");
			}
			Arrays.sort(address);
			System.out.println("address trans"+address);
			List<AreaVO> list = new ArrayList<AreaVO>();
			for (int i = 0; i < address.length ; i++) {
				AreaVO vo = new AreaVO();
				if(address[i].startsWith("00")) {
					vo.setArea("seoul");
					vo.setField(seoulMap.get(address[i]));
					vo.setAreaKO("서울");
					list.add(vo);
				}else if(address[i].startsWith("01")) {
					vo.setArea("gyeonggi");
					vo.setField(gyeonggiMap.get(address[i]));
					vo.setAreaKO("경기");
					list.add(vo);
				}
			}
			return list;
		}else {
			return null;
		}
	} 
	
	private String addressNumberReanslator(String [] arr) {
		
		String numbercode="";
		
		for(String str : arr) {
			for(String key : seoulMap.keySet()) {
				if(seoulMap.get(key).equals(str)) {
					if(arr[arr.length-1].equals(str)) {
						numbercode += key;
					}else {
						numbercode += key+"_";
						break;
					}
				}
			}
		}
		
		
		return numbercode;
	}
	private String addressNumberReanslatorGyeonggiMap(String [] arr) {
		
		String numbercode="";
		
		for(String str : arr) {
			for(String key : gyeonggiMap.keySet()) {
				if(gyeonggiMap.get(key).equals(str)) {
					if(arr[arr.length-1].equals(str)) {
						numbercode += key;
						break;
					}else {
						numbercode += key+"_";
						break;
					}
				}
			}
		}
		return numbercode;
	}
	
	public String getNumberCode(String[] arr , String[] arr2) {
		String numbercode ="";
		if(arr != null) {
			
			numbercode+=addressNumberReanslator(arr);
					
			if(arr2 != null) {
				numbercode+="_"+addressNumberReanslatorGyeonggiMap(arr2);
			}
			
		}else {
			if(arr2 != null) {
				numbercode = addressNumberReanslatorGyeonggiMap(arr2);
			}
		}
		
		
		return numbercode;
	} 
	
	

}


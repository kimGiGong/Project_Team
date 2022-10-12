package com.goldDog.service.instance;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressTranslator;
import com.goldDog.domain.AddressVO;
import com.goldDog.persistence.instance.MyPageMapper;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageMapper Mapper;
	
	@Override
	public AddressVO getAddress(int m_no) {
		AddressVO addr = Mapper.getAddress(m_no);
		return addr;
	}

	@Override
	public void updateAddr(String [] seoul, String [] gyeonggi , int m_no , String numbercode) {
		AddressTranslator trans = new AddressTranslator();
		if(seoul.length!=0 || gyeonggi.length!=0) {
			numbercode = trans.getNumberCode(seoul,gyeonggi);
		}
		System.out.println(m_no);
		System.out.println(numbercode);
	}




}

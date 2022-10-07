package com.goldDog.service.instance;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}

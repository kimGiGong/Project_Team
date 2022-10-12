package com.goldDog.persistence.instance;

import com.goldDog.domain.AddressVO;

public interface MyPageMapper {
	
	public AddressVO getAddress(int m_no);
	
	public void updateAddr(int m_no , String a_addr); 
	
}

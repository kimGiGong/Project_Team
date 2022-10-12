package com.goldDog.persistence.instance;

import org.apache.ibatis.annotations.Param;

import com.goldDog.domain.AddressVO;

public interface MyPageMapper {
	
	public AddressVO getAddress(int m_no);
	
	public void updateAddr(@Param ("m_no")int m_no , @Param("numbercode") String numbercode); 
	
}

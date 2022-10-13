package com.goldDog.service.instance;

import com.goldDog.domain.AddressVO;

public interface MyPageService {
	public AddressVO getAddress(int m_no);
	
	void updateAddr(String[] seoul, String[] gyeonggi, int m_no, String numbercode);

	public void updateResume(int m_no, String t_sel);

}

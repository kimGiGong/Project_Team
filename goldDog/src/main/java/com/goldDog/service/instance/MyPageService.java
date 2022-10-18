package com.goldDog.service.instance;

import java.util.List;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.PayVO;

public interface MyPageService {
	public AddressVO getAddress(int m_no);
	
	public void updateAddr(String[] seoul, String[] gyeonggi, int m_no, String numbercode);

	public void updateResume(int m_no, String t_sel);

	public List<EstimateVO> getEstimate(int m_no);

	public List<EstimateVO> getMemberEstimate(int m_no);

	public int insertPay(PayVO pay);

	public int updateE_con(int eno);

}

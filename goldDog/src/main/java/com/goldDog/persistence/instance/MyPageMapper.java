package com.goldDog.persistence.instance;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.PayVO;

public interface MyPageMapper {
	
	public AddressVO getAddress(int m_no);
	
	public void updateAddr(@Param ("m_no")int m_no , @Param("numbercode") String numbercode);

	public void updateResume( @Param ("m_no") int m_no, @Param ("t_sel") String t_sel);

	public List<EstimateVO> getEstimate(@Param ("m_no") int m_no); 
	
	public List<EstimateVO> getMemberEstimate(@Param ("m_no") int  m_no);

	public int insertPay(PayVO pay);
	
	public int updateE_con( int e_no);
	
	
}

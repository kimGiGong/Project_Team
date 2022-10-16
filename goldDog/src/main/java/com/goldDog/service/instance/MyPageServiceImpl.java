package com.goldDog.service.instance;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressTranslator;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.EstimateVO;
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
		if(seoul != null || gyeonggi != null) {
			numbercode = trans.getNumberCode(seoul,gyeonggi);
		}
		Mapper.updateAddr(m_no, numbercode);
	}

	@Override
	public void updateResume(int m_no, String t_sel) {
		Mapper.updateResume(m_no, t_sel);
	}

	@Override
	public List<EstimateVO> getEstimate(int m_no) {
		return Mapper.getEstimate(m_no);
	}

	@Override
	public List<EstimateVO> getMemberEstimate(int m_no) {
		return Mapper.getMemberEstimate(m_no);
	}




}

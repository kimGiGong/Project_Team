package com.goldDog.serivece;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.persistence.MainMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mapper;
	
	
	@Override
	public List<MemberVO> getMember(Criteria cri) {
		log.info("하나 가져온다.");
		return mapper.getMember(cri);
	}

	@Override
	public List<ReviewVO> getReview() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AddressVO address() {
		// TODO Auto-generated method stub
		return null;
	}

}

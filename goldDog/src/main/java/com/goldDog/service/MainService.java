package com.goldDog.service;

import java.util.List;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;

public interface MainService {

	//정렬 후 맴버정보 가져오기 페이징 처리
	public List<MemberVO> getMember(Criteria cri);
	
	public TrainerVO getTrainer(int m_no);
	
	//리뷰정보 가져오기
	public List<ReviewVO> getReview();
	
	//지역정보 가져오기
	public AddressVO address();
	
	//관리자가 변경한 이미지 가져와서 띄우기
	

	
	
	
	
}

package com.goldDog.persistence.sungmin;

import java.util.List;

import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;

public interface MainMapper {
	
	
	// 맴버 정보 가져오기 페이징 처리 된 버젼
	public List<MemberVO> getMember(Criteria cri); 
	
	//맴버 번호 받아서 맞는 트레이너 가져오기
	public TrainerVO getTrainer(int m_no);
	
	//모든리뷰 가져오기 
	public List<ReviewVO> getReview();
	
	
	
}

package com.goldDog.persistence.sungmin;

import java.util.List;

import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;

public interface MainMapper {
	
	
	// 맴버 정보 가져오기 페이징 처리 된 버젼
	public List<MemberVO> getMember(Criteria cri); 
	
	// 맴버 한명의 정보 가져오기
	public MemberVO getOneMember(int m_no);
	
	//맴버 번호 받아서 맞는 트레이너 가져오기
	public TrainerVO getTrainer(int t_no);
	
	//전체 훈련사 리스트 가져오기
	public List<TrainerVO> getAllTrainer();
	
	
	//모든리뷰 가져오기 
	public List<ReviewVO> getReview(int m_no);
	
	//훈련사 한명에 해당하는 리뷰 갯수 가져오기
	public int getReviewCount(int t_no);
	
	//트레이너 판매정보 등록
	public int addTinfo(TrainerVO trainer);

	//훈련사 한명에 해당하는 모든 리뷰 가져오기
	public List<ReviewVO> getAllReview(int t_no);
	
	public int rAvg(int t_no,int rCount);
	
	
	
}

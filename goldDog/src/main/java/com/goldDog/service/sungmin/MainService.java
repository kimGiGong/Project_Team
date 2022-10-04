package com.goldDog.service.sungmin;

import java.util.List;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;

public interface MainService {

	//모든 맴버 가져오기
	public List<MemberVO> getMember(List<Integer> t_m_no_list);
	//정렬 후 맴버정보 가져오기 페이징 처리
	public List<MemberVO> getAllMember(List<Integer> t_no_list);
	//맴버 한명의 정보 가져오기
	public MemberVO getOneMember(int m_no); 
	
	
	
	//훈련사 정보 하나 가져오기
	public TrainerVO getTrainer(int t_no);
	//모든 훈련사 가져오기
	public List<TrainerVO> getAllTrainerT_no(List<Integer> t_no_list);
	public List<TrainerVO> getAllTrainer();
	
	
	//맴버 한명의 리뷰 가져오기
	public List<ReviewVO> getReview(List<Integer> t_no_list);
	//훈련사들 리뷰평점
	public List<List<ReviewVO>> getTReview(List<Integer> t_no_list);
	
	
	//리뷰정보 여러개 가져오기(훈련사용)
	public List<ReviewVO> getAllReview(int t_no);
	
	
	
	//한 훈련사의 리뷰 총갯수 가져오기
	public int getReviewCount(int t_no);

	
	
	
	
	
	//지역정보 가져오기
	public AddressVO address();
	
	//훈련사 판매등록
	public int addTinfo(TrainerVO trainer);	
	 
	

	

	
	
	
	
}

package com.goldDog.persistence.sungmin;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;

public interface MainMapper {
	
	
	// 맴버 정보 가져오기 페이징 처리 된 버젼
	public List<MemberVO> getAllMember(); 
	public List<MemberVO> getMember(List<Integer> list); 
	
	// 맴버 한명의 정보 가져오기
	public MemberVO getOneMember(int m_no);
	
	//맴버 번호 받아서 맞는 트레이너 가져오기
	public TrainerVO getTrainer(int t_no);
	
	//전체 훈련사 리스트 가져오기
	public List<TrainerVO> getAllTrainer();
	//전체 훈련사 T_no 가져오기
	public List<TrainerVO> getAllTrainerT_no(List<Integer> list);
	
	//훈련사한명의 리뷰 가져오기
	public List<ReviewVO> getReview(int t_no);
	//훈련사들 평점 가져오기 
	public List<List<ReviewVO>> getTReview(List<Integer> list);
	
	//훈련사 한명에 해당하는 리뷰 갯수 가져오기
	public int getReviewCount(int t_no);
	
	//트레이너 판매정보 등록
	public int addTinfo(TrainerVO trainer);

	//견적서 넣어주는 메서드
	public int insertEst(EstimateVO est);
	
	//훈련사 한명에 해당하는 모든 리뷰 가져오기
	public List<ReviewVO> getAllReview(int t_no);
	
	//견주의 모든 강아지 가져오는 메서드
	public List<DogVO> getMyDog(int user_M_no);
	
	//강아지 한마리 가져오는 메서드
	public DogVO getOneDog(int d_no); 
	
	//사용자가 가지고 있는 견적서 불러오기
	public EstimateVO getEstimate(int m_no);
	
	//사용자가 가지고 있는 주소 리스트 불러오기
	public List<AddressVO> getMyAddress(int user_M_no);
	
	
}

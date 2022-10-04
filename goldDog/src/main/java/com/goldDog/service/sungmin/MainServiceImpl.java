package com.goldDog.service.sungmin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.persistence.sungmin.MainMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mapper;
	
	
	@Override
	public List<MemberVO> getMember(List<Integer> t_m_no_list) {
		log.info("맴버 여러명 가져온다.");
		return mapper.getMember(t_m_no_list);  
	}
	@Override
	public List<MemberVO> getAllMember(List<Integer> t_no_list) {
		return mapper.getMember(t_no_list);  
	}
	@Override
	public MemberVO getOneMember(int m_no) {
		log.info("맴버 한명만 가져온다.");
		
		
		return mapper.getOneMember(m_no);
	}

	@Override
	public TrainerVO getTrainer(int t_no) {
		log.info("트레이너 정보 가져오니?");
		return mapper.getTrainer(t_no);
	}
	
	@Override
	public List<TrainerVO> getAllTrainerT_no(List<Integer> t_no_list) {
			log.info("훈련사 정보 다 가져오는 메서드 호출");
		return mapper.getAllTrainerT_no(t_no_list);
	}
	
	@Override
	public List<TrainerVO> getAllTrainer() {
		log.info("훈련사 정보 다 가져오는 메서드 호출");
		return mapper.getAllTrainer();
	}
	
	@Override
	public int getReviewCount(int t_no) {
		log.info("리뷰 카운트 세버렸다");
		return mapper.getReviewCount(t_no);
	}
	
	@Override
	public List<ReviewVO> getReview(int t_no) {
		
		log.info("리뷰정보 가져왔떠");
		
		return mapper.getReview(t_no);  
	}
	
	@Override
	public List<List<ReviewVO>> getTReview(List<Integer> t_no_list) {
		log.info("리뷰정보 가져왔떠");
		return mapper.getTReview(t_no_list); 
	}

	@Override
	public AddressVO address() {
		// TODO Auto-generated method stub
		return null;
	}
	
	//트레이너 판매정보 등록
	@Override 
	public int addTinfo(TrainerVO trainer) {
		
		return mapper.addTinfo(trainer);
	}
	
	//훈련사 한명에 해당하는 모든 리뷰 가져오기
	@Override
	public List<ReviewVO> getAllReview(int t_no) {
		
		return mapper.getAllReview(t_no);
	}
	



	

}

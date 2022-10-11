package com.goldDog.service.sungmin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.ADVO;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.HairstylistVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.NoticeVO;
import com.goldDog.domain.QnAVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.persistence.sungmin.MainMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mapper;
	
	// 맴버 ******************************************************
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

	
	
	// 훈련사 *******************************************************
	@Override
	public TrainerVO getTrainer(int t_no) {
		log.info("트레이너 정보 가져오니?");
		return mapper.getTrainer(t_no);
	}
	@Override
	public List<TrainerVO> getAllTrainer(Criteria cri) {
		log.info("훈련사 정보 다 가져오는 메서드 호출");
		return mapper.getAllTrainer(cri);
	}
	@Override
	public int getAllTrainerCount() {
		return mapper.getAllTrainerCount();
	}
	
	//트레이너 판매정보 등록
	@Override 
	public int addTinfo(TrainerVO trainer) {
		
		return mapper.addTinfo(trainer);
	}
	
	//미용사 *********************************************************
	//모든 미용사 가져오기
	@Override
	public List<HairstylistVO> getAllHairstylist() {
		return mapper.getAllHairstylist();
	}
	//모든 미용사 가져오기 h_no순으로 뽑기위함
	@Override
	public List<HairstylistVO> getAllHairstylistH_no(List<Integer> h_no_list) {
		return mapper.getAllHairstylistH_no(h_no_list);
	}  
	//미용사 한명의 정보 가져오기
	@Override
	public HairstylistVO getHairstylist(int h_no) {
		return mapper.getHairstylist(h_no);
	}
		
	

	//리뷰 **********************************************************
	@Override
	public List<ReviewVO> getTReview(int t_no) {
		log.info("훈련사리뷰정보 가져왔떠");
		return mapper.getTReview(t_no);  
	}
	//미용사 한명의 가지고있는 리뷰 가져오기
	@Override
	public List<ReviewVO> getHReview(int h_no) {
		return mapper.getHReview(h_no);
	}
	
	//훈련사 한명에 해당하는 리뷰 갯수
	@Override
	public int getReviewCount(int t_no) {
		log.info("리뷰 카운트 세버렸다");
		return mapper.getReviewCount(t_no);
	}
	//훈련사 한명에 해당하는 모든 리뷰 가져오기
	@Override
	public List<ReviewVO> getAllReview(int t_no) {
		return mapper.getAllReview(t_no);
	}
	
	
	
	
	// 강아지 *******************************************************
	// 사용자 m_no 으로 사용자에게 등록된 강아지 한마리 가져오기
	@Override
	public List<DogVO> getMyDog(int user_M_no) {
		return mapper.getMyDog(user_M_no);
	}
	//강아지 한마리 가져오는 메서드
	@Override
	public DogVO getOneDog(int d_no) {
		return mapper.getOneDog(d_no);
	}

	
	
	
	
	//견적서 ********************************************************
	//견적서 만들어서 집어넣어주는 클래스
	@Override
	public int insertEst(EstimateVO est) {
		return mapper.insertEst(est);
	}
	//사용자가 가지고 있는 견적서 불러오기
	@Override
	public EstimateVO getEstimate(int m_no) {
		return mapper.getEstimate(m_no);
	}	
	//사용자가 가지고 있는 주소 가져오는 메서드
	@Override
	public List<AddressVO> getMyAddress(int user_M_no) {
		
		return mapper.getMyAddress(user_M_no);
	}
	@Override
	public AddressVO address() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	//광고 ********************************************************
		@Override
		public int addAD(ADVO ad) {
			return mapper.addAD(ad);
		}
		//광고 a 번에 등록된 애들 가져오는 메서드
		@Override
		public ADVO getAdName(int a) {
			return mapper.getAdName(a);
		}
	
	
	//공지사항 ********************************************************
	//공지사항 추가	
	@Override
	public int addNotice(NoticeVO notice) {
		return mapper.addNotice(notice);
	}
	
	//공지사항 모두 가져오기	
	@Override
	public List<NoticeVO> getAllNotice() {
		return mapper.getAllNotice();
	}
	
	//공지사항 조회수 올려주기
	@Override
	public void addViewPoint(int n_no) {
			mapper.addViewPoint(n_no);
	}
	//n_no에 해당하는 공지사항 가져오기
	@Override
	public NoticeVO getNotice(int n_no) {
		return mapper.getNotice(n_no);
	}
	// 공지사항 삭제하기
	@Override
	public int deleteNotice(int n_no) { 
		return mapper.deleteNotice(n_no);
	}
	//공지사항 수정하기
	@Override
	public int modifyNotice(NoticeVO notice) { 
		return mapper.modifyNotice(notice);
	} 
	
	 
	
	
	//QnA ********************************************************
	//공지사항 추가
	@Override
	public int addQnA(QnAVO QnA) {
		return mapper.addQnA(QnA);
	}
	//공지사항 모두 가져오기
	@Override
	public List<QnAVO> getAllQnA() {
		return mapper.getAllQnA();
	}
	//공지사항 조회수 올려주기
	@Override
	public void addQViewPoint(int q_no) {
		mapper.addQViewPoint(q_no);
	}
	//q_no에 해당하는 공지사항 가져오기
	@Override
	public QnAVO getQnA(int q_no) {
		return mapper.getQnA(q_no);
	}
	//q_no에 해당하는 공지사항 삭제하기
	@Override
	public int deleteQnA(int q_no) {
		return mapper.deleteQnA(q_no);
	}
	//q_no에 해당하는 공지사항 수정하기
	@Override
	public int modifyQnA(QnAVO QnA) {
		return mapper.modifyQnA(QnA);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	

}

package com.goldDog.service.sungmin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldDog.domain.ADVO;
import com.goldDog.domain.AddressVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.Criteria2;
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
		return mapper.getAllMember(t_no_list);  
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
	//m_no 로 훈련사 한명 가져오기
	@Override
	public TrainerVO getMTrainer(int m_no) {
		return mapper.getMTrainer(m_no);
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
	//검색한 훈련사 가져오기
	@Override
	public List<TrainerVO> searchTrainer(Criteria cri) {
		return mapper.searchTrainer(cri);
	}
	//정렬 검색한 훈련사 리턴하기
	@Override
	public List<TrainerVO> sortTrainer(Criteria cri) {
		return mapper.sortTrainer(cri);
	}
	//이름으로 검색했을때 나오는 훈련사 카운팅
	@Override
	public int countSearchTrainer(Criteria cri) {
		return mapper.countSearchTrainer(cri);
	}
	//훈련사 판매등록 업데이트하기
	@Override
	public int updateTinfo(TrainerVO trainer) {
		return mapper.updateTinfo(trainer);
	}
	//활동지역으로 훈련사 찾기
	@Override
	public List<TrainerVO> getAreaTrainer(String addr) {
		
		return mapper.getAreaTrainer(addr);
	}

	
	
	
	//미용사 *********************************************************
	//미용사 한명의 정보 가져오기
	@Override
	public HairstylistVO getHairstylist(int h_no) {
		return mapper.getHairstylist(h_no);
	}
	//m_no 로 미용사 한명 가져오기
	@Override
	public HairstylistVO getMhairstylist(int m_no) {
		return mapper.getMhairstylist(m_no);
	}
	//전체 미용사 리스트 가져오기
	@Override
	public List<HairstylistVO> getAllHairstylist(Criteria cri) {
		return mapper.getAllHairstylist(cri);
	}
	//전체 미용사 T_no 가져오기
	@Override
	public int getAllhairstylistCount() {
		return mapper.getAllhairstylistCount();
	}
	//미용사 판매정보 등록
	@Override
	public int addHinfo(HairstylistVO hairstylist) {
		return mapper.addHinfo(hairstylist);
	}
	//검색한 미용사 가져오기
	@Override
	public List<HairstylistVO> searchHairstylist(Criteria cri) {
		return mapper.searchHairstylist(cri);
	}
	//정렬 검색한 미용리턴하기
	@Override
	public List<HairstylistVO> sortHairstylist(Criteria cri) {
		return mapper.sortHairstylist(cri);
	}
	//이름으로 검색했을때 나오는 미용사 카운팅
	@Override
	public int countSearchHairstylist(Criteria cri) {
		return mapper.countSearchHairstylist(cri);
	}
	//미용사 판매등록 업데이트하기
	@Override
	public int updateHinfo(HairstylistVO hairstylist) {
		return mapper.updateHinfo(hairstylist);
	}
	//활동지역으로 미용사 찾기
	@Override
	public List<HairstylistVO> getAreaHairstylist(String addr) {
		return mapper.getAreaHairstylist(addr);
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
	//훈련사 한명의 총 리뷰평점&갯수 업데이트
	@Override
	public int updateRAvg(int t_no,double ravg,int total) {
		return mapper.updateRAvg(t_no, ravg,total);
	}
	//미용사 한명의 총 리뷰평점&갯수 업데이트
	@Override
	public int updateRHAvg(int h_no,double ravg,int total) {
		return mapper.updateRHAvg(h_no, ravg,total);
	}
	//메인에 띄워줄 훈련사의 모든리뷰 가져오기
	@Override
	public List<ReviewVO> getAllTReview() {
		return mapper.getAllTReview();
	}
	//메인에 띄워줄 미용사의 모든리뷰 가져오기
	@Override
	public List<ReviewVO> getAllHReview() {
		return mapper.getAllHReview();
	}
	//견적서 e_no 으로 리뷰 체크 하는 메서드
	@Override
	public int reviewCheck(int e_no) {
		return mapper.reviewCheck(e_no);
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
	//견적서 정보 불러오기 아직 처리안된것만 e_con =1
	@Override
	public List<EstimateVO> getEstimate(int m_no) {
		return mapper.getEstimate(m_no);
	}
	//사용자가 가지고 있는 견적서 불러오기
	@Override
	public EstimateVO getEOneEstimate(int e_no) {
		return mapper.getEOneEstimate(e_no);
	}
	//견적서 하나 삭제해주는 메서드
	@Override
	public int deleteEst(int e_no) {
		return mapper.deleteEst(e_no);
	}
	//견적서 하나 업데이트하는 메서드
	@Override
	public int updateEst(EstimateVO estimate) {
		return mapper.updateEst(estimate);
	}
	//견적서 e_con 업데이트 하는 메서드
	@Override
	public int updateEstEcon(EstimateVO estimate) {
		return mapper.updateEstEcon(estimate);
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
	//주소 고유넘버로 주소 가져오기
	@Override
	public AddressVO getOneAddress(int a_no) {
		return mapper.getOneAddress(a_no);
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
	public int getAllNotice() {
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
	//공지사항 모두 가져오기(최신순으로)페이징처리
	@Override
	public List<NoticeVO> getAllNoticeCri(Criteria2 cri) {
		return mapper.getAllNoticeCri(cri);
	}
	 
	
	
	//QnA ********************************************************
	//공지사항 추가
	@Override
	public int addQnA(QnAVO QnA) {
		return mapper.addQnA(QnA);
	}
	//공지사항 모두 가져오기
	@Override
	public int getAllQnA() {
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
	//QnA 모두 가져오기
	@Override
	public List<QnAVO> getAllQnACri(Criteria cri) {
		return mapper.getAllQnACri(cri);
	}



	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	

}

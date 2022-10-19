package com.goldDog.service.sungmin;

import java.util.List;

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

public interface MainService {

	
	// 맴버 ******************************************************
	//모든 맴버 가져오기
	public List<MemberVO> getMember(List<Integer> t_m_no_list);
	//정렬 후 맴버정보 가져오기 페이징 처리
	public List<MemberVO> getAllMember(List<Integer> t_no_list);
	//맴버 한명의 정보 가져오기
	public MemberVO getOneMember(int m_no); 
	
	
	// 훈련사 *******************************************************
	//훈련사 정보 하나 가져오기 
	public TrainerVO getTrainer(int t_no);
	//훈련사 정보 하나 가져오기 
	public TrainerVO getMTrainer(int m_no);
	//모든 훈련사숫자 가져오기
	public int getAllTrainerCount();
	public List<TrainerVO> getAllTrainer(Criteria cri);
	//훈련사 판매등록
	public int addTinfo(TrainerVO trainer);
	//이름 검색한 훈련사 한명 가져오기
	public List<TrainerVO> searchTrainer(Criteria cri);	
	//정렬 검색한 훈련사 리턴하기
	public List<TrainerVO> sortTrainer(Criteria cri);
	//이름으로 검색했을때 나오는 훈련사 카운팅
	public int countSearchTrainer(Criteria cri);
	//훈련사 판매등록 업데이트하기
	public int updateTinfo(TrainerVO trainer);
	//활동지역으로 훈련사 찾기
	public List<TrainerVO> getAreaTrainer(String addr);
	
	
	
	
	//미용사 *********************************************************
	//미용사 한명의 정보 가져오기
	public HairstylistVO getHairstylist(int h_no);
	//미용사 정보 하나 가져오기 
	public HairstylistVO getMhairstylist(int m_no);
	//전체 미용사 리스트 가져오기
	public List<HairstylistVO> getAllHairstylist(Criteria cri);
	//전체 미용사 T_no 가져오기
	public int getAllhairstylistCount();
	//미용사 판매정보 등록
	public int addHinfo(HairstylistVO hairstylist);
	//검색한 미용사 가져오기
	public List<HairstylistVO> searchHairstylist(Criteria cri);	
	//정렬 검색한 미용리턴하기
	public List<HairstylistVO> sortHairstylist(Criteria cri); 
	//이름으로 검색했을때 나오는 미용사 카운팅
	public int countSearchHairstylist(Criteria cri);
	//미용사 판매등록 업데이트하기
	public int updateHinfo(HairstylistVO hairstylist);
	//활동지역으로 미용사 찾기
	public List<HairstylistVO> getAreaHairstylist(String addr);
	
	
	
	
	
	
	
	
	
	//리뷰 **********************************************************
	//훈련사 한명의 리뷰 가져오기
	public List<ReviewVO> getTReview(int t_no);
	//미용사 한명의 리뷰 가져오기
	public List<ReviewVO> getHReview(int h_no);
	//리뷰정보 여러개 가져오기(훈련사용)
	public List<ReviewVO> getAllReview(int t_no);
	//한 훈련사의 리뷰 총갯수 가져오기
	public int getReviewCount(int t_no);
	//훈련사 한명의 총 리뷰평점 업데이트
	public int updateRAvg(int t_no,double ravg,int total);
	//미용사 한명의 총 리뷰평점&평점 업데이트
	public int updateRHAvg(int h_no,double ravg,int total);
	//메인에 띄워줄 훈련사의 모든리뷰 가져오기
	public List<ReviewVO> getAllTReview();
	//메인에 띄워줄 미용사의 모든리뷰 가져오기
	public List<ReviewVO> getAllHReview();
	//견적서 e_no 으로 리뷰 체크 하는 메서드
	public int reviewCheck(int e_no);
	
	
	
	
	// 강아지 *******************************************************
	// 사용자 m_no 으로 사용자에게 등록된 강아지 한마리 가져오기
	public List<DogVO> getMyDog(int user_M_no);
	// D_no 로 강아지 정보 하나 가져오기
	public DogVO getOneDog(int d_no); 
	
	
	//견적서 ********************************************************
	//회원이 협의하기 눌렀을때 견적서 만들어 주는 메서드
	public int insertEst(EstimateVO est);
	//견적서 정보 불러오기 아직 처리안된것만 e_con =1
	public List<EstimateVO> getEstimate(int m_no);
	//견적서 하나 가져오는 메서드 
	public EstimateVO getEOneEstimate(int e_no);
	//견적서 하나 삭제하는 메서드
	public int deleteEst(int e_no);
	//견적서 하나 업데이트하는 메서드
	public int updateEst(EstimateVO estimate);
	//견적서 e_con 업데이트 하는 메서드
	public int updateEstEcon(EstimateVO estimate);

	
	
	// 주소 ********************************************************
	//지역정보 가져오기
	public AddressVO address();
	//회원 한명이 가지고 있는 주소 리스트 리턴
	public List<AddressVO> getMyAddress(int user_M_no);
	//주소 고유넘버로 주소 가져오기
	public AddressVO getOneAddress(int a_no);
	
	
	// 광고 ********************************************************
	//메인 페이지 광고 업데이트 해주는 메서드
	public int addAD(ADVO ad);
	//광고에 등록된 이미지 가져오는 메서드
	public ADVO getAdName(int a); 
	

	
	
	// 공지사항 ********************************************************
	//공지사항 추가
	public int addNotice(NoticeVO notice);
	//공지사항 모두 가져오기(최신순으로)
	public int getAllNotice();
	//공지사항 조회수 올려주기
	public void addViewPoint(int n_no);
	//n_no에 해당하는 공지사항 가져오기
	public NoticeVO getNotice(int n_no);
	//n_no에 해당하는 공지사항 삭제하기
	public int deleteNotice(int n_no); 
	//n_no에 해당하는 공지사항 수정하기
	public int modifyNotice(NoticeVO notice);
	//공지사항 모두 가져오기(최신순으로)페이징처리
	public List<NoticeVO> getAllNoticeCri(Criteria2 cri); 
	
	// QnA ********************************************************
	//QnA 추가
	public int addQnA(QnAVO QnA);
	//QnA 모두 가져오기
	public int getAllQnA();
	//공지사항 조회수 올려주기
	public void addQViewPoint(int q_no);
	//q_no에 해당하는 공지사항 가져오기
	public QnAVO getQnA(int q_no);
	//q_no에 해당하는 공지사항 삭제하기
	public int deleteQnA(int q_no); 
	//q_no에 해당하는 공지사항 수정하기
	public int modifyQnA(QnAVO QnA);
	//QnA 모두 가져오기
	public List<QnAVO> getAllQnACri(Criteria cri);
	
	
	
	
}

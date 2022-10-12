package com.goldDog.persistence.sungmin;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

public interface MainMapper {
	
	// 맴버 ******************************************************
	// 맴버 정보 가져오기 페이징 처리 된 버젼
	public List<MemberVO> getMember(List<Integer> list); 
	//모든 맴버 가져오기
	public List<MemberVO> getAllMember(); 
	// 맴버 한명의 정보 가져오기
	public MemberVO getOneMember(int m_no);
	
	
	
	
	
	// 훈련사 *******************************************************
	//훈련사 정보 하나 가져오기
	//맴버 번호 받아서 맞는 트레이너 가져오기
	public TrainerVO getTrainer(int t_no);
	//전체 훈련사 리스트 가져오기
	public List<TrainerVO> getAllTrainer(Criteria cri);
	//전체 훈련사 T_no 가져오기
	public int getAllTrainerCount();
	//트레이너 판매정보 등록
	public int addTinfo(TrainerVO trainer);
	//검색한 훈련사 가져오기
	public List<TrainerVO> searchTrainer(Criteria cri);	
	//정렬 검색한 훈련사 리턴하기
	public List<TrainerVO> sortTrainer(Criteria cri); 
	
	//미용사 *********************************************************
	//미용사 한명 가져오기
	public HairstylistVO getHairstylist(int h_no);
	//모든 미용사 가져오기
	public List<HairstylistVO> getAllHairstylist();
	//모든 미용사 가져오기 h_no순으로 뽑기위함
	public List<HairstylistVO> getAllHairstylistH_no(List<Integer> h_no_list);
	
	
	
	
	//리뷰 **********************************************************
	//훈련사한명의 리뷰 가져오기
	public List<ReviewVO> getTReview(int t_no);
	//미용사한명의 리뷰 가져오기
	public List<ReviewVO> getHReview(int h_no);
	//훈련사 한명에 해당하는 모든 리뷰 가져오기
	public List<ReviewVO> getAllReview(int t_no);
	//훈련사 한명에 해당하는 리뷰 갯수 가져오기
	public int getReviewCount(int t_no);
	

	
	// 강아지 *******************************************************
	// 사용자 m_no 으로 사용자에게 등록된 강아지 한마리 가져오기
	//견주의 모든 강아지 가져오는 메서드
	public List<DogVO> getMyDog(int user_M_no);
	
	//강아지 한마리 가져오는 메서드
	public DogVO getOneDog(int d_no); 
	

	
	//견적서 ********************************************************
	//회원이 협의하기 눌렀을때 견적서 만들어 주는 메서드
	//견적서 넣어주는 메서드
	public int insertEst(EstimateVO est);
	//사용자가 가지고 있는 견적서 불러오기
	public EstimateVO getEstimate(int m_no);
	//사용자가 가지고 있는 주소 리스트 불러오기
	public List<AddressVO> getMyAddress(int user_M_no);
	
	
	//광고 ********************************************************
	public int addAD(ADVO ad);
	public ADVO getAdName(int a);
	
	//공지사항 ********************************************************
	//공지사항 추가
	public int addNotice(NoticeVO notice);
	//공지사항 모두 가져오기
	public List<NoticeVO> getAllNotice();
	//공지사항 조회수 올려주기
	public void addViewPoint(int n_no);
	//n_no에 해당하는 공지사항 가져오기
	public NoticeVO getNotice(int n_no);
	//n_no에 해당하는 공지사항 삭제하기
	public int deleteNotice(int n_no);
	//n_no에 해당하는 공지사항 수정하기
	public int modifyNotice(NoticeVO notice);;
	  
	
	//QnA********************************************************
	//QnA 추가
	public int addQnA(QnAVO QnA);
	//QnA 모두 가져오기
	public List<QnAVO> getAllQnA();
	//공지사항 조회수 올려주기
	public void addQViewPoint(int q_no);
	//q_no에 해당하는 공지사항 가져오기
	public QnAVO getQnA(int q_no);
	//q_no에 해당하는 공지사항 삭제하기
	public int deleteQnA(int q_no); 
	//q_no에 해당하는 공지사항 수정하기
	public int modifyQnA(QnAVO QnA);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

-- 회원 테이블
create table member(
	m_no number primary key,
	m_id varchar2(20 char) not null,
	m_pw varchar2(200) not null,
	m_name varchar2(100) not null,
	m_email varchar2(100) not null,
	m_phone varchar2(15 char) not null,
	m_nick varchar2(200),
	m_type number,
	m_status number default 0,
	m_img varchar2(200),
	m_date date default sysdate
);
select *from member;


--회원 권한 테이블
create table auth(
    m_no number,
    auth varchar2(200)    
);
-- 맴버 테이블이랑 엮기
alter table auth add constraint m_no_FK foreign key(m_no) references member(m_no) ;
-- 주소 테이블
create table address(
	a_no number primary key,
	u_no number,
	a_road varchar2(150),
	a_details varchar2(150),
	a_zonecode number,
	a_name varchar2(150),
	a_addr VARCHAR2(1000)
);
-- 리뷰 테이블
create table review(
	r_no number primary key,
	u_no number,
	r_text varchar2(2000) not null,
	r_score number not null,
	r_date date default sysdate,
	r_img varchar2(200) not null,
  	t_no number,
   	h_no number
);
-- 결제 테이블
create table pay(
	p_order number primary key,
	u_no number,
	p_name_manager varchar2(40),
	p_name_user varchar2(40),
	p_status number default 0,
	p_okno number,
	p_time date default sysdate
);

-- 공지사항 테이블
create table notice(
	n_no number primary key,
	n_title varchar2(100) not null,
	n_content varchar2(2000) not null,
	n_date date default sysdate,
	n_readcount number default 0,
	n_img varchar2(300),
	m_id varchar2(20 char)
);

- 질문 테이블
create table QnA(
	q_no number primary key,
	q_img varchar2(300),
	q_title varchar2(100) not null,
	q_content varchar2(2000) not null,
	q_date date default sysdate,
	q_readcount number default 0,
	q_id varchar2(20 char)
);




-- 견적서 테이블
create table estimate(
	m_no number primary key,
	u_no_puppy number,
	e_note varchar2(2000),
	e_service varchar2(50),
	m_no_manager number,
	e_trainning varchar2(2000),
	e_extraprice number,
	e_extra_reason varchar2(2000),
	e_total_price number,
	e_con number,
	e_reject varchar2(2000),
	p_no number,
   	a_no number,
	e_date date default sysdate
);

select * from estimate;
-- 애견 테이블
create table dog(
	d_no number primary key,
	m_no number,
	d_name varchar2(100) not null,
	d_age number not null,
	d_img varchar2(500) not null,
	d_weight number not null,
	d_type varchar2(30) not null,
	d_gender varchar2(50) not null
);

-- 훈련사 테이블
create table trainer(
	t_no number primary key, 
	m_no number,
	a_no number,
	t_price number,
	t_self varchar2(2000) not null,
    	t_sel varchar2(2000) not null,
	t_license varchar2(500),
	t_businessNo varchar2(200),
	t_best number default 0,
	t_career number,
	t_salary number,
	t_date date default sysdate,
	t_Ravg number default 0,
	t_RTotal number default 0
	
);

-- 미용사 테이블
create table hairstylist(
	h_no number primary key,
	m_no number,
	a_no number,
	h_price number,
	h_self varchar2(2000) not null,
    h_sel varchar2(2000) not null,
	h_license varchar2(500),
	h_businessNo varchar2(200),
	h_best number default 0,
	h_career number,
	h_salary number,
	h_date date default sysdate,
	h_Ravg number default 0,
	h_RTotal number default 
	
	
);






--시퀀스 생성
create sequence member_seq nocache;
create sequence address_seq nocache;
create sequence review_seq nocache;
create sequence pay_seq nocache;
create sequence notice_seq nocache;
create sequence estimate_seq nocache;
create sequence dog_seq nocache;
create sequence trainer_seq nocache;
create sequence hairstylist_seq nocache;

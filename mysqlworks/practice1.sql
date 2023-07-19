
use mydb;

-- 제목이 '반갑꼬리'인 게시글 검색
select * from t_board
where title like '하이하이';

-- 검색 및 페이지 처리
select * from t_board where title like '%가입인사%'
order by bnum desc limit 0, 6;	-- 1행부터 6행까지

-- 작성자(memberid)가 'cloud1'인 게시글 검색
select * from t_board where memberid like 'cloud1';

-- 작성자(memberid)가 'poong1'인 게시글을 내림차순검색
select * from t_board where memberid like 'poong1'
order by bnum desc;


select * from t_member;
select count(*) as count from t_member;
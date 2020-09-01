create table border (
	no		 number primary key,
	poster	 varchare2(20),		--작성자
	subject  varchare2(100),	--제목		ins
	contents varchare2(2000),	--내용		ins
	lastpost date,				--작성일자		ins
	views	 number(5),			--조회수
	filename varchare2(50)		--첨부파일		ins
);
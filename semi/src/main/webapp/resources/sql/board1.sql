-- 동행자 찾기

CREATE TABLE board1 (
    bno1         NUMBER PRIMARY KEY,
    title1       VARCHAR2(100),
    content1     CLOB,
    createdate1  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate1  TIMESTAMP,
    hit1         NUMBER DEFAULT 0,
    filename1    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count1 int,
    like_count1 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board1;

CREATE SEQUENCE seq_bno1 NOCACHE;

INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '글제목', '글내용입니다.', 'khit');
INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '글제목1', '글내용1입니다.', 'khit');
INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '글제목2', '글내용2입니다.', 'khit');

SELECT * FROM board1;


SELECT * FROM board1 ORDER BY like_count1 DESC;


-- reply 테이블 생성
CREATE TABLE reply1 (
    rno1         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno1         NUMBER NOT NULL,                    -- 게시글번호
    rcontent1    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer1     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate1       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate1     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE
);
DROP TABLE reply1;

CREATE SEQUENCE seq_rno1 NOCACHE;

INSERT INTO reply1(rno1, bno1, rcontent1, replyer1)
VALUES (seq_rno1.NEXTVAL, 4, '첫번째 댓글입니다.', 'khit');

select * from reply1;
drop table reply1;
drop SEQUENCE seq_rno1;


CREATE TABLE blike1(
    likeno1 NUMBER PRIMARY KEY,
    bno1    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike1;

CREATE SEQUENCE seq_likeno1 NOCACHE;

commit;
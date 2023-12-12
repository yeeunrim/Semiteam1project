-- 나의 계획

CREATE TABLE board2 (
    bno2         NUMBER PRIMARY KEY,
    title2       VARCHAR2(100),
    content2     CLOB,
    createdate2  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate2  TIMESTAMP,
    hit2         NUMBER DEFAULT 0,
    filename2    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count2 int,
    like_count2 int,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_bno2 NOCACHE;

INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '글제목', '글내용입니다.', 'show3239');
INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '글제목1', '글내용1입니다.', 'show3239');
INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '글제목2', '글내용2입니다.', 'show3239');

SELECT * FROM board2;


SELECT * FROM board2 ORDER BY like_count2 DESC;


-- reply 테이블 생성
CREATE TABLE reply2 (
    rno2         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno2         NUMBER NOT NULL,                    -- 게시글번호
    rcontent2    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer2     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate2       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate2     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE
);

CREATE SEQUENCE seq_rno2 NOCACHE;

INSERT INTO reply2(rno2, bno2, rcontent2, replyer2)
VALUES (seq_rno2.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

select * from reply2;

CREATE TABLE blike2(
    likeno2 NUMBER PRIMARY KEY,
    bno2    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE   
);

CREATE SEQUENCE seq_likeno2 NOCACHE;

commit;
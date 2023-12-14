-- Q&A

CREATE TABLE board3 (
    bno3         NUMBER PRIMARY KEY,
    title3       VARCHAR2(100),
    content3     CLOB,
    createdate3  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate3  TIMESTAMP,
    hit3         NUMBER DEFAULT 0,
    filename3    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count3 int,
    like_count3 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_bno3 NOCACHE;

INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '글제목', '글내용입니다.', 'show3239');
INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '글제목1', '글내용1입니다.', 'show3239');
INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '글제목2', '글내용2입니다.', 'show3239');

SELECT * FROM board3;


SELECT * FROM board3 ORDER BY like_count3 DESC;


-- reply 테이블 생성
CREATE TABLE reply3 (
    rno3         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno3         NUMBER NOT NULL,                    -- 게시글번호
    rcontent3    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer3     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate3       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate3     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE
);

CREATE SEQUENCE seq_rno3 NOCACHE;

INSERT INTO reply3(rno3, bno3, rcontent3, replyer3)
VALUES (seq_rno3.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

select * from reply3;

CREATE TABLE blike3(
    likeno3 NUMBER PRIMARY KEY,
    bno3    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);

CREATE SEQUENCE seq_likeno3 NOCACHE;

commit;
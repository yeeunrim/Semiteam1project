CREATE TABLE notice (
    nno         NUMBER PRIMARY KEY,
    ntitle       VARCHAR2(100),
    ncontent     CLOB,
    ncreatedate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    nmodifydate  TIMESTAMP,
    nhit         NUMBER DEFAULT 0,
    nfilename    VARCHAR2(50),
    nreply_count int,
    nlike_count int,
    id			VARCHAR2(30),
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_nno NOCACHE;

INSERT INTO notice(nno, ntitle, ncontent)
VALUES (seq_nno.NEXTVAL, '공지사항', '공지사항입니다.');

commit;

select * from notice;

SELECT * FROM notice ORDER BY nno DESC;
SELECT * FROM (SELECT ROWNUM RN, no.* FROM (SELECT * FROM notice WHERE " + field + " LIKE ? ORDER BY nno DESC) no);

CREATE TABLE nreply (
    nrno         NUMBER PRIMARY KEY,                 -- 댓글번호
    nno         NUMBER NOT NULL,                    -- 게시글번호
    nrcontent    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    nreplyer     VARCHAR2(20) NOT NULL,              -- 작성자
    nrdate       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    nrupdate     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (nno) REFERENCES notice(nno) ON DELETE CASCADE
);

CREATE SEQUENCE seq_nrno NOCACHE;

INSERT INTO nreply(nrno, nno, nrcontent, nreplyer)
VALUES (seq_nrno.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

CREATE TABLE users(
    id      VARCHAR2(30) NOT NULL,
    pw      VARCHAR2(30) NOT NULL,
    tel     VARCHAR2(15) NOT NULL,
    email   VARCHAR2(50) NOT NULL,
    birth   NUMBER NOT NULL,
    gender  VARCHAR2(6) NOT NULL,
    accountDay    TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifiedDay   TIMESTAMP,  
    PRIMARY KEY(id)
);
-- 칼럼 추가
ALTER TABLE users ADD introduction VARCHAR(100);
-- 칼럼 삭제
ALTER TABLE users DROP COLUMN introduction;

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('show3239', '123456', '010-6345-3239', 'show3239@naver.com', '19920129', '남');
INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('test', '123456', '01063453239', 'test@naver.com', '19920129', '여');

select * from users;

SELECT * FROM users ORDER BY accountDay DESC;

-- 프로필 업데이트
UPDATE users SET id = 'test2', introduction = '안녕하세요' WHERE id = 'test';

commit;
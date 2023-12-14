CREATE TABLE users(
    id      VARCHAR2(30) NOT NULL,
    pw      VARCHAR2(30) NOT NULL,
    tel     VARCHAR2(15) NOT NULL,
    email   VARCHAR2(50) NOT NULL,
    birth   NUMBER NOT NULL,
    gender  VARCHAR2(6) NOT NULL,
    accountDay    TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifiedDay   TIMESTAMP, 
    introduction VARCHAR2(2000),
    image VARCHAR2(100),
    PRIMARY KEY(id)
);

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('show3239', '123456', '010-6345-3239', 'show3239@naver.com', '19920129', '남');

select * from users;

commit;

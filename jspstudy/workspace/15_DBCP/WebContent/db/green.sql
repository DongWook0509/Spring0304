DROP TABLE GREEN;
CREATE TABLE GREEN
(
	NO NUMBER PRIMARY KEY,
	WRITER VARCHAR2(100),
	TITLE VARCHAR2(1000) NOT NULL,
	CONTENT VARCHAR2(4000),
	HIT NUMBER,
	POSTDATE DATE
);

DROP SEQUENCE GREEN_SEQ;
CREATE SEQUENCE GREEN_SEQ
START WITH 1000
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;
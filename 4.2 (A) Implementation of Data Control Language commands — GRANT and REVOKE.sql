--  Implementation of Data Control Language commands — GRANT and REVOKE

CREATE TABLE student_login (
userid VARCHAR2(10),
password VARCHAR2(20)
);
GRANT SELECT, INSERT ON student_login TO user1;
REVOKE INSERT ON student_login FROM user1;

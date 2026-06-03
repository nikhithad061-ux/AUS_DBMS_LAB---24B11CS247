-- Implementation of Transaction Control Language commands — COMMIT, SAVEPOINT, and ROLLBACK
CREATE TABLE accounts(
accno NUMBER,
name VARCHAR2(20),
balance NUMBER
);
INSERT INTO accounts VALUES (101, 'Ravi', 2000);
SAVEPOINT A;
INSERT INTO accounts VALUES (102, 'Suma', 3000);
SAVEPOINT B;
UPDATE accounts SET balance = balance + 500 WHERE accno = 101;
ROLLBACK TO B;
COMMIT;

CREATE TABLE dec04_fruit(

	f_name varchar2(20 char) PRIMARY KEY,
	f_price number not null,
	f_location varchar2(30 char) not null

);

drop table dec04_fruit;

INSERT INTO dec04_fruit VALUES('망고',5900,'말리부');
INSERT INTO dec04_fruit VALUES('사과',3800,'국내산');
INSERT INTO dec04_fruit VALUES('바나나',4200,'베트남');
INSERT INTO dec04_fruit VALUES('한라봉',7900,'국내산');
INSERT INTO dec04_fruit VALUES('귤',3900,'국내산');

SELECT * FROM dec04_fruit WHERE f_price<= 5000 ORDER BY f_price;
drop table players;
drop table top_35;
drop table stats;
create table players (
	Player TEXT,
	Tm TEXT,
	Current_Salary TEXT
);
create table top_35 (
	Player TEXT Primary Key,
	Pay TEXT,
	Salary_Winnings TEXT,
	Endorsement TEXT,
	Marital_Status TEXT
);
create table stats (
	Player TEXT,
	Pos	TEXT,
	Age	INT,
	Tm	TEXT,
	"g" INT,
	GS INT,
	MP TEXT,
	FG TEXT,
	FGA TEXT,
	"fgpercent" TEXT,
	"3p" TEXT,
	"3pa" TEXT,
	"3ppercent" TEXT,
	"2p" TEXT,
	"2pa" TEXT,
	"2ppercent" TEXT,
	FT TEXT,
	FTA TEXT,
	"ftpercent" TEXT,
	ORB TEXT,
	DRB	TEXT,
	TRB	TEXT,
	AST	TEXT,
	STL	TEXT,
	BLK	TEXT,
	TOV	TEXT,
	PF TEXT,
	PTS TEXT
);
select * from top_35;
select * from players;
select * from stats;



SELECT customer_name.id, customer_name.first_name, customer_name.last_name, customer_location.address, customer_location.us_state
FROM customer_name
JOIN customer_location
ON customer_name.id = customer_location.id;



DROP VIEW second_view;
DROP VIEW first_view;

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


CREATE VIEW first_view as 
SELECT top_35.*, stats.g
FROM top_35
JOIN stats
ON top_35.player = stats.player;

select * from first_view;

CREATE VIEW second_view as 
SELECT first_view.*, players.tm
FROM first_view
JOIN players
ON first_view.player = players.player;

SELECT * FROM second_view;

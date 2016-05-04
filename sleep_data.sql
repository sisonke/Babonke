DROP TABLE if exist Qoutes_table ;
CREATE TABLE Quotes_table (
	 id int not null auto_increment primary key,
	 Quotes_name varchar(100),
	 description varchar(100)
);
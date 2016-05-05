CREATE DATABASE Babonke;
CREATE USER admin@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON Babonke.* TO admin@localhost;
FLUSH PRIVILEGES;

use Babonke;


DROP TABLE if exist Qoutes_table ;
CREATE TABLE Quotes_table (
     id int not null auto_increment primary key,
     quotes_name varchar(100),
     description varchar(100),
     sleep_time int not null
);



DROP TABLE if exist Questions_table ;
CREATE TABLE Questions_table (
     id int not null auto_increment primary key,
     sleep varchar(100),
     wakeup varchar(100),
     result int not null
);

CREATE TABLE advice (
    id int not null auto_increment primary key,
    advice varchar(100)
);

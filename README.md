# Babonke




create database sleep_app;

CREATE USER sleep@localhost IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON sleep_app.* TO sleep@localhost;
flush privileges;
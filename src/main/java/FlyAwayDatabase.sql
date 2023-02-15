CREATE TABLE flights(
id INT NOT NULL AUTO_INCREMENT,
flight_from VARCHAR(255) DEFAULT 'Hyderabad',
flight_to VARCHAR(255) DEFAULT 'America',
name VARCHAR(255) DEFAULT 'F01',
time_of_flight TIME DEFAULT '12:00:00',
ticket_price DECIMAL(10,2) DEFAULT 100.00,
date DATE DEFAULT '2023-02-14',
PRIMARY KEY(id)
);
INSERT INTO flights(flight_from,flight_to,name,time_of_flight,ticket_price,date)VALUES
('Delhi','Rajahmundry','F02','1:30:00','2000','2023-02-20'),
('Agra','Delhi','F02','12:30:00','3000','2023-02-20'),
('Delhi','Dehradun','F03','03:30:00','2500','2023-03-17'),
('Delhi','Vizag','F04','02:30:00','3500','2023-04-28'),
('Vizag','Gannavaram','F05','01:30:00','2000','2023-05-25'),
('America','Vizag','F06','02:30:00','5000','2023-06-30');

CREATE TABLE Admin(
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR(255),
password VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO Admin(email,password)VALUES
('Admin@flyaway.com','Admin123');












CREATE TABLE user(
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR(255),
password VARCHAR(255),
name VARCHAR(255),
phno VARCHAR(20),
adno VARCHAR(20),
PRIMARY KEY (id)
);
INSERT INTO user(email,password,name,phno,adno)VALUES
('Prasanna@flyaway.com','prasanna123','Prasanna','9848240497','9724049748'),
('Syam@flyaway.com','Syam123','Syam','8499023988','9848497240'),
('Ishaan@flyaway.com','Ishaan123','Ishaan','99646108215','8008107008');
select *from user;

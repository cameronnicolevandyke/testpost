REM   Script: Session 01
REM   test

CREATE TABLE Position ( 
    pos_id int PRIMARY KEY, 
    posName varchar(250) CHECK (posName='Programmer' OR posName='Analyst' OR posName='Manager'), 
    rate int CHECK (rate>=15 AND rate<=200) 
);

CREATE TABLE Employee ( 
    emp_id int, 
    fName varchar(250), 
    lName varchar(250), 
    department varchar(250), 
    pos_id int, 
    PRIMARY KEY (emp_id), 
    CONSTRAINT FK_posid FOREIGN KEY (pos_id) REFERENCES Position(pos_id) 
);

CREATE TABLE Task ( 
    task_id int, 
    startDate date, 
    endDate date, 
    estimate int, 
    PRIMARY KEY (task_id), 
    CONSTRAINT CK_startDate CHECK (startDate > TO_DATE('2021/10/19', 'YYYY/MM/DD')), 
    CONSTRAINT CK_endDate CHECK (endDate > TO_DATE('2021/10/19', 'YYYY/MM/DD')) 
);

CREATE TABLE Reservation ( 
    emp_id int, 
    task_id int, 
    dateWorkedOn date, 
    hoursWorked int, 
    CONSTRAINT PK_reservation PRIMARY KEY (emp_id, task_id), 
    CONSTRAINT CK_hoursworked CHECK (hoursWorked>=0 AND hoursWorked<=150) 
);

INSERT INTO Position 
VALUES ('200','Analyst','110'), ('201','Analyst','130'), ('300', 'Manager','145'),('101','Programmer','80'),('100','Programmer','50');

INSERT INTO Position 
VALUES ('200','Analyst','110'), 
VALUES ('201','Analyst','130'), 
VALUES ('300', 'Manager','145'), 
VALUES ('101','Programmer','80'), 
VALUES ('100','Programmer','50');

INSERT INTO Position(pos_id,posname,rate) 
VALUES ('200','Analyst','110'), 
    ('201','Analyst','130'), 
    ('300', 'Manager','145'), 
    ('101','Programmer','80'), 
    ('100','Programmer','50');

INSERT INTO Position(pos_id,posname,rate) 
VALUES ('200','Analyst','110'), 
    ('201','Analyst','130'), 
    ('300', 'Manager','145'), 
    ('101','Programmer','80'), 
    ('100','Programmer','50') 
;

INSERT INTO Position ( 
    pos_id,  
    posname,  
    rate 
) 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
), 
(   '201', 
    'Analyst', 
    '130' 
), 
(   '300',  
    'Manager', 
    '145' 
), 
(   '101', 
    'Programmer', 
    '80' 
), 
(   '100', 
    'Programmer', 
    '50' 
);

INSERT INTO Position 
VALUES  
( 
    '200', 
    'Analyst', 
    '110' 
);

INSERT INTO Position 
VALUES  
(   '201', 
    'Analyst', 
    '130' 
);

INSERT INTO Position 
VALUES  
(   '201', 
    'Analyst', 
    '130' 
);

SELECT * FROM Position;

INSERT INTO Position 
VALUES  
(   '300', 
    'Manager', 
    '145' 
);

SELECT * FROM Position;

INSERT INTO Position 
VALUES  
(   '101', 
    'Programmer', 
    '80' 
);

SELECT * FROM Position;

INSERT INTO Position 
VALUES  
(   '100', 
    'Programmer', 
    '50' 
);

SELECT * FROM Position;

INSERT INTO Employee 
VALUES ('100001','Cameron','VanDyke','Research', '300');

SELECT * FROM Employee;

INSERT INTO Employee 
VALUES ('100002','Corinne','Badeer','Finance', '201');

SELECT * FROM Employee;

INSERT INTO Employee 
VALUES ('100005','Benjamin','Essenfeld','Accounting', '100');

SELECT * FROM Employee;

INSERT INTO Employee 
VALUES ('100003','Oliveah','Hope','Marketing', '200');

SELECT * FROM Employee;

INSERT INTO Employee 
VALUES ('100004','Lindsay','Cruz','Research', '101');

SELECT * FROM Employee;

UPDATE Employee 
SET pos_id = 200 
WHERE pos_id = 100;

UPDATE Employee 
SET pos_id = 200 
WHERE pos_id = 100;

SELECT * FROM Employee;

select * from Employee;

select * from Position;

select * from Task;

select * from Reservation;

INSERT INTO Task  
VALUES ('111', DATE '2022-02-18', DATE '2022-03-18','90');

INSERT INTO Task  
VALUES ('222', DATE '2022-04-10', DATE '2022-04-28','40');

select * from task;

select * from task;

INSERT INTO Task  
VALUES ('333', DATE '2022-08-11', DATE '2022-09-26','100');

INSERT INTO Task  
VALUES ('444', DATE '2022-05-22', DATE '2022-06-23','100');

INSERT INTO Task  
VALUES ('555', DATE '2022-04-12', DATE '2022-05-20','60');

INSERT INTO Task  
VALUES ('555', DATE '2022-04-12', DATE '2022-05-20','60');

select * from task;

INSERT INTO Reservation  
VALUES ('100001', '555', DATE '2021-09-20','10');

INSERT INTO Reservation  
VALUES ('100001', '555', DATE '2021-09-20','10');

INSERT INTO Reservation  
VALUES ('100002', '222', DATE '2021-10-19','8');

INSERT INTO Reservation  
VALUES ('100003', '444', DATE '2021-12-14','17');

INSERT INTO Reservation  
VALUES ('100004', '111', DATE '2021-10-17','12');

INSERT INTO Reservation  
VALUES ('100005', '333', DATE '2021-11-11','15');

select * from reservation;

select * from employee;

select * from position;

UPDATE Position 
SET rate = rate - rate*0.10 
WHERE posName = 'Analyst';

select * from position 
;

select * from Task;

DELETE c.department, l.task_id, l.dateworkedon, l.hoursworked, c.emp_id  
FROM Employee c, Task l 
WHERE c.emp_id=l.emp_id;

select * from Task;

DELETE c.department, l.task_id, l.dateworkedon, l.hoursworked, c.emp_id  
FROM Employee c, Task l 
WHERE c.emp_id=l.emp_id AND c.department='Research';

select * from Task;

DELETE c.department='Research', l.task_id, l.dateworkedon, l.hoursworked, c.emp_id  
FROM Employee c, Task l 
WHERE c.emp_id=l.emp_id;

select * from Task;

select * from Reservation;

DELETE c.department='Research', l.task_id, l.dateworkedon, l.hoursworked, c.emp_id  
FROM Employee c, Reservation l 
WHERE c.emp_id=l.emp_id;

select * from Reservation;

select * from Task;

ALTER TABLE Task 
ADD taskManager varchar(250);

select * from Task;

SELECT v.emp_id, v.fName, v.lName, c.posName, v.department 
FROM Employee v, Position c 
WHERE v.pos_id = c.pos_id;

SELECT l.startdate, l.enddate, l.task_id, c.emp_id, v.fname, v.lname, v.department 
FROM Task l, Reservation c, Employee v 
WHERE l.task_id=c.task_id AND c.emp_id=v.emp_id AND CURRENT_TIMESTAMP IS BETWEEN l.startdate AND l.enddate 
ORDER BY l.task_id;


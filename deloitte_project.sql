  
CREATE TABLE FEES_INFO 
    (STANDARD      VARCHAR2(3) PRIMARY KEY,
    AGE       	   NUMBER(12)  NOT NULL,
    STDFEES        NUMBER(8,2) NOT NULL,
    TRANSPORT_FEE  NUMBER(8,2) NOT NULL
    );

INSERT INTO FEES_INFO(standard,age,stdfees,transport_fee) VALUES('I'   ,5, 18000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('II'  ,6, 20000.0,1200.0);
INSERT INTO FEES_INFO(standard,age,stdfees,transport_fee) VALUES('III' ,7, 22000.0,1200.0);
INSERT INTO FEES_INFO(standard,age,stdfees,transport_fee) VALUES('IV'  ,8, 24000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('V'   ,9, 26000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('VI'  ,10,28000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('VII' ,11,30000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('VIII',12,32000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('IX'  ,13,34000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('X'   ,14,40000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('XI'  ,15,45000.0,1200.0);
INSERT INTO FEES_INFO (standard,age,stdfees,transport_fee) VALUES('XII' ,16,50000.0,1200.0);

CREATE TABLE COUNTRY_INFO 
    (COUNTRY_ID   VARCHAR2(5)  PRIMARY KEY,
     COUNTRY_NAME  VARCHAR2(25) NOT NULL,
     STATE_NAME    VARCHAR2(25) NOT NULL
       );

INSERT INTO COUNTRY_INFO(country_Id,country_name,state_name) VALUES('C01','India','TamilNadu');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C02','India','Kerala');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C03','India','Karnataka');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C04','India','Andhra Pradesh');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C05','UK'   ,'Scotland');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C06','USA'  ,'New Jersey');
INSERT INTO COUNTRY_INFO (country_Id,country_name,state_name) VALUES('C07','Italy','Rome');


CREATE TABLE STUDENT_INFO
(
STUDENT_ID VARCHAR2(5) PRIMARY KEY,
STUDENT_NAME VARCHAR2(30) NOT NULL,
DATE_OF_BIRTH DATE NOT NULL,
GUARDIAN_TYPE CHAR NOT NULL,
GUARDIAN_NAME VARCHAR2(30) NOT NULL,
ADDRESS VARCHAR2(50) NOT NULL,
COUNTRY_ID VARCHAR2(5) NOT NULL,
 foreign key(COUNTRY_ID) references COUNTRY_INFO(COUNTRY_ID), 
CONTACT_NO NUMBER(10) NOT NULL,
MAIL_ID VARCHAR2(30) NOT NULL,
GENDER CHAR NOT NULL,
STANDARD VARCHAR2(3) NOT NULL,
 foreign key(STANDARD) references FEES_INFO(STANDARD), 
STANDARD_CATEGORY CHAR NOT NULL,
TRANSPORT CHAR NOT NULL,
NET_FEES NUMBER(7,2) NOT NULL
);














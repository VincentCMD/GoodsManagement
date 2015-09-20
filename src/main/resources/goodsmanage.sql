DROP DATABASE IF EXISTS goodsmanage;
CREATE DATABASE goodsmanage DEFAULT CHARACTER SET utf8;
USE goodsmanage;

-- 用户表（用户id、用户名、用户密码）
CREATE TABLE user
(
  id       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username VARCHAR(16)     NOT NULL,
  password VARCHAR(20)     NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 物品信息表（ 物品编号、物品名、物品单位、存货数量 ）
CREATE TABLE goods
(
  id          INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  goodname    VARCHAR(10)     NOT NULL,
  goodunit    VARCHAR(2)      NOT NULL,
  goodnumbers INT             NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 人员表（员工编号、人员姓名、性别、身高）
CREATE TABLE staff
(
  id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  staffname VARCHAR(16)     NOT NULL,
  sex       ENUM('男', '女')  NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 领用信息表（编号、员工编号、物品编号、数量） 
CREATE TABLE getgoods
(
  id        INT PRIMARY KEY NOT NULL,
  staffid   INT             NOT NULL,
  goodid    INT             NOT NULL,
  getnumber INT             NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
ALTER TABLE getgoods ADD CONSTRAINT FK_ID_STAFF FOREIGN KEY (staffid) REFERENCES staff (id);
ALTER TABLE getgoods ADD CONSTRAINT FK_ID_GOODS FOREIGN KEY (goodid) REFERENCES goods (id);

-- 部门信息表（部门编号、部门名称）
CREATE TABLE dept
(
  id       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  deptname VARCHAR(16)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 入库信息表（入库单号、入库时间、物品编号、供应商、联系人、联系电话、操作员、备注）
CREATE TABLE inrepository
(
  id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  intime    DATE            NOT NULL,
  goodid    INT             NOT NULL,
  suppliers VARCHAR(20)     NOT NULL,
  linkman   VARCHAR(16)     NOT NULL,
  phone     VARCHAR(11),
  operator  INT             NOT NULL,
  comments  VARCHAR(40)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
ALTER TABLE inrepository ADD CONSTRAINT FK_ID_STAFF_IN FOREIGN KEY (goodid) REFERENCES goods (id);
ALTER TABLE inrepository ADD CONSTRAINT FK_ID_OPERATOR_IN FOREIGN KEY (operator) REFERENCES user (id);

-- 出库信息表（出库单号、出库时间、物品编号、操作员、部门编号、备注）
CREATE TABLE outrepository
(
  id       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  outtime  DATE            NOT NULL,
  goodid   INT             NOT NULL,
  operator INT             NOT NULL,
  deptid   INT             NOT NULL,
  comments VARCHAR(40)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
ALTER TABLE outrepository ADD CONSTRAINT FK_ID_STAFF_OUT FOREIGN KEY (goodid) REFERENCES goods (id);
ALTER TABLE outrepository ADD CONSTRAINT FK_ID_DEPT_OUT FOREIGN KEY (deptid) REFERENCES dept (id);
ALTER TABLE outrepository ADD CONSTRAINT FK_ID_OPERATOR_OUT FOREIGN KEY (operator) REFERENCES user (id);


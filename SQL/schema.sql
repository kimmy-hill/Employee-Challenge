DROP DATABASE IF EXISTS company_db;
CREATE database company_db;

USE company_db;

CREATE TABLE department (
    deptid INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NULL,
    PRIMARY KEY (deptid)
);

CREATE TABLE roles (
  roleid INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT NULL,
  PRIMARY KEY (roleid),
  FOREIGN KEY (department_id) REFERENCES department(deptid) ON DELETE CASCADE
);

CREATE TABLE employee (
  empid INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY (empid),
  FOREIGN KEY (role_id) REFERENCES roles (roleid),
  FOREIGN KEY (manager_id) REFERENCES employee (empid) ON DELETE CASCADE
);

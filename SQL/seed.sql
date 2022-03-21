-- Departments
INSERT INTO department (name) VALUES ("Accounting");
INSERT INTO department (name) VALUES ("IT");
INSERT INTO department (name) VALUES ("Administrative");
INSERT INTO department (name) VALUES ("HR");

-- Roles
INSERT INTO roles (title, salary, department_id) VALUES ("Accounting Manager", 80000, (select deptid from department where name = "Accounting"));
INSERT INTO roles (title, salary, department_id) VALUES ("Accounts Payable Rep", 60000, (select deptid from department where name = "Accounting"));
INSERT INTO roles (title, salary, department_id) VALUES ("Accounts Receivable Rep", 60000, (select deptid from department where name = "Accounting"));

INSERT INTO roles (title, salary, department_id) VALUES ("IT Manager", 120000, (select deptid from department where name = "IT"));
INSERT INTO roles (title, salary, department_id) VALUES ("Developer", 80000, (select deptid from department where name = "IT"));
INSERT INTO roles (title, salary, department_id) VALUES ("Engineer", 100000, (select deptid from department where name = "IT"));
INSERT INTO roles (title, salary, department_id) VALUES ("Jr Developer", 60000, (select deptid from department where name = "IT"));

INSERT INTO roles (title, salary, department_id) VALUES ("Office Manager", 80000, (select deptid from department where name = "Administrative"));
INSERT INTO roles (title, salary, department_id) VALUES ("Executive Assistant", 60000, (select deptid from department where name = "Administrative"));
INSERT INTO roles (title, salary, department_id) VALUES ("Receptionist", 40000, (select deptid from department where name = "Administrative"));

INSERT INTO roles (title, salary, department_id) VALUES ("HR Manager", 90000, (select deptid from department where name = "HR"));
INSERT INTO roles (title, salary, department_id) VALUES ("HR Analyst", 70000, (select deptid from department where name = "HR"));
INSERT INTO roles (title, salary, department_id) VALUES ("HR Assistant", 50000, (select deptid from department where name = "HR"));

-- Managers
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Jim","Halpert",(select roleid from roles where title = "Accounting Manager"),NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Michael","Scott",(select roleid from roles where title = "IT Manager"),NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Dwight","Schrute",(select roleid from roles where title = "Office Manager"),NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Toby","Flenderson",(select roleid from roles where title = "HR Manager"),NULL);

-- Employees
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Pam","Beasley",(select roleid from roles where title = "Accounts Receivable Rep"),(select roleid from roles where title = "Accounting Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Stanley","Hudson",(select roleid from roles where title = "Accounts Payable Rep"),(select roleid from roles where title = "Accounting Manager"));

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Phyllis","Lapin",(select roleid from roles where title = "Developer"),(select roleid from roles where title = "IT Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Angela","Martin",(select roleid from roles where title = "Developer"),(select roleid from roles where title = "IT Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Oscar","Gutierrez",(select roleid from roles where title = "Engineer"),(select roleid from roles where title = "IT Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Kevin","Malone",(select roleid from roles where title = "Engineer"),(select roleid from roles where title = "IT Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Creed","Bratton",(select roleid from roles where title = "Jr Developer"),(select roleid from roles where title = "IT Manager"));

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Meredith","Palmer",(select roleid from roles where title = "Executive Assistant"),(select roleid from roles where title = "Office Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Andy","Bernard",(select roleid from roles where title = "Receptionist"),(select roleid from roles where title = "Office Manager"));

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Gabe","Lewis",(select roleid from roles where title = "HR Analyst"),(select roleid from roles where title = "HR Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Kelly","Kapoor",(select roleid from roles where title = "HR Assistant"),(select roleid from roles where title = "HR Manager"));
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Ryan","Howard",(select roleid from roles where title = "HR Assistant"),(select roleid from roles where title = "HR Manager"));



-- add roles
INSERT INTO roles (name) VALUES ('ROLE_EMPLOYEE');
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');

-- add users
INSERT INTO users (username, password) VALUES ('testuser', '{bcrypt}$2a$10$Dow1aaF/NmK5YZQG1F4vPeVIl3E1ZBJF5yyM.IbYQSAeO.y/1gJVi'); -- password: testpassword
INSERT INTO users (username, password) VALUES ('admin', '{bcrypt}$2a$10$Dow1aaF/NmK5YZQG1F4vPeVIl3E1ZBJF5yyM.IbYQSAeO.y/1gJVi'); -- password: adminpassword

-- add user roles
INSERT INTO user_roles (user_id, role_id) VALUES (1, 1); -- add ROLE_EMPLOYEE for testuser
INSERT INTO user_roles (user_id, role_id) VALUES (2, 2); -- add ROLE_ADMIN for admin

-- add departments
INSERT INTO departments (name) VALUES ('HR');
INSERT INTO departments (name) VALUES ('Engineering');

-- add employees
INSERT INTO employees (name, department_id) VALUES ('Alice', 1);
INSERT INTO employees (name, department_id) VALUES ('Bob', 2);

-- add courses
INSERT INTO courses (name) VALUES ('Mathematics');
INSERT INTO courses (name) VALUES ('Computer Science');

-- add students
INSERT INTO students (name, course_id) VALUES ('Charlie', 1);
INSERT INTO students (name, course_id) VALUES ('Dave', 2);

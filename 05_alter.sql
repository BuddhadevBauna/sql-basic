-- ALTER COMMAND in SQL
ALTER TABLE employees ADD column jobPosition varchar(50);
ALTER TABLE employees MODIFY column FirstName varchar(40);
ALTER TABLE employees DROP column jobPosition;

DESC employees;
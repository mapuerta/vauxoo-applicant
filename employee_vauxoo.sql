--CREATE DATABASE employee_employee ;

CREATE TABLE employee (
  id serial NOT NULL,
  first_name  varchar(80),
  last_name  varchar(80),

);


CREATE TABLE employee_department (
 id serial NOT NULL,
  name  varchar(80),
  description text
);

alter table employee add column  departament_id  integer ;

alter table employee_department 
add constraint FK_department
	primary key (id);


alter table employee 
add constraint FK_employee_department
	foreign key (departament_id)
	references employee_department(id);
	
INSERT INTO employee_department (name, description)
    VALUES ('RRHH', 'Recursos humanos');	
INSERT INTO employee_department (name, description)
    VALUES ('VENTAS', 'Ventas');	
INSERT INTO employee_department (name, description)
    VALUES ('Compras', 'Compras');	
INSERT INTO employee_department (name, description)
    VALUES ('Logistica', 'Logistica');	
INSERT INTO employee_department (name, description)
    VALUES ('Comercializacion', 'Comercializacion');	
INSERT INTO employee_department (name, description)
    VALUES ('Presupuesto', 'Presupuesto');	


	
INSERT INTO employee (first_name, last_name, departament_id)
    VALUES ('Elis', 'Tek', 1);	
INSERT INTO employee (first_name, last_name, departament_id)
    VALUES ('Marcos', 'Mateo', 2);	
INSERT INTO employee (first_name, last_name, departament_id)
    VALUES ('Dolores', 'Fuertes', 3);	
INSERT INTO employee (first_name, last_name, departament_id)
    VALUES ('Alam', 'Brito', 1);	

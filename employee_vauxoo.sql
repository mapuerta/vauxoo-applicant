-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
-- 

CREATE TABLE employee (
  id serial NOT NULL,
  first_name  varchar(80),
  last_name  varchar(80)

);


CREATE TABLE employee_department (
 id serial NOT NULL,
  name  varchar(80),
  description text
);


alter table employee 
add column  departament_id  integer ;


alter table employee
add constraint FK_employee
	primary key (id);

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
    VALUES ('Alam', 'Brito', 4);	


CREATE TABLE employee_hobby (
  id serial NOT NULL,
  name  varchar(80),
  description text,
  constraint FK_hobby primary key (id)
);

CREATE TABLE employee_hobby_rel (
  id serial NOT NULL,
  employee_id  integer,
  hobby_id integer,
   CONSTRAINT employee_hobby_rel_pkey PRIMARY KEY (employee_id, hobby_id),
  CONSTRAINT employee_hobby_employee_id FOREIGN KEY (employee_id)
      REFERENCES employee (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_hobby_hobby_id FOREIGN KEY (hobby_id)
      REFERENCES employee_hobby (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


INSERT INTO employee_hobby (name, description)
    VALUES ('Tenis', 'juedo de tenis');	

INSERT INTO employee_hobby (name, description)
    VALUES ('Pinpon', 'Pinpon de mesa');	

INSERT INTO employee_hobby (name, description)
    VALUES ('Espaditas', 'Jugar espaditas hasta perder');

INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (1, 1);
INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (1, 2);

INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (2, 2);
INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (2 ,3);

INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (3, 3);
INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (3, 1);

 INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (4, 2);
INSERT INTO employee_hobby_rel (employee_id, hobby_id)
    VALUES (4, 3);


alter table employee add column boss_id integer ;

alter table employee 
add constraint FK_employee_employee_boss
	foreign key (boss_id)
	references employee(id);
	
alter table employee 
add constraint valid_discount CHECK (id <> boss_id)

UPDATE employee SET boss_id = 1 WHERE id = 2;
UPDATE employee SET boss_id = 2 WHERE id = 3;
UPDATE employee SET boss_id = 3 WHERE id = 4;




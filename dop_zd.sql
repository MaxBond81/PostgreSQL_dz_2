CREATE TABLE IF NOT EXISTS Departament (
 departament_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 chief VARCHAR(60) UNIQUE NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS Employee (
 employee_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 departament_id INTEGER NOT NULL REFERENCES Departament (departament_id),
 chief VARCHAR(60) NOT NULL REFERENCES Departament (chief)
 );

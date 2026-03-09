create database Prison_Management;
use Prison_Management;

-- Buildings
create table Buildings(
	name varchar(100) primary key check(name REGEXP '^[a-zA-Z0-9]+$'),
    number_of_floors int not null check(number_of_floors >= 0),
    number_of_cells int not null check(number_of_cells >= 0),
    prisoners_capacity int as (number_of_cells * 4) stored
);

-- Cells
CREATE TABLE Cells (
    id INT PRIMARY KEY AUTO_INCREMENT,
    building VARCHAR(100) NOT NULL,
    FOREIGN KEY (building)
        REFERENCES Buildings (name)
);

-- Staffs
CREATE TABLE Staffs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL CHECK (full_name REGEXP '^[a-zA-Z ]+$'),
    role ENUM('Guard', 'Managment', 'Other') NOT NULL,
    status ENUM('Active', 'Inactive', 'On_break') NOT NULL,
    hire_date DATE NOT NULL
);

-- Prisoners
CREATE TABLE Prisoners (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL CHECK (full_name REGEXP '^[a-zA-Z ]+$'),
    charge_image_url TEXT NOT NULL,
    entrance_date DATE NOT NULL,
    release_date DATE NOT NULL,
    cell INT NOT NULL,
    INDEX (full_name),
    FOREIGN KEY (cell)
        REFERENCES Cells (id)
);

-- Visits
CREATE TABLE Visits (
    id INT PRIMARY KEY AUTO_INCREMENT,
    visitor VARCHAR(100) NOT NULL CHECK (visitor REGEXP '^[a-zA-Z ]+$'),
    prisoner INT NOT NULL,
    FOREIGN KEY (prisoner)
        REFERENCES Prisoners (id)
);


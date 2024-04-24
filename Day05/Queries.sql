-- SQLite
--Day02


--Projections
SELECT * FROM Authors

--Insert
INSERT INTO Authors
VALUES (NULL, 'Roman Khatri', 'M', 'Dang', 'learncipher01@gmail.com', '2058/10/22');

--Get name of persons who lives in nepal
SELECT Name FROM Authors WHERE Address='Nepal'

--Create Publishers table
CREATE TABLE Publishers (
    Id int PRIMARY KEY,
    Name nvarchar(50),
    Address nvarchar(400),
    Phone varchar(10),
    RegistrationNo nvarchar(100)
);

--Create AuthorDetails table
CREATE TABLE AuthorDetails (
    Id int PRIMARY KEY,
    Education nvarchar(50),
    Publications nvarchar(400),
    Organization varchar(100)
);

--Relations: one-to-one, one-to-many, many-to-one, many-to-many

--Constraints
ALTER TABLE Authors
ADD FOREIGN KEY (AuthorDetailId) REFERENCES AuthorDetails(Id);

--Delete table
DROP TABLE AuthorDetails

--Day03 (AuthorDetails discussion)


--Create AuthorDetails table
CREATE TABLE AuthorDetails (
    Id integer PRIMARY KEY,
    Education nvarchar(50),
    Publications nvarchar(400),
    Organization varchar(100),
    AuthorDetailsId integer,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
);

--Delete table
DROP TABLE AuthorDetails

--Create AuthorDetails table
CREATE TABLE AuthorDetails (
    Id integer PRIMARY KEY,
    Education nvarchar(50),
    Publications nvarchar(400),
    Organization varchar(100),
    AuthorId integer,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id)
);


--Insert
INSERT INTO AuthorDetails
VALUES ( NULL, 'Master in Computer Science', 'None', 'Appsoft', 1);

INSERT INTO AuthorDetails
VALUES ( NULL, 'B.Sc.CSIT', 'NLP/ML', 'AppSoft', 2);

--Projections
SELECT * FROM AuthorDetails

--Day04 (Day03 AuthorDetails & classwork discussion)


--classwork 1:
--Get authors details like Name, Contact Details and the Organization he /she is associated with.

SELECT a.Name, a.Email, ad.Organization
FROM Authors a
INNER JOIN AuthorDetails ad ON ad.Id = ad.AuthorId

--Day05 (classwork2 Discussion)


--classwork 2:
--Create another Books (Id, Title, Edition, Price, ISBN, Published)
--Relate Books and Authors (0ne-to-Many), Foreign Key on many side (Authors)
--Insert some rows inBooks and Authors table

--Homework

--Create Books table
CREATE TABLE Books (
    Id integer PRIMARY KEY,
    Title nvarchar(100),
    Edition nvarchar(100),
    Price nvarchar(100),
    ISBN nvarchar(100),
    Published nvarchar(100)
);

--Constraints
ALTER TABLE Books
ADD FOREIGN KEY (AuthorId) REFERENCES Authors(Id);

--self practice inserting foreign key
--started

BEGIN TRANSACTION;
ALTER TABLE Books ADD FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
COMMIT;

BEGIN TRANSACTION;
PRAGMA foreign_keys = ON; -- Enable foreign key constraints
ALTER TABLE Books ADD COLUMN AuthorId INTEGER; -- Assuming AuthorId column needs to be added first
ALTER TABLE Books ADD FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
COMMIT;

BEGIN TRANSACTION;
ALTER TABLE Books ADD COLUMN AuthorId INTEGER; -- Assuming AuthorId column needs to be added first
ALTER TABLE Books ADD FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
COMMIT;

BEGIN TRANSACTION;
ALTER TABLE Books ADD COLUMN AuthorId INTEGER; -- Assuming AuthorId column needs to be added first
ALTER TABLE Books ADD CONSTRAINT fk_author FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
COMMIT;

BEGIN TRANSACTION;
ALTER TABLE Books ADD COLUMN AuthorId INTEGER; -- Assuming AuthorId column needs to be added first
ALTER TABLE Books ADD FOREIGN KEY (AuthorId) REFERENCES Authors(Id);
COMMIT;
--ended

--Day05

--Delete table
DROP TABLE Books

--Create Books table
create table Books 
(
    Id integer PRIMARY KEY, 
    Title text not null, 
    Edition text not null,
    Price real null, 
    ISBN text null, 
    Published text not null
);

-- ISBN - Candidate Key
-- Id - Candidate key
-- Id - PK

--Delete table
drop table Authors;

--Recreated table Author to add foreign key
CREATE TABLE Authors(
    Id integer PRIMARY KEY,
    Name nvarchar(350),
    Gender char(1),
    Address nvarchar(200),
    Email nvarchar(200),
    Dob varchar(100),
    BookId integer,
    FOREIGN KEY(BookId) REFERENCES Books(Id)
);

--Insert
INSERT INTO Books
VALUES (NULL, 'Machine Learning', 'III', 1000.50, 'AB234234FGHD', '2012/12/23');

--Projections
SELECT * FROM Books

--Insert
INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23', 1);

INSERT INTO Authors
VALUES (NULL, 'Roman khatri', 'M', 'Dang, Nepal', 'learncipher01@gmail.com', '2000/12/24', 1);

--Projections
SELECT * FROM Authors

-- Who are the authors of book titled "Machine Learning"
select a.Name from Authors a
INNER JOIN Books b on b.Id == a.BookId
where b.Title like '%Machine Learning%'

--Insert
INSERT INTO Books
VALUES (NULL, 'Artificial Intelligence', 'II', 999, 'AB234232FGHD', '2012/09/24');

--Insert
INSERT INTO Books
VALUES (NULL, 'Machine Learning & Artificial Intelligence', 'II', 1199, 'AB234235FGHD', '2013/01/26');

--Insert
INSERT INTO Books
VALUES (NULL, 'Database Management System', 'II', 800, 'AB234230FGHD', '2012/07/17');

--Insert
INSERT INTO Books
VALUES (NULL, 'Advance Database', 'III', 999, 'AB234231FGHD', '2012/09/03');

--Insert
INSERT INTO Books
VALUES (NULL, 'Database Internals', 'I', 899, 'AB234233FGHD', '2012/10/13');

--Insert
INSERT INTO Authors
VALUES (NULL, 'Bishnu Rawal', 'M', 'Kathmandu, Nepal', 'rawal.bishnu@gmail.com', '1990/12/12', 1);

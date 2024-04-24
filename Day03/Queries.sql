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

--classwork 1:
--Get authors details like Name, Contact Details and the Organization he /she is associated with.

--Homework

SELECT a.Name, a.Email, ad.Organization
FROM Authors a
INNER JOIN AuthorDetails ad ON ad.Id = ad.AuthorId
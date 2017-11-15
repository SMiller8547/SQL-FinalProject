CREATE DATABASE booksNstuff;


CREATE SCHEMA Reading

USE booksNstuff



CREATE TABLE Reading.Book (
BookID INT Primary key not Null IDENTITY(1,1),
Title VARCHAR(50) Not Null,
PublisherName VARCHAR(50) not null CONSTRAINT fk_PubName FOREIGN KEY REFERENCES Reading.Publisher(Name) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Reading.Book_Authors(
BookID INT not null CONSTRAINT fk_BookID FOREIGN KEY REFERENCES Reading.Book(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
AuthorName VARCHAR(50) not null
);

CREATE TABLE Reading.Publisher(
Name VARCHAR(50) PRIMARY KEY not null,
Address VARCHAR(50) not null,
Phone VARCHAR(50)
);

CREATE TABLE Reading.Book_Loans(
BookID INT not null CONSTRAINT fk_BookID2_ FOREIGN KEY REFERENCES Reading.Book(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BranchID INT not null,
CardNo INT Not null,
Dateout DATE not null,
DueDate DATE not null
);

CREATE TABLE Reading.Book_Copies (
BookID INT not null CONSTRAINT fk_BookID2_ FOREIGN KEY REFERENCES Reading.Book(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BranchID INT not null CONSTRAINT fk_BranchId_ FOREIGN KEY REFERENCES Reading.Library_Branch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,,
No_of_Copies INT not null,
);

CREATE TABLE Reading.Borrower(
CardNo INT not null,
Name VARCHAR(50) Not null,
Address VARCHAR(50) not null,
Phone VARCHAR(50) not null
);

CREATE TABLE Reading.Library_Branch(
BranchID INT PRIMARY KEY not null,
BranchName VARCHAR(50) not null,
Address VARCHAR(50)
);
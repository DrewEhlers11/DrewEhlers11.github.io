CREATE DATABASE db_library3
USE db_library3


CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName varchar(30) NOT NULL,
	Address varchar(30) NOT NULL
);

INSERT INTO Library_Branch
	(BranchName, Address)
	VALUES
	('Sharpstown', '24253 Beach Dr'),
	('Central', '123 Leaf Rd'),
	('West', '5842 Skyline Dr'),
	('East','2956 Tomato Rd')
;

SELECT * FROM Library_Branch



CREATE TABLE Publisher (
	PublisherName varchar(100) PRIMARY KEY NOT NULL,
	PublisherAddress varchar(30) NOT NULL,
	Phone varchar(30) NOT NULL
);

	INSERT INTO Publisher
		(PublisherName, PublisherAddress, Phone)
		VALUES
		('Viking Press','9532 Computer Dr','345-234-5898'),
		('T. Egerton, Whitehall','123 Pop Rd','876-987-1029'),
		('Sylvia Beach','5930 Mouse Ln','487-123-5398'),
		('Olympia Press','7382 Flash Dr','000-000-0000'),
		('Little, Brown and Company','623 YellowBrick Rd','928-827-1255'),
		('Allen & Unwin','2759 Bone Ln','651-372-9846'),
		('Random House','321 Panflute Rd','532-984-2789'),
		('Jonathan Cape','523 Lawnchair Dr','098-765-4321'),
		('Blackwoods Magazine','Guitar Ln','123-456-7890')
	;

	SELECT * FROM Publisher



CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title varchar(100)  NOT NULL,
	PublisherName varchar(100) FOREIGN KEY REFERENCES Publisher(PublisherName) NOT NULL
);

INSERT INTO Books
	(Title, PublisherName)
	VALUES
	('The Great Gatsby', 'Viking Press'),
	('The Grapes of Wrath','Viking Press'),
	('Nineteen Eighty-Four', 'Viking Press'),
	('Ulysses','Viking Press'),
	('Lolita','Viking Press'),
	('Catch-22','T. Egerton, Whitehall'),
	('The Catcher in the Rye','T. Egerton, Whitehall'),
	('Beloved','T. Egerton, Whitehall'),
	('The Sound and the Fury','Sylvia Beach'),
	('To Kill a Mockingbird','Sylvia Beach'),
	('The Lord of the Rings','Olympia Press'),
	('One Hundred Years of Solitude','Olympia Press'),
	('Brave New World','Olympia Press'),
	('To the Lighthouse','Little, Brown and Company'),
	('Invisible Man','Little, Brown and Company'),
	('Gone with the Wind','Allen & Unwin'),
	('Jane Eyre','Allen & Unwin'),
	('On the Road','Random House'),
	('Pride and Prejudice','Random House'),
	('Lord of the Flies','Jonathan Cape'),
	('It','Jonathan Cape'),
	('The Shining','Blackwoods Magazine'),
	('The Lost Tribe','Blackwoods Magazine')
;

SELECT * FROM Books



CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL,
	Name varchar(30) NOT NULL,
	BorrowerAddress varchar(50) NOT NULL,
	Phone varchar(30) NOT NULL
);

INSERT INTO Borrower
	(CardNo, Name, BorrowerAddress, Phone)
	VALUES
	('291','Peppi Monifa','1769 Godfrey Road','202-555-0136'),
	('894','Norman Seisyll','881 Heather Sees Way','202-555-0152'),
	('126','Puja Amirah','1104 Turnpike Drive','202-555-0153'),
	('643','Kit Azarias','4471 Brookview Drive','202-555-0198'),
	('854','Muirgen Zinon','3558 Flynn Street','202-555-0104'),
	('532','Laurentius Mat','815 Cantebury Drive','646-728-3382'),
	('321','Arundhati Keysha','4356 Hill Croft Farm Road','530-505-1404'),
	('528','Ania Hene','4420 Columbia Boulevard','410-419-5717'),
	('425','Lorenza Destinee','1733 Jadewood Drive','219-940-1101')
;

SELECT * FROM Borrower

CREATE TABLE Book_Authors (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL IDENTITY (1,1),
	AuthorName varchar(50) NOT NULL
);

INSERT INTO Book_Authors
	(AuthorName)
	VALUES
	('Gibraltar Bean'),
	('Humphrey Blankenship'),
	('Phil Blunder'),
	('Chris Torrance'),
	('William Fish'),
	('Sonya Bishop'),
	('Morwen Smith'),
	('Kathy Ball'),
	('Joshua Reginald'),
	('Ruth Olsson'),
	('Polly Willis'),
	('Stephen King'),
	('Stephen King')
;

SELECT * FROM Book_Authors

CREATE TABLE Book_Copies (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL,
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID) NOT NULL,
	Number_Of_Copies INT NOT NULL
);

INSERT INTO Book_Copies
	(BookID,BranchID,Number_Of_Copies)
	VALUES
	('1','1','2'),
	('1','2','2'),
	('1','3','2'),
	('1','4','2'),
	('2','1','2'),
	('2','2','2'),
	('2','3','2'),
	('2','4','2'),
	('3','1','2'),
	('3','2','2'),
	('3','3','2'),
	('3','4','2'),
	('4','1','2'),
	('4','2','2'),
	('4','3','2'),
	('4','4','2'),
	('5','1','2'),
	('5','2','2'),
	('5','3','2'),
	('5','4','2'),
	('6','1','2'),
	('6','2','2'),
	('6','3','2'),
	('6','4','2'),
	('7','1','2'),
	('7','2','2'),
	('7','3','2'),
	('7','4','2'),
	('8','1','2'),
	('8','2','2'),
	('8','3','2'),
	('8','4','2'),
	('9','1','2'),
	('9','2','2'),
	('9','3','2'),
	('9','4','2'),
	('10','1','2'),
	('10','2','2'),
	('10','3','2'),
	('10','4','2'),
	('11','1','2'),
	('11','2','2'),
	('11','3','2'),
	('11','4','2'),
	('12','1','2'),
	('12','2','2'),
	('12','3','2'),
	('12','4','2'),
	('13','1','2'),
	('13','2','2'),
	('13','3','2'),
	('13','4','2'),
	('14','1','2'),
	('14','2','2'),
	('14','3','2'),
	('14','4','2'),
	('15','1','2'),
	('15','2','2'),
	('15','3','2'),
	('15','4','2'),
	('16','1','2'),
	('16','2','2'),
	('16','3','2'),
	('16','4','2'),
	('17','1','2'),
	('17','2','2'),
	('17','3','2'),
	('17','4','2'),
	('18','1','2'),
	('18','2','2'),
	('18','3','2'),
	('18','4','2'),
	('19','1','2'),
	('19','2','2'),
	('19','3','2'),
	('19','4','2'),
	('20','1','2'),
	('20','2','2'),
	('20','3','2'),
	('20','4','2'),
	('21','1','2'),
	('21','2','2'),
	('21','3','2'),
	('21','4','2'),
	('22','1','2'),
	('22','2','2'),
	('22','3','2'),
	('22','4','2'),
	('23','1','2'),
	('23','2','2'),
	('23','3','2'),
	('23','4','2')
;

SELECT * FROM Book_Copies

CREATE TABLE Book_Loans (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL,
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID) NOT NULL,
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo) NOT NULL,
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL,
);
DROP TABLE Book_Loans
INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	('1','1','126','12/3/2018','12/10/2018'),
	('2','1','126','12/3/2018','12/10/2018'),
	('3','1','126','12/3/2018','12/10/2018'),
	('4','1','126','12/3/2018','12/10/2018'),
	('5','1','126','12/3/2018','12/10/2018'),
	('6','1','126','12/3/2018','12/10/2018'),
	('7','1','126','12/3/2018','12/10/2018'),
	('8','1','126','12/3/2018','12/10/2018'),
	('9','1','291','12/3/2018','12/10/2018'),
	('10','1','291','12/3/2018','12/10/2018'),
	('11','1','291','12/3/2018','12/10/2018'),
	('12','1','291','12/3/2018','12/10/2018'),
	('13','1','291','12/3/2018','12/10/2018'),
	('14','1','291','12/3/2018','12/10/2018'),
	('15','1','291','12/3/2018','12/10/2018'),
	('16','1','291','12/3/2018','12/10/2018'),
	('17','1','321','12/3/2018','12/10/2018'),
	('18','1','321','12/3/2018','12/10/2018'),
	('19','1','321','12/3/2018','12/10/2018'),
	('20','1','321','12/3/2018','12/10/2018'),
	('21','1','321','12/3/2018','12/10/2018'),
	('22','1','321','12/3/2018','12/10/2018'),
	('23','1','321','12/3/2018','12/10/2018'),
	('1','2','425','12/3/2018','12/10/2018'),
	('2','2','425','12/3/2018','12/10/2018'),
	('3','2','425','12/3/2018','12/10/2018'),
	('4','2','425','12/3/2018','12/10/2018'),
	('5','2','425','12/3/2018','12/10/2018'),
	('6','2','425','12/3/2018','12/10/2018'),
	('7','2','425','12/3/2018','12/10/2018'),
	('8','2','528','12/3/2018','12/10/2018'),
	('9','2','528','12/3/2018','12/10/2018'),
	('10','2','528','12/3/2018','12/10/2018'),
	('11','3','528','12/3/2018','12/10/2018'),
	('12','3','528','12/3/2018','12/10/2018'),
	('13','3','528','12/3/2018','12/10/2018'),
	('14','3','528','12/3/2018','12/10/2018'),
	('15','3','532','12/3/2018','12/10/2018'),
	('16','3','532','12/3/2018','12/10/2018'),
	('17','3','532','12/3/2018','12/10/2018'),
	('18','3','532','12/3/2018','12/10/2018'),
	('19','4','532','12/3/2018','12/10/2018'),
	('20','4','532','12/3/2018','12/10/2018'),
	('21','4','532','12/3/2018','12/10/2018'),
	('22','4','643','12/3/2018','12/10/2018'),
	('23','4','643','12/3/2018','12/10/2018'),
	('1','4','643','12/3/2018','12/10/2018'),
	('2','4','643','12/3/2018','12/10/2018'),
	('3','4','643','12/3/2018','12/10/2018'),
	('4','4','643','12/3/2018','12/10/2018')
;

SELECT * FROM Book_Loans





													/* ALL THE QUESTIONS BELOW */



-- 1st Question --

CREATE PROCEDURE GetLost @Title nvarchar(30), @BranchName nvarchar(30)
AS
SELECT Number_Of_Copies FROM Book_Copies 
INNER JOIN Books ON Books.BookID = Book_Copies.BookID 
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
WHERE @Title = Title AND @BranchName = BranchName
GO

EXEC GetLost @Title = 'The Lost Tribe', @BranchName = 'Sharpstown'



-- 2nd Question --

CREATE PROCEDURE GetLost2 @Title nvarchar(30)
AS
SELECT Number_Of_Copies,BranchName FROM Book_Copies 
INNER JOIN Books ON Books.BookID = Book_Copies.BookID 
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
WHERE @Title = Title
GO

EXEC GetLost2 'The Lost Tribe' 



-- 3rd Question --

CREATE PROCEDURE NoBorrowing
AS
SELECT Borrower.CardNo,Borrower.Name FROM Book_Loans 
RIGHT JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo WHERE Book_Loans.CardNo IS NULL
GO

EXEC NoBorrowing



-- 4th Question --

CREATE PROCEDURE GetSharptown 
AS
SELECT Books.Title, Borrower.Name, Borrower.BorrowerAddress, Book_Loans.DateDue  FROM Library_Branch
INNER JOIN Book_Loans ON Library_Branch.BranchID = Book_Loans.BranchID
INNER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo
INNER JOIN Books ON Books.BookID = Book_Loans.BookID
WHERE Library_Branch.BranchID = 1 AND Book_Loans.DateDue = CONVERT (Date,GetDate())
GO

EXEC GetSharptown

-- 5th Question --

CREATE PROCEDURE GetBorrowers
AS
SELECT COUNT(BookID) AS BookCount, Library_Branch.BranchName, Library_Branch.BranchID FROM Book_Loans
INNER JOIN Library_Branch ON Book_Loans.BranchID = Library_Branch.BranchID
GROUP BY Library_Branch.BranchID, Library_Branch.BranchName
GO

EXEC GetBorrowers



-- 6th Question --

CREATE PROCEDURE MoreThanFive
AS
SELECT COUNT(Book_Loans.CardNo) AS BookCount, Borrower.Name, Borrower.BorrowerAddress FROM Book_Loans
INNER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo WHERE Book_Loans.CardNo > 5 GROUP BY Borrower.CardNo, Borrower.Name, Borrower.BorrowerAddress 
GO

EXEC MoreThanFive



-- 7th Question -- 

CREATE PROCEDURE StephenKing 
AS
SELECT Books.Title, COUNT(Number_Of_Copies) AS Number_Of_Copies FROM Library_Branch
INNER JOIN Book_Copies ON Book_Copies.BranchID = Library_Branch.BranchID
INNER JOIN Books ON Books.BookID = Book_Copies.BookID
INNER JOIN Book_Authors ON Book_Authors.BookID = Books.BookID
WHERE Library_Branch.BranchName = 'Central' AND Book_Authors.AuthorName = 'Stephen King' GROUP BY Books.Title
GO

EXEC StephenKing
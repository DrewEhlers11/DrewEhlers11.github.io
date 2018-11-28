CREATE DATABASE db_library
USE db_library
DROP DATABASE db_library




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



	CREATE TABLE Sharpstown (
		BookName varchar(50) NOT NULL,
		BorrowerName varchar(50)
	);

	INSERT INTO Sharpstown
		(BookName, BorrowerName)
		VALUES
		('The Lost Tribe','Peppi Monifa'),
		('The Lost Tribe','Norman Seisyll'),
		('The Great Gatsby', 'Peppi Monifa'),
		('The Great Gatsby', ''),
		('The Grapes of Wrath','Peppi Monifa'),
		('The Grapes of Wrath',''),
		('Nineteen Eighty-Four', ''),
		('Nineteen Eighty-Four', ''),
		('Ulysses','Peppi Monifa'),
		('Ulysses',''),
		('Lolita',''),
		('Lolita',''),
		('Catch-22',''),
		('Catch-22',''),
		('The Catcher in the Rye','Peppi Monifa'),
		('The Catcher in the Rye',''),
		('Beloved',''),
		('Beloved',''),
		('The Sound and the Fury','Peppi Monifa'),
		('The Sound and the Fury','')
	;

	SELECT * FROM Sharpstown



	CREATE TABLE Central (
		BookName varchar(50) NOT NULL,
		BorrowerName varchar(50)
	);

	INSERT INTO Central
		(BookName, BorrowerName)
		VALUES
		('It','Puja Amirah'),
		('It',''),
		('The Shining','Kit Azarias'),
		('The Shining',''),
		('To Kill a Mockingbird','Kit Azarias'),
		('To Kill a Mockingbird',''),
		('The Lord of the Rings','Kit Azarias'),
		('The Lord of the Rings',''),
		('One Hundred Years of Solitude',''),
		('One Hundred Years of Solitude',''),
		('Brave New World',''),
		('Brave New World',''),
		('To the Lighthouse',''),
		('To the Lighthouse',''),
		('Invisible Man',''),
		('Invisible Man',''),
		('Gone with the Wind','Kit Azarias'),
		('Gone with the Wind',''),
		('Jane Eyre','Kit Azarias'),
		('Jane Eyre',''),
		('On the Road',''),
		('On the Road',''),
		('Pride and Prejudice',''),
		('Pride and Prejudice',''),
		('Lord of the Flies','Kit Azarias'),
		('Lord of the Flies','')
	;



	CREATE TABLE East (
		BookName varchar(50) NOT NULL,
		BorrowerName varchar(50)
	);

	INSERT INTO East
		(BookName, BorrowerName)
		VALUES
		('Middlemarch','Muirgen Zinon'),
		('Middlemarch',''),
		('Anna Karenina','Laurentius Mat'),
		('Anna Karenina',''),
		('Animal Farm',''),
		('Animal Farm',''),
		('A Passage to India',''),
		('A Passage to India',''),
		('In Search of Lost Time',''),
		('In Search of Lost Time',''),
		('Wuthering Heights',''),
		('Wuthering Heights',''),
		('The Chronicles of Narnia',''),
		('The Chronicles of Narnia',''),
		('The Color Purple',''),
		('The Color Purple',''),
		('Midnights Children',''),
		('Midnights Children',''),
		('A Portrait of the Artist as a Young Man',''),
		('A Portrait of the Artist as a Young Man',''),
		('Winnie-the-Pooh',''),
		('Winnie-the-Pooh','')
	;
	SELECT * FROM East
	
	
	
	 
	CREATE TABLE West (
		BookName varchar(50) NOT NULL,
		BorrowerName varchar(50)
	);

	INSERT INTO West
		(BookName, BorrowerName)
		VALUES
		('Heart of Darkness','Arundhati Keysha'),
		('Heart of Darkness',''),
		('Mrs Dalloway','Ania Hene'),
		('Mrs Dalloway',''),
		('Slaughterhouse-Five',''),
		('Slaughterhouse-Five',''),
		('War and Peace',''),
		('War and Peace',''),
		('Of Mice and Men',''),
		('Of Mice and Men',''),
		('Moby-Dick',''),
		('Moby-Dick',''),
		('Little Women',''),
		('Little Women',''),
		('Native Son',''),
		('Native Son',''),
		('The Hitchhikers Guide to the Galaxy',''),
		('The Hitchhikers Guide to the Galaxy',''),
		('Great Expectations',''),
		('Great Expectations','')
	;
	


CREATE TABLE Publisher (
	PublisherName varchar(100) PRIMARY KEY NOT NULL,
	Address varchar(30) NOT NULL,
	Phone varchar(30) NOT NULL
);

INSERT INTO Publisher
	(PublisherName, Address, Phone)
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
	('The Great Gatsby', 'Scribners'),
	('The Grapes of Wrath','The Viking Press'),
	('Nineteen Eighty-Four', 'Secker & Warburg'),
	('Ulysses','Sylvia Beach'),
	('Lolita','Olympia Press'),
	('Catch-22','Simon & Schuster'),
	('The Catcher in the Rye','Little, Brown and Company'),
	('Beloved','Alfred A. Knopf'),
	('The Sound and the Fury','Jonathan Cape and Harrison Smith'),
	('To Kill a Mockingbird','J. B. Lippincott & Co.'),
	('The Lord of the Rings','Allen & Unwin'),
	('One Hundred Years of Solitude','Harper & Row'),
	('Brave New World','Chatto & Windus'),
	('To the Lighthouse','Hogarth Press'),
	('Invisible Man','Random House'),
	('Gone with the Wind','Macmillan Publishers'),
	('Jane Eyre','Smith, Elder & Co.'),
	('On the Road','Viking Press'),
	('Pride and Prejudice','T. Egerton, Whitehall'),
	('Lord of the Flies','Faber and Faber'),
	('Middlemarch','William Blackwood and Sons'),
	('Anna Karenina','The Russian Messenger'),
	('Animal Farm','Harcourt, Brace and Company'),
	('A Passage to India','Harcourt Brace'),
	('In Search of Lost Time','Grasset and Gallimard'),
	('Wuthering Heights','Thomas Cautley Newby'),
	('The Chronicles of Narnia','Geoffrey Bles'),
	('The Color Purple','Harcourt Brace Jovanovich'),
	('Midnights Children','Jonathan Cape'),
	('A Portrait of the Artist as a Young Man','B. W. Huebsch'),
	('Winnie-the-Pooh','E. P. Dutton'),
	('Heart of Darkness','Blackwoods Magazine'),
	('Mrs Dalloway','Hogarth Press'),
	('Slaughterhouse-Five','Delacorte'),
	('War and Peace','The Russian Messenger'),
	('Of Mice and Men','Covici Friede'),
	('Moby-Dick','Harper & Brothers'),
	('Little Women','Roberts Brothers'),
	('Native Son','Harper & Brothers'),
	('The Hitchhikers Guide to the Galaxy','Pan Books'),
	('Great Expectations','Chapman & Hall')
;

SELECT * FROM Books



CREATE TABLE Book_Authors (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL IDENTITY (1,1),
	AuthorName varchar(50) NOT NULL
);

INSERT INTO Book_Authors
	(AuthorName)
	VALUES
	('Gibraltar Bean'),
	('Humphrey Blankenship'),
	('Phoney Bologne'),
	('Kalemis'),
	('Tuna PeeInNismo'),
	('Beefy 5-Layer'),
	('Ilani LaCenter'),
	('Drew Salty'),
	('Chase HogdeKiss'),
	('Laboin 747'),
	('Pizza LaDung')
;

SELECT * FROM Book_Authors



CREATE TABLE Book_Copies (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL IDENTITY (1,1),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID) NOT NULL,
	Number_Of_Copies INT NOT NULL
);

INSERT INTO Book_Copies
	(BranchID, Number_Of_Copies)
	VALUES
	('1','22'),
	('2','24'),
	('3','20'),
	('4','20')
;

SELECT * FROM Book_Copies



CREATE TABLE Book_Loans (
	BookID INT FOREIGN KEY REFERENCES Books(BookID) NOT NULL IDENTITY  (1,1),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID) NOT NULL,
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo) NOT NULL,
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL,
);

INSERT INTO Book_Loans
	(BranchID, CardNo, DateOut, DateDue)
	VALUES
	(1,'126','11-21-18','12-2-18'),
	(2,'291','11-21-18','12-2-18'),
	(3,'321','11-21-18','12-2-18'),
	(4,'425','11-21-18','12-2-18'),
	(1,'528','11-21-18','12-2-18'),
	(2,'532','11-21-18','12-2-18'),
	(3,'643','11-21-18','12-2-18'),
	(4,'754','11-21-18','12-2-18'),
	(1,'853','11-21-18','12-2-18')
;
	
SELECT * FROM Book_Loans



CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL,
	Name varchar(30) NOT NULL,
	Address varchar(30) NOT NULL,
	Phone varchar(30) NOT NULL
);

INSERT INTO Borrower
	(CardNo, Name, Address, Phone)
	VALUES
	('291','Peppi Monifa','1769 Godfrey Road','202-555-0136'),
	('894','Norman Seisyll','881 Heather Sees Way','202-555-0152'),
	('126','Puja Amirah','1104 Turnpike Drive','202-555-0153'),
	('643','Kit Azarias','4471 Brookview Drive','202-555-0198'),
	('854','Muirgen Zinon','3558 Flynn Street','202-555-0104'),
	('532','Laurentius Mat','815 Cantebury Drive','646-728-3382'),
	('321','Arundhati Keysha','4356 Hill Croft Farm Road','530-505-1404'),
	('528','Ania Hene','4420 Columbia Boulevard','410-419-5717'),
	('425','Lorenza Destinee','1733 Jadewood Drive','219-940-1101'),
	('853','Prachi Lilianne','222 Dovetail Estates','580-856-0748'),
	('754','Nooa Jehohanan','1525 Cottonwood Lane','616-364-9928')
;

SELECT * FROM Borrower



															/* ALL THE QUESTIONS ARE BELOW */


/* 1st Question  */ EXEC GetLost 'The Lost Tribe'

CREATE PROCEDURE GetLost @BookName nvarchar(30)
AS
SELECT * FROM Sharpstown WHERE BookName = 'The Lost Tribe'
GO




/* 2nd Question */  EXEC GetLost2 'The Lost Tribe'

CREATE PROCEDURE GetLost2 @BorrowerName nvarchar(30)
AS
SELECT * FROM Sharpstown WHERE BorrowerName = 'The Lost Tribe'
SELECT * FROM Central WHERE BorrowerName = 'The Lost Tribe'
SELECT * FROM East WHERE BorrowerName = 'The Lost Tribe'
SELECT * FROM West WHERE BorrowerName = 'The Lost Tribe'
GO



/* 3rd Question */   EXEC NoBorrowing 'Lorenza Destinee'

CREATE PROCEDURE NoBorrowing @Name nvarchar(40)
AS
SELECT * FROM Borrower WHERE Name = 'Lorenza Destinee'
SELECT * FROM Borrower WHERE Name = 'Prachi Lilianne'
SELECT * FROM Borrower WHERE Name = 'Nooa Jehohanan'
GO


 
/* 4th Question */	EXEC GetSharptown 'Peppi Monifa'

CREATE PROCEDURE GetSharptown @BorrowerName nvarchar(40)
AS
SELECT * FROM Sharpstown WHERE BorrowerName = 'Peppi Monifa'
SELECT * FROM Sharpstown WHERE BorrowerName = 'Norman Seisyll'
SELECT Address FROM Borrower WHERE Address = '1769 Godfrey Road'
SELECT Address FROM Borrower WHERE Address = '881 Heather Sees Way'
GO



/* 5th Question */	EXEC GetBorrowers

CREATE PROCEDURE GetBorrowers
AS
SELECT Sharpstown = 7
SELECT Central = 7
SELECT East = 2
SELECT West = 2
GO



/* 6th Question */	EXEC MoreThanFive 'Peppi Monifa'

CREATE PROCEDURE MoreThanFive @BorrowerName nvarchar(40)
AS
SELECT * FROM Sharpstown WHERE BorrowerName = 'Peppi Monifa'
SELECT * FROM Central WHERE BorrowerName = 'Kit Azarias'
SELECT Address FROM Borrower WHERE Address = '1769 Godfrey Road'
SELECT Address FROM Borrower WHERE Address = '4471 Brookview Drive'
SELECT Peppi_Monifa = 7 
SELECT Kit_Azarias = 7 
GO



/* 7th Question */	EXEC StephenKing 'It'

CREATE PROCEDURE StephenKing @BookName nvarchar(40)
AS
SELECT * FROM Central WHERE BookName = 'It'
SELECT * FROM Central WHERE BookName = 'The Shining'
GO
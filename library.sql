create database library;
use library;

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    JoinDate DATE
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150),
    Author VARCHAR(100),
    PublishedYear INT
);

CREATE TABLE Librarians (
    LibrarianID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Borrowing (
    BorrowID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    LibrarianID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarians(LibrarianID)
);

INSERT INTO Members (MemberID, Name, Email, JoinDate) VALUES
(1, 'Anita Sharma', 'anita.sharma@gmail.com', '2024-01-10'),
(2, 'Ravi Kumar', 'ravi.kumar@yahoo.com', '2023-11-05');

INSERT INTO Books (BookID, Title, Author, PublishedYear) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 1988),
(102, 'Wings of Fire', 'A.P.J. Abdul Kalam', 1999);

INSERT INTO Librarians (LibrarianID, Name, Email) VALUES
(501, 'Suman Verma', 'suman.verma@library.org'),
(502, 'Rajeev Mehta', 'rajeev.mehta@library.org');

INSERT INTO Borrowing (BorrowID, MemberID, BookID, LibrarianID, BorrowDate, ReturnDate) VALUES
(1001, 1, 101, 501, '2025-06-01', '2025-06-10'),
(1002, 2, 102, 502, '2025-06-05', '2025-06-15');

select * from books where title is null;

update books set publishedyear=2000 where bookid=101;

delete from borrowing where borrowid=1002;


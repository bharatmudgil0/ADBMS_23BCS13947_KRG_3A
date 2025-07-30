--Easy Medium Problem

CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

INSERT INTO Author (AuthorID, AuthorName, Country) VALUES
(1, 'Amit', 'India'),
(2, 'Sohan', 'Pakistan'),
(3, 'Aman', 'Nigeria'),
(4, 'Rohan', 'India');

INSERT INTO Book (BookID, Title, AuthorID) VALUES
(101, '1984', 1),
(102, 'Animal Farm', 1),
(103, 'Shaktiman', 2),
(104, 'Adventures of Huckleberry Finn', 3),
(105, 'Atomic Habits', 4);

SELECT 
    b.Title AS BookTitle,
    a.AuthorName,
    a.Country
FROM Book b
INNER JOIN Author a ON b.AuthorID = a.AuthorID;



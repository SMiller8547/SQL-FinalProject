USE booksNstuff
 
SELECT * FROM reading.Book; --DATA INSTERTED
SELECT * FROM reading.Book_Authors; -- DATA ENTERED 
SELECT * FROM Reading.publisher; -- DATA INSERTED 
SELECT * FROM reading.Book_Loans; --DATE ENTERED
SELECT * FROM Reading.Library_Branch --DATA INSTERTED 
SELECT * FROM Reading.Borrower --DATE INSERTED
SELECT * FROM Reading.Book_Copies -- DATA INSTERTED


ALTER TABLE Reading.Book_loans
ADD FOREIGN KEY (BookID) REFERENCES reading.Book(BookID);





INSERT INTO reading.Book_Loans
(BookID,BranchID,CardNo,Dateout,DueDate)
VALUES
(10,4,5556,'2017-02-10','2017-03-11'),
(9,4,5556,'2017-02-10','2017-03-11'),
(8,4,5556,'2017-02-10','2017-03-11'),
(7,4,5556,'2017-02-10','2017-03-11'),
(6,4,5556,'2017-02-10','2017-03-11'),
(5,4,5556,'2017-02-10','2017-03-11')
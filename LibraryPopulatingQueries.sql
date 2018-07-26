USE booksNstuff
 
SELECT * FROM reading.Book; --DATA Entered
SELECT * FROM reading.Book_Authors; -- DATA Entered
SELECT * FROM Reading.publisher; -- DATA Entered
SELECT * FROM reading.Book_Loans; --DATA Entered
SELECT * FROM Reading.Library_Branch --DATA Entered
SELECT * FROM Reading.Borrower --DATA Entered
SELECT * FROM Reading.Book_Copies -- DATA Entered

/*The comments above are referring to the aspect that the data in these tables has already been entered. 
  You will not see insert statements for all of the tables as that would be redundant for this example. 
  However, one sample is presented for illustrative purposes starting on line 22.*/

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

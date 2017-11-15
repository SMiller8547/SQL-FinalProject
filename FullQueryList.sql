1)

SELECT t1.No_of_Copies
FROM 
[Reading].[Book_Copies] AS t1
INNER JOIN  [Reading].[Book] AS t2 ON t1.BookID = t2.BookID
INNER JOIN [Reading].[Library_Branch] AS t3 ON t3.BranchID = t1.BranchID
WHERE t3.BranchName ='Sharpstown' and t2.Title = 'The Lost Tribe'

2)

SELECT t1.No_of_Copies, t3.BranchName
FROM 
[Reading].[Book_Copies] AS t1
INNER JOIN  [Reading].[Book] AS t2 ON t1.BookID = t2.BookID
INNER JOIN [Reading].[Library_Branch] AS t3 ON t3.BranchID = t1.BranchID
WHERE t2.Title ='The lost Tribe'

3)

SELECT t1.Name
FROM 
[Reading].[Borrower] AS t1
INNER JOIN [Reading].[Book_Loans] AS t2 ON t1.CardNo = t2.CardNo
WHERE t2.BookID = NULL

4)

SELECT t1.Title, t3.Name, t3.Address
FROM 
[Reading].[Book] AS t1
INNER JOIN [Reading].[Book_Loans] AS t2 ON t1.BookID = t2.BookID
INNER JOIN [Reading].[Borrower] AS t3 ON t2.CardNo = t3.CardNo
INNER JOIN [Reading].[Library_Branch] AS t4 ON t4.BranchID = t2.BranchID
WHERE t2.DueDate = GETDATE()

5)

SELECT t1.BranchName, COUNT(t2.BranchID) AS 'Total Books Loaned'
FROM
[Reading].[Library_Branch] AS t1
INNER JOIN [Reading].[Book_Loans] AS t2 ON t1.BranchID = t2.BranchID
Group by t1.BranchName;

6)

SELECT t1.Name, t1.Address, COUNT(t2.CardNo) AS 'Number of Books Checked Out'
FROM
[Reading].[Borrower] AS t1
INNER JOIN [Reading].[Book_Loans] AS t2 ON t1.CardNo = t2.CardNo
Group by Name, Address
HAVING COUNT(t2.CardNo)>5;


7)
SELECT t1.Title, SUM(t2.No_of_Copies) AS 'Number of Copies at Central'
FROM
[Reading].[Book] AS t1
INNER JOIN [Reading].[Book_Copies] AS t2 ON t1.BookID = t2.BookID
INNER JOIN [Reading].[Library_Branch] AS t3 ON t3.BranchID = t2.BranchID
INNER JOIN [Reading].[Book_Authors] AS t4 ON t4.BookID = t2.BookID
WHERE t4.AuthorName = 'Stephen King' AND t3.BranchName = 'Central'
GROUP by t1.Title;




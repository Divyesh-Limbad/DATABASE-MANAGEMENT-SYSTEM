--		((Math functions))

--(Part – A:)

--1. Display the result of 5 multiply by 30.
	SELECT 5 * 30 AS result;
--2. Find out the absolute value of -25, 25, -50 and 50.
	SELECT ABS(-25), ABS(25), ABS(-50), ABS(50)
--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
	SELECT CEILING(25.2), CEILING(25.7), CEILING(-25.2)
--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
	SELECT FLOOR(25.2), FLOOR(25.7), FLOOR(-25.2)
--5. Find out remainder of 5 divided 2 and 5 divided by 3.
	SELECT 5%2
	SELECT 5%3
--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
	SELECT POWER(3,2), POWER(4,3)
--7. Find out the square root of 25, 30 and 50.
	SELECT SQRT(25), SQRT(30), SQRT(50)
--8. Find out the square of 5, 15, and 25.
	SELECT SQUARE(5),SQUARE(15), SQUARE(25)
--9. Find out the value of PI.
	SELECT PI()
--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
	SELECT ROUND(157.732, 2), ROUND(157.732, 0), ROUND(157.732,-2) 
--11. Find out exponential value of 2 and 3.
	SELECT EXP(2), EXP(3)
--12. Find out logarithm having base e of 10 and 2.
	SELECT LOG(10), LOG(2)
--13. Find out logarithm having base b having value 10 of 5 and 100.
	SELECT LOG10(5), LOG10(100)
--14. Find sine, cosine and tangent of 3.1415.
	SELECT SIN(3.1415), COS(3.1415), TAN(3.1415)
--15. Find sign of -25, 0 and 25.
	SELECT SIGN(-25), SIGN(0), SIGN(25)
--16. Generate random number using function.
	SELECT RAND()*100

	--(Part – B:)

--Create and Insert the following records in the EMP_MASTER table.
create table EMP_MASTER (
	empno int,
	empname varchar(20),
	joiningdate datetime,
	salary decimal(12,2),
	commission int,
	city varchar(20),
	deptcode varchar(20)
);

insert into EMP_MASTER values
(101, 'Keyur', '02-1-5', 12000, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '04-2-15', 14000, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '06-3-14', 15000, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '05-6-23', 12500, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '04-2-15', 14000, 2000, 'Rajkot', '312A');

select * from EMP_MASTER;

--1. Display the result of Salary plus Commission.
select empname, salary + commission as Total
from EMP_MASTER

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select ceiling(55.2), ceiling(35.7), ceiling(-55.2);

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select floor(55.2), floor(35.7), floor(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2, 55%3;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2), power(14,3);


--(Part – C:)

--1. Find out the square root of 36, 49 and 81.
select sqrt(36), sqrt(49), sqrt(81);

--2. Find out the square of 3, 9, and 12.
select square(3), square(9), square(12);

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952, 2), round(280.8952, 0), round(280.8952, -2);

--4. Find sine, cosine and tangent of 4.2014.
select sin(4.2014), cos(4.2014), tan(4.2014);

--5. Find sign of -55, 0 and 95.
select sign(-55), sign(0), sign(95);


--	((String functions))

--(Part – A:)

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
	SELECT LEN(NULL), LEN('HELLO'), LEN('')
--2. Display your name in lower & upper case.
	SELECT LOWER('Divyesh'), UPPER('Divyesh')
--3. Display first three characters of your name.
	SELECT LEFT('Divyesh',3)
--4. Display 3rd to 10th character of your name.
	SELECT SUBSTRING('Divyesh',3,10)
--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
	SELECT REPLACE('abc123efg','123','XYZ')
	SELECT REPLACE('abcabcabc','C','5')
--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
	SELECT ASCII('A'), ASCII('a'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')
--7. Write a query to display character based on number 97, 65,122,90,48,57.
	SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)
--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
	SELECT LTRIM('hello world ')
--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
	SELECT RTRIM(' HELLO WORLD ')
--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
	SELECT LEFT('SQL Server',4), RIGHT('SQL Server',5)
--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
	SELECT CAST(1234.56 AS INT), CONVERT(INT,1234.56)
--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
	SELECT CAST(10.58 AS INT), CONVERT(INT, 10.58)
--13. Put 10 space before your name using function.
	SELECT SPACE(10)+ 'Divyesh'
--14. Combine two strings using + sign as well as CONCAT ().
	SELECT CONCAT('Darshan',' ','University'), ('Darshan'+' '+'INSTITUTE')
--15. Find reverse of “Darshan”.
	SELECT REVERSE('Darshan')
--16. Repeat your name 3 times.
	SELECT REPLICATE('Darshan',3)

	--(Part – B:)

--Perform following queries on Student table of practical no 5.

--1. Find the length of FirstName and LastName columns.
select len(firstname), len(lastname) 
from student;

--2. Display FirstName and LastName columns in lower & upper case.
select upper(firstname), upper(lastname)
from student;

select lower(firstname), lower(lastname)
from student;

--3. Display first three characters of FirstName column.
select left(firstname, 3)
from student;

--4. Display 3rd to 10th character of Website column.
select SUBSTRING(website, 3, 8)
from student;

--5. Write a query to display first 4 & Last 5 characters of Website column.
select left(website, 4), right(website, 5)
from student;


--(Part – C:)

--Perform following queries on Student table of practical no 5.

--1. Put 10 space before FirstName using function.
select space(10) + firstname
from student;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select firstname + ' ' + lastname
from student;

select CONCAT(firstname, ' ', lastname)
from student;

select CONCAT_WS(' ', firstname, lastname)
from student;

--3. Combine all columns using + sign as well as CONCAT ().
select CONCAT_WS(' ', stuid, firstname, lastname, website, city, address)
from student;

--4. Find reverse of FirstName column.
select REVERSE(firstname)
from student;

--5. Repeat FirstName column 3 times
select REPLICATE(firstname, 3)
from student;

--6. Give the Names which contains 5 characters.
select firstname
from student
where firstname like '_____';

--7. Combine the result as <FirstName> Lives in <City>.
select firstname + ' lives in ' + city
from student;

--8. Combine the result as Student_ID of < FirstName > is <StuID> .
select CONCAT('Student_ID of ', firstname, ' is ', stuid)
from student;



--	((Date Functions))

--(Part – A:)

--1. Write a query to display the current date & time. Label the column Today_Date.
	SELECT GETDATE() AS CURRENTDATE
--2. Write a query to find new date after 365 day with reference to today.
	SELECT DATEADD(day, 365, GETDATE()) AS NewDate;
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
	SELECT FORMAT(GETDATE(), 'MMM d yyyy h:mmtt') AS FormattedDate;
--4. Display the current date in a format that appears as 03 Jan 1995.
	SELECT FORMAT(GETDATE(), 'dd MMM yyyy') AS FormattedDate;
--5. Display the current date in a format that appears as Jan 04, 96.
	SELECT FORMAT(GETDATE(), 'MMM dd, yy') AS FORMATTEDDATE;
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
	SELECT DATEDIFF(month, '2008-12-31', '2009-03-31') AS TotalMonths;
--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
	SELECT DATEDIFF(year, '2010-09-14', '2012-01-25') AS TotalYears;
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
	SELECT DATEDIFF(hour, '2012-01-25 07:00', '2012-01-26 10:30') AS TotalHours;
--9. Write a query to extract Day, Month, Year from given date 12-May-16.
	SELECT DATEPART(YEAR, '2016-05-12') AS 'Year'; 
	SELECT DATEPART(MONTH, '2016-05-12') AS 'Month'; 
	SELECT DATEPART(DAY, '2016-05-12') AS 'Day'; 
--10. Write a query that adds 5 years to current date.
	SELECT DATEADD(year, 5, GETDATE()) AS ADDEDDATE;
--11. Write a query to subtract 2 months from current date.
	SELECT DATEADD(MONTH, -2, GETDATE()) AS MONTHS
--12. Extract month from current date using datename () and datepart () function.
	SELECT DATENAME(month, GETDATE()) AS MonthName;

	SELECT DATEPART(month, GETDATE()) AS MonthNumber;

--13. Write a query to find out last date of current month.
	SELECT EOMONTH(GETDATE())
--14. Calculate your age in years and months.
SELECT
    DATEDIFF(year, '2006-02-03', GETDATE()) AS TotalYears,
    DATEDIFF(month, '2006-02-03', GETDATE()) % 12 AS TotalMonths

	--(Part – B:) 

create table EMP_DETAIL(
	EmpNo int,
	EmpName varchar(50),
	JoiningDate date,
	Salary decimal(12, 2),
	City varchar(20)
);

insert into EMP_DETAIL values
(101, 'Keyur', '02-1-15', 12000, 'Rajkot'),
(102, 'Hardik', '04-2-15', 14000, 'Ahmedabad'),
(103, 'Kajal', '06-3-14', 15000, 'Baroda'),
(104, 'Bhoomi', '05-6-23', 12500, 'Ahmedabad'),
(105, 'Harmit', '04-2-15', 14000, 'Rajkot'),
(106, 'Jay', '07-3-12', 12000, 'Surat');

select * from EMP_DETAIL;

--1. Write a query to find new date after 365 day with reference to JoiningDate.
select dateadd(day, 365, joiningdate)
from EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
select convert(varchar, joiningdate, 100)
from EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
select convert(varchar, joiningdate, 106)
from EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
select convert(varchar, joiningdate, 107)
from EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
select DATEDIFF(mm, '31-mar-09', joiningdate)
from EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
select datediff(yyyy, '14-sep-10', joiningdate)
from EMP_DETAIL;


--(Part – C:) 

--1. Write a query to extract Day, Month, Year from JoiningDate.
select datepart(day, joiningdate) as Day, datename(month, joiningdate) as Month, datepart(year, joiningdate) as Year
from EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
select dateadd(year, 5, joiningdate)
from EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
select dateadd(month, -2, joiningdate)
from EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
select datepart(month, joiningdate), datename(month, joiningdate)
from EMP_DETAIL;

--5. Calculate your age in years and months.
select datediff(year, '28-jan-2006', getdate()) as Years, datediff(month, '28-jan-2024', getdate()) as Month;
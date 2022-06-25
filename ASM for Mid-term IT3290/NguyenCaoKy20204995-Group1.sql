use AdventureWorks2017


-- Assignment 01: Basic Select SQL Statement

--Task 1 

-- Retrieve customer name data :
-- SELECT Title , Firstname , Middlename , Lastname , Suffix From Person.Person ;

--Retrieve customer names and phone numbers :
-- SELECT c.FirstName as CustomerName, c.PhoneNumber as PhoneNumber, a.SalesQuota as SalesQuota , a.Bonus as Bonus , a.SalesYTD as SalesYTD , a.SalesLastYear as SalesLastYear , a.rowguid as rowguid , a.ModifiedDate as ModifieldDate from Sales.SalesPerson as a inner join (select b.FirstName as FirstName, d.PhoneNumber as PhoneNumber, b.BusinessEntityID as BusinessEntityID from Person.Person as b inner join Person.PersonPhone as d on b.BusinessEntityID = d.BusinessEntityID) as c on a.BusinessEntityID = c.BusinessEntityID 


--Task 2 : 
--use AdventureWorksLT2019

--Retrieve a list of customer companies :
--SELECT concat(CustomerID,' : ',CompanyName) as CustomerCompany FROM SalesLT.Customer;

--Retrieve a list of sales order revisions :
--SELECT concat(SalesOrderNumber,' (',RevisionNumber,') ') as SalesOrderNumber , CONVERT (date , OrderDate , 102) as OrderDate FROM SalesLT.SalesOrderHeader;


-- Task 3 

-- Retrieve customer contact names with middle names if known
-- SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '')+ LastName AS FirstMiddleLast FROM SalesLT.Customer;

-- Retrieve primary contact details :
-- SELECT CustomerID , ISNULL(EmailAddress,Phone) as PrimaryContact FROM SalesLT.Customer;

-- Retrieve shipping status-- SELECT SalesOrderID, OrderDate, CASE WHEN ShipDate IS NULL THEN 'Awaiting Shipment' ELSE 'Shipped' END AS ShippingStatus FROM SalesLT.SalesOrderHeader;

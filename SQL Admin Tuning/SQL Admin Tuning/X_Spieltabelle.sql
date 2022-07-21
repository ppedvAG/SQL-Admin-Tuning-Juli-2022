SELECT      Customers.CustomerID, Customers.CompanyName, Customers.ContactName, Customers.ContactTitle, Customers.City, Customers.Country, Employees.LastName, Employees.FirstName, Employees.BirthDate, Orders.EmployeeID, Orders.OrderDate, Orders.Freight, Orders.ShipName, Orders.ShipAddress, 
                   Orders.ShipCity, Orders.ShipCountry, [Order Details].UnitPrice, [Order Details].ProductID, [Order Details].Quantity, [Order Details].OrderID, Products.ProductName, Products.UnitsInStock
FROM         Customers INNER JOIN
                   Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                   Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                   [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                   Products ON [Order Details].ProductID = Products.ProductID
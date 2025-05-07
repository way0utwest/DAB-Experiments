## REST API Demos
These should be in Postman, but if not, code below

### Postman
This is a great tool to query the REST and graphql APIs. Use Postman in the Getting Started folder. 

Use MyWorkspace for these requests
- http://localhost:5000/api/Customers
- http://localhost:5000/api/Customers/CustomerID/ANTON

demo06.cmd - adds a few more entities to the config file. This will add the Orders and OrderDetails tables to the API.

### Query Data
All GET requests

http://localhost:5000/api/Customers?$filter=CustomerID eq 'ALFKI'
http://localhost:5000/api/Customers?$orderby=ContactName asc
http://localhost:5000/api/Orders?$orderby=OrderDate&$select=OrderID,CustomerID,OrderDate
http://localhost:5000/api/Orders?$filter=OrderID eq 10253
http://localhost:5000/api/Orders?$filter=ShipCountry eq 'France'
http://localhost:5000/api/Orders?$filter=ShipCountry eq 'France'&$select=CustomerID,OrderID,ShipCountry,OrderDate
http://localhost:5000/api/Orders?$filter=(ShipCountry eq 'France' and OrderID gt 11000) or CustomerID eq 'VINET'&$select=CustomerID,OrderID,ShipCountry,OrderDate
http://localhost:5000/api/Orders?$filter=(ShipCountry eq 'France' and OrderID gt 11000) or CustomerID eq 'VINET'&$select=CustomerID,OrderID,ShipCountry,OrderDate&$orderby=EmployeeID
http://localhost:5000/api/Orders?$filter=OrderDate ge 1998-01-01T00:00:00Z



### Changing Data
REST
I can use this URL to change data. I will use the PATCH type of upate the ship name in an order

URL: http://localhost:5000/api/Orders/OrderID/10248
Body: 
```
{
    "ShipName": "Steve Jones"
}
```

To fix
```
{
    "ShipName": "Vins et alcools Chevalier"
}
```

SSMs query
```sql
SELECT TOP 20 * FROM dbo.Orders AS o
 ORDER BY o.OrderID
 ```

I can add data as well


dab add CustOrderHist --source dbo.CustOrderHist --source.type "stored-procedure" --source.params "CustomerID" --permissions "anonymous:execute" --rest.methods "get" --graphql.operation "query"

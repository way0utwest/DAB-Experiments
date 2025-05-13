# Demo Instructions

This is the flow for the demos in this presentationt that produce and test an API.

## Setup
If Northwind is not installed on the local default instance, run setup01.cmd to create this. The uses the install script from Microsoft to the local instance with Windows Authentication.

## First Demos

demo01.cmd - runs dab init with no parameters and errors out.

demo02.cmd - this runs dab init with parameters to the local default instance and Northwind database to create a new dab-config.json file.

demo03.cmd - this runs dab init with parameters to the local default instance and Northwind database to create a custom named config file, and this uses the .env variables.

demo04.cmd - adds the customer table to the config

demo05.cmd - starts the API

URLs to check
- http://localhost:5000/ - returns dab version
- http://localhost:5000/api/ - broken
- http://localhost:5000/api/customer - broken
- http://localhost:5000/api/customers - broken
- http://localhost:5000/api/Customers - this is the URL to test the API. This will return a list of customers in JSON format.
- http://localhost:5000/api/Customers/  CustomerID/ANTON - gets one customer
- http://localhost:5000/graphql - this is the URL to test the GraphQL API. This will return a list of customers in JSON format.

### Postman
This is a great tool to query the REST and graphql APIs. Use Postman in the Getting Started folder. 

Use MyWorkspace for these requests
- http://localhost:5000/api/Customers
- http://localhost:5000/api/Customers/CustomerID/ANTON
- 



demo06.cmd - adds a few more entities to the config file. This will add the Orders and OrderDetails tables to the API.

### Views
Run this command

dab add Invoices -c "dab-northwind.json" --source dbo.Invoices --source.type View --source.key-fields "CustomerID" --permissions "anonymous:read"


### Stored Procedures

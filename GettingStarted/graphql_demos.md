## GraphQL Demos
The URL to test the GraphQL API is http://localhost:5000/graphql. This will return a list of customers in JSON format.


### Customers
Here is graphql query to get a list of customers. This will return a list of customers in JSON format.

```graphql
query Customers {
    customers {
        items {
            CustomerID
            CompanyName
            ContactName
            ContactTitle
            Address
            City
            Region
            PostalCode
            Country
            Phone
            Fax
        }
    }
}
```

Here is a query that gets a single customer by ID. This will return a single customer in JSON format.

```graphql
query Customers {
    customers_by_pk(CustomerID: "VINET") {
        CustomerID
        CompanyName
        ContactName
        ContactTitle
        Address
        City
        Region
        PostalCode
        Country
        Phone
        Fax
    }
}
```

Let's look at getting two customers by ID. We can add logic to allow this.
    
```graphql
  query Customers {
    customers(
        filter: { or: [{CustomerID: { eq: "VINET" } }
        { CustomerID: {eq: "BONAP"}}]}
    ) {
        endCursor
        hasNextPage
        items {
            CustomerID
            CompanyName
        }
    }
}
```

What about not logic? Let's get everyone except one customer
```graphql
query Customers {
    customers(
        filter: { CustomerID: { neq: "VINET" } }
    ) {
        endCursor
        hasNextPage
        items {
            CustomerID
            CompanyName
        }
    }
}
```

We can also use wildcards. In this query, let's get all customers that start with "A".

```graphql
query Customers {
    customers(
        filter: { CustomerID: { startsWith: "F" } }
    ) {
        endCursor
        hasNextPage
        items {
            CustomerID
            CompanyName
        }
    }
}
```

## Relationships

Let's add a relationship of one to many. In this case we can add a relationship between customers and orders. This will allow us to get all orders for a customer.

```
dab update Customers --config dab-northwind.json --relationship Orders --target.entity Orders --cardinality many  --relationship.fields "CustomerID:CustomerID"
```

Query:
```graphql
query Customers {
    customers(filter: { CustomerID: { eq: "VINET" } }) {
        endCursor
        hasNextPage
        items {
            CustomerID
            CompanyName
            Orders {
                items {
                    OrderID
                    OrderDate
                }
            }
        }
    }
}
```

A many to one is possible as well. Let's add a relationship between orders and customers. This will allow us to get the customer for an order.

```
dab update Orders --config dab-northwind.json --relationship Customers --target.entity Customers --cardinality one  --relationship.fields "CustomerID:CustomerID"
```

The query is:
```graphql
query Orders {
    orders(filter: { OrderID: { eq: 10248 } }) {
        items {
            Customers {
                CompanyName
                ContactName
            }
            OrderDate
            CustomerID
            OrderID
        }
    }
}
```


## Views
LEt's add a view

```sql
CREATE VIEW [dbo].[SummaryofSales] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
```

Now run demo07.cmd to add the view to the dab-northwind.json file. This will add the view to the dab-northwind.json file and create a GraphQL endpoint for it.

```
query SalesSummaries {
    salesSummaries {
        items {
            ShippedDate
            OrderID
            Subtotal
        }
    }
}
```


## Changing Data
Add a new shipper. Everything in GraphQL is a GET. To make changes, we use what's called mutations.

Add a new shipper
```
mutation CreateShippers {
    createShippers(item: {
        CompanyName: "Redgate Software"
        Phone: "04412345"
    }) {
        ShipperID
        CompanyName
        Phone
    }
}

```

Let's change data. We can alter the contact name
```graphql
mutation UpdateCustomers {
    updateCustomers(CustomerID: "ANATR", item: { 
        ContactName: "Prince"
        }) 
        {
        CustomerID
        CompanyName
        ContactName
        ContactTitle
        Address
        City
        Region
        PostalCode
        Country
        Phone
        Fax
    }
}
```

We can change two things. Note I return less
```
mutation UpdateCustomers {
    updateCustomers(
        CustomerID: "ANATR"
        item: { ContactName: "John Mayer", ContactTitle: "Lead Guitar", City: "LA" }
    ) {
        CustomerID
        CompanyName
        ContactName
        ContactTitle
        Address
        City
        Region
    }
}
```

Now delete a shipper.
```graphql
mutation DeleteShippers {
    deleteShippers(ShipperID: 6) {
        ShipperID
        CompanyName
        Phone
    }
}
```


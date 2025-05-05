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

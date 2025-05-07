dab add CustOrderHist --source dbo.CustOrderHist --source.type "stored-procedure" --source.params "CustomerID:s" --permissions "anonymous:execute" --rest.methods "get" --graphql.operation "query"

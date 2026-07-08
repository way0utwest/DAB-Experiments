dab add CustomerOrderHistory --config dab-northwind.json --source dbo.CustOrderHist --source.type "stored-procedure" --parameters.name "CustomerID" --parameters.required "true" --parameters.description "Customer PK" --permissions "anonymous:execute" --graphql.operation "query"
dab add CustomerOrdersDetail --config dab-northwind.json --source dbo.CustOrdersDetail --source.type "stored-procedure" --parameters.name "OrderID" --parameters.required "true" --parameters.description "Order PK" --permissions "anonymous:execute" --graphql.operation "query"
@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
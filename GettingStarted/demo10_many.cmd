dab update Orders --config dab-northwind.json --relationship Customers --target.entity Customers --cardinality one  --relationship.fields "CustomerID:CustomerID"
@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
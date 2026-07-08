dab update Customers --config dab-northwind.json --relationship Orders --target.entity Orders --cardinality many  --relationship.fields "CustomerID:CustomerID"
@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
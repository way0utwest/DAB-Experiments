dab update Customers --config dab-northwind.json --relationship Orders --target.entity Orders --cardinality many  --relationship.fields "CustomerID:CustomerID"
@echo "-----------------------------------------"
@echo "Added relationship from Customer to Orders"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
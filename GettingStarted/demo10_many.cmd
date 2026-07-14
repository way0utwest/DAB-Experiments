dab update Orders --config dab-northwind.json --relationship Customers --target.entity Customers --cardinality one  --relationship.fields "CustomerID:CustomerID"
@echo "-----------------------------------------"
@echo "Added reverse relationship from Orders to Customer"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
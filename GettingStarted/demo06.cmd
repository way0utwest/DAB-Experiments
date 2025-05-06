@echo "-----------------------------------------"
@echo "Add the Orders and OrderDetails tables to the API"   
@echo "-----------------------------------------"

dab add Orders -c "dab-northwind.json" --source dbo.Orders --permissions "anonymous:*"
dab add OrderDetails -c "dab-northwind.json" --source dbo."Order Details" --permissions "anonymous:*"
dab add Shippers -c "dab-northwind.json" --source dbo.Shippers --permissions "anonymous:*"

@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"

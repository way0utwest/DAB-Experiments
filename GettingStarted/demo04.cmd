@echo "-----------------------------------------"
@echo "Add the customer table to the API"   
@echo "-----------------------------------------"

dab add Customers -c "dab-northwind.json" --source dbo.customers --permissions "anonymous:*"

@echo "-----------------------------------------"
@echo "check the dab-northwind.json file for a new entity"   
@echo "-----------------------------------------"

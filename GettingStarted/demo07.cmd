REM let's add a view to the API
dab add Invoices --config dab-northwind.json --source dbo.Invoices --source.type View --source.key-fields "OrderID" --permissions "anonymous:read"
@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
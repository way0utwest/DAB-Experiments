@echo "-----------------------------------------"
@echo "create view SalesSummary"   
@echo "-----------------------------------------"
pause

dab add SalesSummary --config dab-northwind.json --source dbo.SummaryofSales --source.type View --source.key-fields "OrderID" --permissions "anonymous:read"
@echo "-----------------------------------------"
@echo "View added above"
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
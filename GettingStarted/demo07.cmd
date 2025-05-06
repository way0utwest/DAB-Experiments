# let's add a view to the API
dab add SalesSummary --config dab-northwind.json --source dbo.SummaryofSales --source.type View --source.key-fields "OrderID" --permissions "anonymous:read"

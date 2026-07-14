dab update "OrderDetails" --config dab-northwind.json --fields.name UnitPrice  --fields.description "The price of 100 units of the product at the time of the order"
dab update "OrderDetails" --config dab-northwind.json --fields.name Quantity  --fields.description "The number of boxes of 100 items in the order"
dab update "OrderDetails" --config dab-northwind.json --fields.name Discount  --fields.description "The discount in dollars and cents applied to the order total"
@echo "-----------------------------------------"
@echo "Incorrect metadata"   
@echo "Unit price is for 100 units"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
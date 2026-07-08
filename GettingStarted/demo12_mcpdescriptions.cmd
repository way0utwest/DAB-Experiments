dab update Orders --config dab-northwind.json --fields.name OrderId --fields.primary-key true --fields.description "Unique key for each order"
dab update Orders --config dab-northwind.json --fields.name OrderDate --fields.description "The date on which this order was originally placed"
dab update Orders --config dab-northwind.json --fields.name RequiredDate --fields.description "The date the order should be delivered by"
dab update Orders --config dab-northwind.json --fields.name ShippedDate --fields.description "The date the order was actually shipped"
@echo "-----------------------------------------"
@echo "Start the API with dab start dab-northwind.json"   
@echo "-----------------------------------------"
pause
dab start --config dab-northwind.json
dab init --database-type "mssql" --host-mode "Development" --config "dab-northwind.json" --connection-string "@env('MSSQL_CONNECTION_STRING')"

@echo "-----------------------------------------"
@echo "Examine the .env file"   
@echo "Notice to new config file is set to dab-northwind.json"   
@echo "-----------------------------------------"

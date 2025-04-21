# Demo Instructions

This is the flow for the demos in this presentationt that produce and test an API.

## Setup
If Northwind is not installed on the local default instance, run setup01.cmd to create this. The uses the install script from Microsoft to the local instance with Windows Authentication.

## First Demos

demo1.cmd - runs dab init with no parameters and errors out.

demo2.cmd - this runs dab init with parameters to the local default instance and Northwind database to create a new dab-config.json file.

demo3.cmd - this runs dab init with parameters to the local default instance and Northwind database to create a custom named config file, and this uses the .env variables.
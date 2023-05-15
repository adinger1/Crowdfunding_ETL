# Crowdfunding_ETL

PREREQUISITES:
Have Anaconda and Python installed on your machine.
Install Pandas, Numpy, Jupyter Notebook in your Python environment, and install PostGreSQL and pgAdmin on your machine.

Run the following commands in your Python environment in Anaconda to install these libraries.
conda install pandas
conda install numpy
conda install -c anaconda jupyter

_______________________________________________________________________________

PROJECT DETAILS:

This project uses Python, Pandas, and Pythond dictionaries to extract and transform crowdfunding data.

Run the Jupyter Notebook file named 'ETL_Mini_Project_ADinger.ipynb' in a Python environment
Then, look at the 'crowdfunding_db_schema.sql' file to view the SQL code to create the table schema and import the csv files 
Click on the 'ERD.png' to view an ERD of the table schema.

Note:
ERD was created using QuickDBD at http://www.quickdatabasediagrams.com/. QuickDBD allows the 'string' data type, so fields of variable length were left as type 'string'. Postgresql does not have the 'string' data type, so these fields have the varchar() datatype in the crowdfunding_db_schema.sql file. Maximum varchar length varies as appropriate for each field.
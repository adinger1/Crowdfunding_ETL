# Crowdfunding_ETL

I chose to extract and transform the data from the contacts.xlsx file with Python dictionary methods. 
Ignore the section labeled 'Option 2: Use Regex to create the contacts DataFrame'.

ERD was created using QuickDBD at http://www.quickdatabasediagrams.com/. QuickDBD allows the 'string' data type, so fields of variable length were left as type 'string'. Postgresql does not have the 'string' data type, so these fields have the varchar() datatype in the crowdfunding_db_schema.sql file. Maximum varchar length varies as appropriate for each field.
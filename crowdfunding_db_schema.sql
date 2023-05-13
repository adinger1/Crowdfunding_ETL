drop table if exists campaign cascade;
drop table if exists contacts cascade;
drop table if exists category cascade;
drop table if exists subcategory cascade;

--Creating tables
CREATE TABLE "category" (
    "category_id" varchar(30) primary key NOT NULL,
    "category" varchar(30) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(30) primary key NOT NULL,
    "subcategory" varchar(30) NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int primary key NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(60) NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" int primary key NOT NULL,
    "contact_id" int NOT NULL,
		constraint fk_campaign_contacts foreign key (contact_id) references contacts(contact_id),
    "company_name" varchar(100) NOT NULL,
    "description" varchar(200) NOT NULL,
    "goal" float NOT NULL,
    "pledged" float NOT NULL,
	"outcome" varchar(30) NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(2) NOT NULL,
    "currency" varchar(3) NOT NULL,
    "launch_date" date NOT NULL,
	"end_date" date NOT NULL,
    "category_id" varchar(30) NOT NULL,
		constraint fk_campaign_category foreign key (category_id) references category(category_id),
    "subcategory_id" varchar(30) NOT NULL,
		constraint fk_campaign_subcategory foreign key (subcategory_id) references subcategory(subcategory_id)
);

--Importing CSVs
copy category from 'C:\Rutgers Bootcamp\Projects\Project 2\Crowdfunding_ETL\Resources\category.csv'
delimiter ',' csv header;

copy subcategory from 'C:\Rutgers Bootcamp\Projects\Project 2\Crowdfunding_ETL\Resources\subcategory.csv'
delimiter ',' csv header;

copy contacts from 'C:\Rutgers Bootcamp\Projects\Project 2\Crowdfunding_ETL\Resources\contacts_cleaned.csv'
delimiter ',' csv header;

copy campaign from 'C:\Rutgers Bootcamp\Projects\Project 2\Crowdfunding_ETL\Resources\campaign.csv'
delimiter ',' csv header;


--Run each of these queries one at a time
select * from category limit 10

select * from subcategory limit 10

select * from contacts limit 10

select * from campaign limit 10

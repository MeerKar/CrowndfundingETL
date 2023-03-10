-- DROP TABLE campaign;
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT,
	company_name VARCHAR,
	description	VARCHAR,
	goal FLOAT,
	pledged	FLOAT,
	outcome	VARCHAR,
	backers_count INT NOT NULL,	
	country	VARCHAR,
	currency VARCHAR,	
	launch_date DATE,
	end_date DATE,	
	category_id	VARCHAR,
	subcategory_id VARCHAR,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- DROP TABLE contacts;
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
	
);

-- DROP TABLE category;
CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
	
);

-- DROP TABLE subcategory;
CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
	
);



SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;



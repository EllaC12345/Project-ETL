DROP TABLE contacts;
DROP TABLE catagory;
DROP TABLE subcategory;
DROP TABLE campaign; 

CREATE TABLE contacts(
    contact_id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    CONSTRAINT "primary_catagory" PRIMARY KEYS ("category_id")
);

CREATE TABLE category(
    category)id VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    CONSTRAINT "primary_category" PRIMARY KEY
);

CREATE TABLE subcategory(
    subcategory_id VARCHAR(30) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    CONSTRAINT "primary_subcategory" PRIMARY KEY("subcategory_id")
);

CREATE TABLE campaign(
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(30) NOT NULL,
    description VARCHAR(50) NOT NULL,
    goal FLOAT NOT NULL,
    pledge FLOAT NOT NULL,
    outcome VARCHAR(30) NOT NULL, 
    backers_count INTEGER NOT NULL,
    country VARCHAR(30) NOT NULL,
    currency VARCHAR(30) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30) NOT NULL,
    subcategory_id VARCHAR(30) NOT NULL,
    CONSTRAINT "primary_campaign" PRIMARY KEY ("cf_id")
);

ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_con_id"
FOREIGN KEY("contact_id") REFERENCES "contacts"("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_cat_id"
FOREIGN KEY("category_id") REFERENCES "category"("category_id");

ALTER TABLE"campaign" ADD CONSTRAINT "foreigncamp_subcat_id"
FOREIGN KEY("subcategory_id") REFERENCES "subcategory"("subcategory_id");
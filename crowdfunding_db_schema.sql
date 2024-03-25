CREATE TABLE Category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal DECIMAL(10, 2) NOT NULL,
    pledged DECIMAL(10, 2) NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    backers_count INT NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(20),
    subcategory_id VARCHAR(20),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
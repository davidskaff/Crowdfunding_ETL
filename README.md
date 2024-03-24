Sure, here's your text with markdown formatting for better readability:

# Data Analysis Project by David Skaff and Jasleen Brar
Our project focused on analyzing crowdfunding data, and we’ve broken down our process into four main parts.

## Part 1: Creating the Category and Subcategory DataFrames
We started by extracting and transforming data from the `crowdfunding.xlsx` Excel file to create two separate DataFrames: one for categories and one for subcategories. Each DataFrame has an ID column and a column containing the title of the category or subcategory. We then exported these DataFrames as `category.csv` and `subcategory.csv` and saved them to our GitHub repository.

## Part 2: Creating the Campaign DataFrame
Next, we created a campaign DataFrame from the `crowdfunding.xlsx` Excel file. This DataFrame includes various columns such as “cf_id”, “contact_id”, “company_name”, “description”, “goal”, “pledged”, “outcome”, “backers_count”, “country”, “currency”, “launch_date”, “end_date”, “category_id”, and “subcategory_id”. We made sure to convert the necessary columns to the appropriate data types and formats. This DataFrame was then exported as `campaign.csv` and saved to our GitHub repository.

## Part 3: Creating the Contacts DataFrame
For this part, we had two options for extracting and transforming the data from the `contacts.xlsx` Excel file: using Python dictionary methods or using regular expressions. Regardless of the method chosen, the goal was to create a DataFrame with the “contact_id”, “name”, and “email” columns, split the “name” column into first and last names, and then clean and export the DataFrame as `contacts.csv` to our GitHub repository.

## Part 4: Creating the Crowdfunding Database
Finally, we inspected the four CSV files and sketched an Entity Relationship Diagram (ERD) of the tables. Using the information from the ERD, we created a table schema for each CSV file, specifying the data types, primary keys, foreign keys, and other constraints. We saved this database schema as a Postgres file named `crowdfunding_db_schema.sql` and saved it to our GitHub repository.

We then created a new Postgres database named `crowdfunding_db` and used the database schema to create the tables in the correct order to handle the foreign keys. We verified the table creation by running a SELECT statement for each table. Lastly, we imported each CSV file into its corresponding SQL table and verified that each table had the correct data by running a SELECT statement for each.

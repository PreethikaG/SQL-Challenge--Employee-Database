# SQL Project - Employee Database

The goal of the project is to use SQL to analyze data on employees of a corporation from the 1980s and 1990s using six CSV files.
I had to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and then answer questions about the data. 

# Data Modeling
As part of data modeling I inspected the CSVs and sketched out an ERD of the tables.I used QuickDBD (http://www.quickdatabasediagrams.com) for creating the ERD. 

![QuickDBD-Free%20Diagram.png](QuickDBD-Free%20Diagram.png)

# Data Engineering

I used the ERD to create a table schema for each of the file by specifying data types, primary keys, foreign keys, and other constraints and then imported each CSV file into the corresponding SQL table.

# Data Analysis
Queries were created to answer the following questions using joins,aggregate functions,etc.

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

# Other Analysis -

I created a histogram to visualize the most common salary ranges for employees and a bar chart of average salary by title.

I used SQLAlchemy to connect to the postgres SQL database and read the data to do the visualizations.






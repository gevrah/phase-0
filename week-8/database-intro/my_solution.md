1. Select all data from all states: 
SELECT * FROM states;

2. 2. Select all data for all regions: 
SELECT * FROM regions;

3. Select the state_name and population for all states: 
sqlite> SELECT state_name, population FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top:
SELECT state_name, population FROM states ORDER BY population DESC;

5. Select the state_name for the states in region 7
SELECT state_name FROM states WHERE region_id=7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

7. Select the state_name for states with a population between 1 million and 1.5 million people:
SELECT state_name, population FROM states WHERE population BETWEEN 1000000 and 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order:
SELECT state_name, region_id FROM states ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.
SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables):
SELECT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_id ASC;

Outfit Relational Database:
![outfit_database](outfit_database.png.png)

Reflection:
What are databases for?
Databases are for adding two datasets together, creating new datasets and thus variables. Databases help in the organization of collections of data so that the data can be worked with in many ways.

What is a one-to-many relationship?
A one to many relationship implies that an attribute in one table can be linked to many attributes on another table.
 You can identify a one-to-many relationship using the phrases "____ belongs to a ____. ____ has many ____.


What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a unique number ID that is used to identify unique rows and to prevent duplicates. A primary key is usually a number.

A foreign key is an ID number in a child table which is used to reference the parent table.


How can you select information out of a SQL database What are some general guidelines for that?
It's possible to select information from an SQL database using the SELECT statement within an SQL shell in the terminal. 


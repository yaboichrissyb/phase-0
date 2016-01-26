<img src="/week-8/database-intro/Screenshot 2016-01-26 12.36.57.png">
<img src="/week-8/database-intro/Screenshot 2016-01-26 12.55.29.png">

1.  SELECT * FROM states;
2.  SELECT * FROM regions;
3.  SELECT state_name, population
    FROM states;
4.  SELECT state_name, population
    FROM states
    ORDER BY population DESC;
5.  SELECT state_name
    FROM states
    WHERE region_id
    IN (7);
6.  SELECT state_name, population_density
    FROM states
    WHERE population_density > 50
    ORDER BY population_density ASC;
7.  SELECT state_name
    FROM states
    WHERE population
    BETWEEN 1000000 and 1500000;
8.  SELECT state_name, region_id
    FROM states
    ORDER BY region_id ASC;
9.  SELECT region_name
    FROM regions
    WHERE region_name
    LIKE "%Central%";
10. SELECT regions.region_name, states. state_name
    FROM regions
    JOIN states
    ON states.region_id = regions.id
    ORDER BY region_id ASC;

=begin REFLECTION
What are databases for?
Databases are for storing and organizing similar pieces of data => "FACTS related to any object in consideration, ex: age, height, weight, etc."  Data can be in the form of strings, integers, floats, dates, measurements, abbreviations, id numbers or many other types.

What is a one-to-many relationship?
A one-to-many relationship is where one piece of data or object points to a number of other pieces of data or objects.  For instance, a person, identified by their name or id_number, can point to zero, one, or more than one car that they own.  In this case, the piece of data that identifies the individual person can point to multiple pieces of data that identify multiple unique cars.  Not all data types work this way.

What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is unique to each instance of data.  Every instance has one but no two can have the same one.  This could be a name or a coded number like a user_id, social security number, phone number, student id, etc.  In relational databases, a foreign key is a value in one database that points to the primary key of another database.  For example, if you had a database of people, some of whom had one car, others had multiple, and others yet had none, you might want to create a new database to store the information on their cars or lack thereof.  In the Cars table, you would have an ownerID which would point back to the individual person's uniqe primary key ID, to show who owns which car(s).  This allows you to create a unique table to store the attributes of each car and connect them to the people in the other table.  So, in this way, a the relationship between the primary key and foreign key is what connects the one in the one-to-many relationship with its many.

How can you select information out of a SQL database? What are some general guidelines for that?
You generally state which columns you want to select from and then state which table that column can be found in.  You can then input additional commands which allow you to pick pieces of data within a specific range, containing a keyword or string, or grouped in a specific way.  You always must end your commands with a semicolon and convention states that commands should be all caps while the columns/tables should be lower case.  Though, this doesn't actually affect the interpretation of the commands and is mostly for readability.  This was pretty intuitive for the most part.  The commands are all generally symantic and what you'd think they are, there isn't really any tricky context or complex formulas involved.

=end

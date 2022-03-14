# The power of JSON in relational databases

This Katacoda demonstrates possibilities and advantages of using JavaScript Object Notation (JSON) in a relational
database. The main benefit of JSON in relational database is the additional flexibility when it comes to inserting and
handling data with a flexible structure. It saves a lot of work needing to be done in a regular relational table and is
way easier to overlook. A PostgreSQL database is used for demonstration purposes, but you can also use other database
systems since JSON is part of the "ISO SQL Standard 2017, Part 6" [1] assuring at least the following functions: 
- "JSON_EXISTS,
- JSON_VALUE,
- JSON_QUERY,
- JSON_TABLE" [1]

First, you're given a quick introduction to PostgreSQL and JSON followed by a step-by-step tutorial showing you how to
create a table with JSON columns. Afterwards, you'll learn how to insert JSON data into your table. Finally, you'll
learn how to extract and even parse the JSON directly in your SQL query.

## Learning Objective

- What is JSON?
- Create JSON column in a table in PostgreSQL
- Insert and read JSON data points
- Parse JSON in the SQL query itself

## Prerequisites

Since this course is meant for beginners, only basic knowledge in SQL and programming data structures (Maps, Lists) is
required. Also, you should know about common data types in programming, such as _Integer, String, Boolean, etc_.

## Circumstances

This Katacoda was created as a part of an exam in the class _Data Warehouse_
at [Corporate State University Stuttgart](https://www.dhbw-stuttgart.de/en/). The course was held
by [Andreas Buckenhofer](https://www.katacoda.com/buckenhofer).

# Let's get started!
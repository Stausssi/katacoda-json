# Usage in SELECT-Statements

Sometimes, you don't want the entire JSON data set returned but rather just a single value. PostgreSQL provides two
different operators to directly parse JSON in your SQL query:

# 1. Retrieve the JSON object

If you know the key of the JSON-entry you want to select, you can use the `->` operator. A sample query could look like
this:

```postgresql
SELECT grades -> 'Database II' AS "Database II" 
FROM students 
WHERE user_id = 2;
```{{execute}}

If you're only interested in Marys overall grade in *Database II*, you can even chain the `->` operator:

```postgresql
SELECT grades -> 'Database II' -> 'grade' AS "Overall grade" 
FROM students 
WHERE user_id = 2;
```{{execute}}

Instead of chaining two `->` operators together, you can also use the `#>`operator. It requires you to specify a path of
selections. The path has to be enclosed in curly brackets:

```postgresql
SELECT grades #> '{Database II, grade}' AS "Overall grade" 
FROM students 
WHERE user_id = 2;
```{{execute}}

If you want to access a list item, you can use the operators with an integer instead of a text. The integer specifies
the index of the element you're trying to access:

```postgresql
SELECT grades #> '{Database II, classes, 0}' AS "Database Implementations" 
FROM students 
WHERE user_id = 2;
```{{execute}}

# 2. Get JSON as text

If you're fine with the returned data being a text instead of a JSON object, you can simply exchange the `->` operator
with `-->`. Keep in mind that you won't be able to use another JSON operator after `-->` since the returned object is
not JSON anymore.

The path operator also has a text-variant: `#>>`

# Usage in WHERE-clauses

You can also use all the JSON operators above in a WHERE-clause to filter your data. In this example, we only want the
names of the students who passed the class *Data Warehouse*. with a very good grade:

```postgresql
SELECT first_name, last_name, grades #> '{Database II, classes, 1, Data Warehouse}' AS "grade"
FROM students 
WHERE CAST ( grades #>> '{Database II, classes, 1, Data Warehouse}' AS NUMERIC ) <= 2;
```{{execute}}

**Note:** We have to cast the value to a number. Otherwise, PostgreSQL can't compare the values. 
 
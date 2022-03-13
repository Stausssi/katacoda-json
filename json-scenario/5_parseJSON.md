# Usage in SELECT-Statements

Sometimes, you don't want the entire JSON data set returned but rather just a single value. PostgreSQL provides two
different operators to directly parse JSON in your SQL query:

# 1. Retrieve the JSON object

If you know the key of the JSON-entry you want to select, you can use the `->` operator. A sample query could look like
this:

`SELECT grades -> 'Database II' FROM students WHERE user_id = 2;`{{execute}}

If you're only interested in Marys overall grade in *Database II*, you can even chain the `->` operator:

`SELECT grades -> 'Database II' -> 'grade' FROM students WHERE user_id = 2;`{{execute}}

Instead of chaining two `->` operators together, you can also use the `#>`operator. It requires you to specify a path of
selections. The path has to be specified in curly brackets:

`SELECT grades #> '{Database II, grade} FROM students WHERE user_id = 2;`{{execute}}

If you want to access a list item, you can use the operators with an integer instead of a text. The integer specifies
the index of the element you're trying to access:

`SELECT grades #> '{Database II, classes, 1}' FROM students WHERE user_id = 2;`{{execute}}

# 2. Get JSON as text

If you're fine with the returned data being a text instead of a JSON object, you can simply exchange the `->` operator
with `-->`. Keep in mind that you won't be able to use another JSON operator after `-->` since the returned object is
not JSON anymore.

The path operator also has a text-variant: `#>>`

# Usage in WHERE-clauses

You can also use all the JSON operators above in a WHERE-clause to filter your data. In this example, we only want the
names of the students who passed the class *Data Warehouse*. with a very good grade:

`SELECT first_name, last_name FROM students WHERE grades #> '{Database II, classes, 2, Data Warehouse}' <= 2;`{{execute}}


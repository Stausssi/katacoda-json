Now that the table is ready, we can insert the data sets from the first step. We need to create an entry for both John
and Mary.

Let's start by opening the JSON-file for Johns grades:

`grades_john.json`{{open}}

The file has already been populated with values, but feel free to adjust the grades and maybe even add classes.

Same goes for Marys grades: `grades_mary.json`{{open}}

---

If you are done manipulating the grade files to your liking, we can start inserting the two data points into the table.
To retrieve the JSON content from the files, we are using a temporary variable.

```postgresql
\SET grades_john `cat /root/grades_john.json`

INSERT INTO students (first_name, last_name, password, grades)
VALUES ('John', 'Doe', 'admin', :grades_john);
```

Let's do the same for Mary
```postgresql
\SET grades_mary `cat /root/grades_mary.json`

INSERT INTO students (first_name, last_name, password, grades)
VALUES ('Mary', 'Poppins', 'umbrella1234', :grades_mary);
```

Now that you know the basics about PostgreSQL and JSON, we can start with creating the database. For this Katacoda,
we're using a single table. Our *users* table from the first two steps is now extended with a column *grades* and is
therefore renamed to *students*.

But first, let's think about why JSON is a suited format for our grades:

1. Not every student attends the same classes. Therefore, we can't use a static structure with a column for every class.
   This would result in a messy structure with a huge amount of columns and many `null`-values, since not every class is
   attended by every student.
2. Some modules consist of multiple classes and therefore multiple grades. We need to have the possibility to get every
   grade by itself and also the combination of multiple class grades into a module grade.

A potential grade structure could look like this:

```json
{
  "grades": [
    {
      "class": "grade",
      "module": {
        "grade": 1,
        "classes": [
          {
            "subclass_1": "grade"
          },
          {
            "subclass_2": "grade"
          }
        ]
      }
    }
  ]
}
```

Since the `grades` identifier is already supplied by the column in the database, we can just use the *list*
following `grades`.

To create the table, run the following command. For the `grades` column we're using the datatype `JSON`.

```postgresql
CREATE TABLE students (
    user_id     INTEGER PRIMARY KEY NOT NULL,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    password    VARCHAR(200) NOT NULL,
    grades      JSON NOT NULL
);
```{{execute}}

To check whether the table was created successfully, we can run the following command:

`SELECT * FROM students;`{{execute}}

It should print out the headers we just defined.




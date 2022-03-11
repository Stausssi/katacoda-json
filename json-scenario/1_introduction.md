First, we have to wait for the installation to complete. Meanwhile, let me tell you something about PostgreSQL and JSON!

# PostgreSQL

> PostgreSQL is a powerful, open source object-relation database system [[1]](https://www.postgresql.org/)

In a relational database, the information is strictly structured in tables. These tables usually have a name and
multiple columns specifying which kind of information is saved in it. For instance, a relational table might look like
this:

| _user\_id (PK)_ | _first\_name_ | _last\_name_ | _password_   |
|-----------------|---------------|--------------|--------------|
| 1               | John          | Doe          | admin        |
| 2               | Mary          | Poppins      | umbrella1234 |
| ...             | ...           | ...          | ...          |

**Note**: The column _user\_id_ has _(PK)_ next to it. _PK_ stands for _primary key_ and tells the system, that each value
in this column is unique and therefore identifies an entire row in the table.

Upon creation, each column has to specify a datatype. Only values of the specified datatype can be saved. In the example above,
_user\_id_ is an _Integer_ and _first\_name, last\_name_ and _password_ contain a _String_.

Other than the usual data types _String, Numeric, Boolean, etc._, PostgreSQL also lets you store JSON in your column.
But what is JSON exactly?

# JSON

JSON is short for JavaScript Object Notation.

---

By now, the installation should be complete! If the terminal on the right prints `postgres=#`, you are ready to continue!

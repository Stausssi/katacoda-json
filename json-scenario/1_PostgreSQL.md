First, we have to wait for the installation to complete. Meanwhile, let me tell you something about PostgreSQL and JSON!

# PostgreSQL

> PostgreSQL is a powerful, open source object-relation database system [[1]](https://www.postgresql.org/)

In a relational database, the information is strictly structured in tables. These tables usually have a name and
multiple columns specifying which kind of information is saved in it. For instance, a relational table might look like
this:

| *user_id (PK)* | *first_name* | *last_name* | *password*   |
|----------------|--------------|-------------|--------------|
| 1              | John         | Doe         | admin        |
| 2              | Mary         | Poppins     | umbrella1234 |
| ...            | ...          | ...         | ...          |

**Note**: The column *user_id* has *(PK)* next to it. *PK* stands for *primary key* and tells the system, that each
value in this column is unique and therefore identifies an entire row in the table.

Upon creation, each column has to specify a datatype. Only values of the specified datatype can be saved. In the example
above,
*user_id* is an *Integer* and *first_name*, *last_name* and *password* contain a *String*.

Other than the usual data types *String, Integer, Boolean, etc.*, PostgreSQL also lets you store JSON in your column.
But what is JSON exactly?

---

**Click 'Next Step' to find out!**

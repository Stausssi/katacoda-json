# JSON

> JSON (JavaScript Object Notation) is a lightweight data-interchange format [[2]](https://www.json.org/json-en.html)

One of the main selling points of JSON is its structure. It can easily be read and written by both humans and computers.
Even tho JSON contains the programming language JavaScript in its name, it's language independent and can be used in
every programming language.

## Data structures

Every JSON documents is built by using the two structures of JSON: A **collection** of key/value pairs and a **list** of
values. These two structures can be nested however you want to achieve your goals.

### Collection

A *collection* (also known as a *Map, struct, dictionary, etc.*) contains an arbitrary amount of key/value pairs. The
key has to be a *String* while the value can be anything.

```json
{
  "integer_value": 1,
  "string_value": "value",
  "collection_value": {
    "inner_value": 10,
    "is_inner": true
  }
}
```

### List

A *list* (also: *array, vector, sequence, etc.*) contains an ordered list of values.

```json
[
  "first_value",
  2,
  [
    "first",
    2,
    false
  ]
]
```

### Combined

To achieve any structure you want, you can also nest *collections* and *lists* together. You might recognize the
structure from earlier:

```json
{
  "users": [
    {
      "user_id": 1,
      "first_name": "John",
      "last_name": "Doe",
      "password": "admin"
    },
    {
      "user_id": 2,
      "first_name": "Mary",
      "last_name": "Poppins",
      "password": "umbrella1234"
    }
  ]
}
```

---

By now, the installation should be complete! If the terminal on the right prints `postgres=#`, you are ready to
continue!


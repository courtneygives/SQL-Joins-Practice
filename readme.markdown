### Create your database, table, and data
We are creating a database with a multiple tables and records. Please follow the instructions below to create a new database with this table and data.

### Postico instructions

1. Open Postico and connect.
2. Click the elephant in the upper left.
3. Create a new database using the button near the bottom.
4. Double click on your newly created database.
5. Select SQL query
6. Paste in the contents of [this file] (https://drive.google.com/file/d/0B10Wu-zrSBwMYTJUMkM3MWxnM1E/view?usp=sharing)
7. Press cmd + option + enter or select Connection -> Execute All Queries.
8. Press cmr + R or select Connection -> Reload.

# Exercise
For each of the following questions, write a comment that specifies which question you are answering. **Note:** *SQL comments are two dashes, followed by text.* Write the SQL query that answers the question, below that comment.

### Example question and answer
```sql
-- 0. Get all the users
SELECT * FROM customers;
```

### Tasks
- Get all customers and their addresses.
- Get all orders and their line items.
- Which warehouses have cheetos?
- Which warehouses have diet pepsi?
- Get the number of orders for each customer. **NOTE:** *It is OK if those without orders are not included in results.*
- How many customers do we have?
- How many products do we carry?
- What is the total available on-hand quantity of diet pepsi?

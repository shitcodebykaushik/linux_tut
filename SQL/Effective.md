# Item 1 : Verify that all tables have a primary key .
- Because adherence to the relational model requires that your database system be
able to distinguish a single row of a table from all other rows, every table should
have a column or set of columns as the primary key. The contents of a primary
key must be unique for each row and cannot be null.When tables lack primary keys, all kinds of problems can ensue, including
repeated and inconsistent data, slow-running queries, and inaccurate information
in reports! 

- What makes a good candidate for a primary key ?
- The column should have the follwing characteristics :-
  - Must hold the unique values .
  - Can never be null 
  - Should be stable (means hardly updation is required) 
  - We can use INT base primary key or text based primary key ,that is completely adjustable .
- Try to avoid using the compound primary keys because they are less efficiant for two reason:- \
 - When you define the primary key most db enforce system with the unique index . A unique index on more that one column requires the database system to do more work .
 - Performing a join on a primary key is quite common,but doing so on multiple columns is more complex and slower . 
 However,using primary key that contains multiple columns can make sense in certain cases.
# Eliminate Redudant storage of data items 
- Redundant storage of data causes many problems including inconsistent data;Normalization is a process that involves di
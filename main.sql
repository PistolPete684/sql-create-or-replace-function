-- CREATE FUNCTION
-- Defines a new function in the database. 
-- A function is a reusable block of SQL (or procedural code) that can take inputs and return a value.

-- OR REPLACE
-- This modifier tells the database:
-- •   If the function doesn’t exist, create it.
-- •   If the function already exists, replace it with the new definition.
-- This is handy because you don’t have to manually drop the old function before redefining it


CREATE OR REPLACE FUNCTION increment(n integer)
RETURNS integer
AS $$
  SELECT n + 1;
$$ LANGUAGE sql;
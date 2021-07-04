# pg_IRR
IRR and NPV financial functions in Postgres


Implementation of IRR (Internal rate of return) and NPV (Net present Value) financial functions in Postgresql in SQL and pl/pgsql

more on IRR on Wikipedia
https://en.wikipedia.org/wiki/Internal_rate_of_return

more on NPV on Wikipedia:
https://en.wikipedia.org/wiki/Net_present_value

## Installation:
For all users (recommended, but requires permissions to public schema) - launch IRR_function.sql. Functions IRR and NPV will be added and available to all databases users.

For your user only (in case you can not add anything to public schema) - launch IRR_function_private.sql. Functions IRR and NPV will be added, but it will be availabe only for you. Other users will have to install it in case they want to reuse your queries.

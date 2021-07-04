# pg_IRR
IRR and NPV financial functions in Postgres


Implementation of IRR (Internal rate of return) and NPV (Net present Value) financial functions in Postgresql in SQL and pl/pgsql.

more on IRR on Wikipedia:
https://en.wikipedia.org/wiki/Internal_rate_of_return

more on NPV on Wikipedia:
https://en.wikipedia.org/wiki/Net_present_value

## Installation:
For all users (recommended, but requires permissions to public schema):
Launch [IRR_function.sql](IRR_function.sql). Functions IRR and NPV will be added and available to all databases users.

For your user only (in case you can not add anything to public schema):
Launch [IRR_function_private.sql](IRR_function_private.sql). Functions IRR and NPV will be added, but it will be availabe only for you. Other users will have to install it in case they want to reuse your queries.

## Usage:

### Cash flow data in columns:
When your data is organized in a way that project is in one record and cash flow data is stored in separate columns like in examaple below, the usage is as follows:
'to be updated'

### Cash flow data in rows:
When your data is organized in a way that each year of cashflow is separate record like in examaple below, the usage is as follows:
'to be updated'

## Precission and search range parameters:

### IRR search range
By default function searches for IRR in range from -1000% to 1000%. If this range is insufficient for your data you can call IRR function with custom minimum and maximum search range. E.g irr(array[cf1,cf2,cf3,cf4,cf5],-20,20) will extend search range to -2000% 2000%

### calculation precision
Default precision of IRR is +/- 0.00001. If it is not sufficient you can alter 'prec' variable according to your needs

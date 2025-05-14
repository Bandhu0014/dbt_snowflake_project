{{ config(materialized='view') }}

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM {{ source('hr', 'employees') }}

WITH raw_hosts AS (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)
SELECT
    id AS host_id,
    name AS host_name,
    host_is_superhost,
    created_at AS host_created_date,
    updated_at AS host_updated_date
FROM raw_hosts
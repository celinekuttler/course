
SELECT * 
FROM {{ ref('fct_reviews') }} as r
WHERE
EXISTS (
SELECT *
FROM {{ ref('dim_listings_cleansed')}} as c
WHERE 
c.listing_id = r.listing_id AND
c.created_at > r.review_date
)


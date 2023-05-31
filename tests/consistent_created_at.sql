select *
  from {{ ref('fct_reviews') }} r
  join {{ ref('dim_listings_cleansed')}} l
    on l.listing_id=r.listing_id
 where r.review_date<=l.created_at
 limit 10
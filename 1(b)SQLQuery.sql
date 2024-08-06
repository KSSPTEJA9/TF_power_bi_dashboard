SELECT 
    region,
    COUNT(DISTINCT CASE WHEN event_type = 'home_page' THEN user_id END) AS home_page_users,
    COUNT(DISTINCT CASE WHEN event_type = 'ordering_page' THEN user_id END) AS ordering_page_users,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_page' THEN user_id END) AS checkout_page_users,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_success' THEN user_id END) AS checkout_success_users
FROM 
    my_data
GROUP BY 
    region;

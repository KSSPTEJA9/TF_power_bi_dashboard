SELECT 
    event_type,
    COUNT(DISTINCT user_id) AS user_count
FROM 
    my_data
GROUP BY 
    event_type
ORDER BY 
    CASE 
        WHEN event_type = 'home_page' THEN 1
        WHEN event_type = 'ordering_page' THEN 2
        WHEN event_type = 'checkout_page' THEN 3
        WHEN event_type = 'checkout_success' THEN 4
    END;

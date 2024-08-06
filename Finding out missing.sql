-- Check out different counrties in this region as i found null 
select distinct(country) from my_data where region = 'EMEA'

select distinct (USER_ID) from my_data

-- Find the user will null as country
select distinct(USER_ID) from my_data where country is null

-- To find if there are any user with null have atleast one reacord where there is no null
select country from my_data where user_id in 
(select distinct(USER_ID) from my_data where country is null) and country is not null
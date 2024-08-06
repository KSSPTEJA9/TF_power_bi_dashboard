-- a is about user with all 4 events and b is about users of only success 
-- based on assumption that they should be equal on a & b as 
-- i thought all the 4 events lead to success
select * from ((select user_id from
(select distinct(user_id),count(distinct(event_type)) as event_comp from my_data 
group by user_id  ) as a where event_comp=4  ) as a

full outer join 

(select distinct(user_id) from my_data where event_type='checkout_success') as b

on a.user_id = b.user_id) 

select * from my_data where user_id=13
-- sample of user where he has only 3 events instead of 4
select distinct(user_id),count(distinct(event_type)) as event_comp from my_data where  user_id =13
group by user_id 

-- Finding spread of referrer
select count(distinct(user_id)), referrer from my_data group by referrer

-- checking for de duplicates
select event_type, USER_ID, count(*) from my_data where event_type='checkout_success' group by user_id,event_type having count(*) =1
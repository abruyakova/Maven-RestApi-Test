-- insert data to customer status table
insert into customer_status(name,level) values ('lead',1);
insert into customer_status(name,level) values ('prospect',2);
insert into customer_status(name,level) values ('customer',3);

-- tags  ‘vip’, ‘promoter’, ‘red’ and ‘orange’
insert into tag(name) values ('vip');
insert into tag(name) values ('promoter');
insert into tag(name) values ('red');
insert into tag(name) values ('orange');

-- insert customers

insert into customer(first_name, last_name, email) values ('Eddard', 'Stark', 'ed.stark@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-10-07 10:47:47'
    from  customer_status
        where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-10-28 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Robert', 'Baratheon', 'r.baratheon@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-10-10 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-10-13 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Jaime', 'Lannister', 'j.lannister@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-10-08 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-10-15 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Daenerys', 'Targaryen', 'd.targaryen@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-11-07 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-11-28 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Jorah', 'Mormont', 'j.mormont@gmail.com');

SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-10 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-09-16 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Jon', 'Snow', 'j.snow@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-12 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-09-15 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Theon', 'Greyjoy', 't.greyjoy@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-30 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-10-01 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Joffrey', 'Baratheon', 'j.baratheon@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-08 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-09-12 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Petyr', 'Baelish', 'p.baelish@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-11 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-12-16 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Samwell', 'Tarly', 's.tarly@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-15 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-09-16 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer(first_name, last_name, email) values ('Ramsay', 'Bolton', 'r.bolton@gmail.com');
SELECT @id := LAST_INSERT_ID();
insert into customer_history( customer_id ,customer_status_id ,date_time)
    select @id, customer_status.id,'2018-09-18 10:47:47'
    from  customer_status
    where customer_status.name ='prospect';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select @id, customer_status.id,'2018-09-27 10:47:47'
from  customer_status
where customer_status.name ='customer';

insert into customer_history( customer_id ,customer_status_id ,date_time)
select customer.id, customer_status.id, '2018-09-07 10:47:47'
    from customer_status,customer
    where customer_status.name = 'lead';

-- tags to customers

insert into customer_tag(tag_id,customer_id)
    select tag.id,customer.id
    from tag,customer
    where tag.name = 'vip' and customer.email in ('ed.stark@gmail.com', 'j.lannister@gmail.com', 'j.mormont@gmail.com',
                                                  't.greyjoy@gmail.com', 'p.baelish@gmail.com', 'r.bolton@gmail.com');

insert into customer_tag(tag_id,customer_id)
    select tag.id,customer.id
    from tag,customer
    where tag.name = 'promoter' and customer.email in
                                    ('r.baratheon@gmail.com', 'd.targaryen@gmail.com', 'j.snow@gmail.com',
                                     'j.baratheon@gmail.com', 's.tarly@gmail.com', 'r.bolton@gmail.com');

insert into customer_tag(tag_id,customer_id)
    select tag.id,customer.id
    from tag,customer
    where tag.name = 'red' and customer.email in ('d.targaryen@gmail.com', 'j.snow@gmail.com');

insert into customer_tag(tag_id,customer_id)
    select tag.id,customer.id
    from tag,customer
    where tag.name = 'orange' and
          customer.email in ('p.baelish@gmail.com', 't.greyjoy@gmail.com', 'r.bolton@gmail.com');



-- insert to customer status history

insert into customer_attrs(label,type,value,customer_id)
select 'foto','link','https://www.netclipart.com/pp/m/294-2949342_game-of-thrones-dragon-logo-png.png',customer.id
    from customer;

insert into customer_attrs(label,type,value,customer_id)
    select 'age','ineger','25',customer.id
    from customer
where  customer.email in ('ed.stark@gmail.com', 'j.lannister@gmail.com', 'j.mormont@gmail.com',
                          't.greyjoy@gmail.com', 'p.baelish@gmail.com', 'r.bolton@gmail.com');

insert into customer_attrs(label,type,value,customer_id)
    select 'country','string','Westeros',customer.id
    from customer
    where  customer.email in   ('r.baratheon@gmail.com', 'd.targaryen@gmail.com', 'j.snow@gmail.com',
                                'j.baratheon@gmail.com', 's.tarly@gmail.com', 'r.bolton@gmail.com');

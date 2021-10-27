begin;

update inventories set count = count - 6 where item_id = 1001;

begin;

update inventories set count = count - 4 where item_id = 1001;

select * from inventories order by item_id;
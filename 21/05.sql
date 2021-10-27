begin;
select * from inventories order by item_id;

update inventories set count = 6 where item_id = 1001;
update inventories set count = count + 12 where item_id = 1002;
update inventories set count = count - 12 where item_id = 1003;

select * from inventories order by item_id;
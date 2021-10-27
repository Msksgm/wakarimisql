update inventories set count = 10 where item_id = 1001;

select * from inventories where item_id = 1001;

begin;
select * from inventories where item_id = 1001 for update;

begin;
select * from inventories where item_id = 1001 for update;

update inventories set count = count - 6 where item_id = 1001;
select * from inventories where item_id = 1001 for update;

commit;

update inventories set count = count - 4 where item_id = 1001;
commit;
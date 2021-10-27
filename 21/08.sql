begin;
select * from inventories where item_id = 1001 for update;

begin;
select * from inventories where item_id = 1002 for update;

select * from inventories where item_id = 1002 for update;

select * from inventories where item_id = 1001 for update;
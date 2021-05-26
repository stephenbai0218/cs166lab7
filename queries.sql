select count(*) from part_nyc where on_hand >70;
select ((select count(*) from part_nyc where color = (select color_id from color where color_name = 'Red') )+(select count(*) from part_sfo where color =  (select color_id from color where color_name = 'Red'))) as total;
select supplier.supplier_name from supplier, (select distinct t1.supplier from (select distinct supplier , SUM(on_hand) as total from part_nyc group by supplier) as t1, (select distinct supplier , SUM(on_hand) as total from part_sfo group by supplier) as t2 where t1.total > t2.total and t1.supplier = t2.supplier) as idid where idid.supplier = supplier.supplier_id;
select supplier.supplier_name from (select distinct supplier from(select part_number from part_nyc except (select part_number from part_sfo))  as a , part_nyc where part_nyc.part_number = a.part_number) as id, supplier where supplier.supplier_id = id.supplier;
update part_nyc set on_hand = on_hand -10;
delete  from part_nyc where on_hand<30;

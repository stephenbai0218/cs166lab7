DROP INDEX IF EXISTS index_on_hand_nyc CASCADE;
DROP INDEX IF EXISTS index_on_hand_sfo CASCADE;
DROP INDEX IF EXISTS index_pnumber_nyc CASCADE;
DROP INDEX IF EXISTS index_pnumber_sfo CASCADE;
DROP INDEX IF EXISTS  index_supid_sfo CASCADE;
DROP INDEX IF EXISTS index_sfo_color CASCADE;
DROP INDEX IF EXISTS index_nyc_color CASCADE;
DROP INDEX IF EXISTS index_nyc_sup CASCADE;
DROP INDEX IF EXISTS index_nyc_sup CASCADE;
DROP INDEX IF EXISTS index_color CASCADE;
CREATE INDEX index_on_hand_nyc ON part_nyc  USING BTREE (on_hand);
CREATE INDEX index_on_hand_sfo ON part_sfo  USING BTREE (on_hand);
CREATE INDEX index_nyc_color ON part_nyc  USING BTREE (color);
CREATE INDEX index_sfo_color ON part_sfo  USING BTREE (color);
CREATE INDEX index_nyc_sup ON part_nyc (supplier);
CREATE INDEX index_sfo_sup ON part_sfo (supplier);
CREATE INDEX index_color ON color (color_id, color_name);
CREATE INDEX index_pnumber_sfo ON part_sfo  USING BTREE (part_number);
CREATE INDEX index_pnumber_nyc ON part_nyc  USING BTREE (part_number);
CREATE INDEX index_supid ON supplier  USING BTREE (supplier_id);


-- Creating table via pgr_fromAtoB
CREATE TABLE route AS SELECT * FROM pgr_fromAtoB('ways',51.340382,53.3640819,51.3427374,53.3811639);

-- Clear table
DELETE FROM route

-- Add route_id column
ALTER TABLE route ADD COLUMN route_id integer PRIMARY KEY;

-- Add user_id column
ALTER TABLE route ADD COLUMN user_id integer;

-- Index for user_id
CREATE INDEX user_idx ON route("user_id");

-- Index for route_id
CREATE INDEX route_idx ON route("route_id");
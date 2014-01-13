SELECT seq, id1 AS node, id2 AS edge, cost FROM pgr_astar('
                SELECT gid AS id,
                         source::integer,
                         target::integer,
                         length::double precision AS cost,
                         x1, y1, x2, y2
                        FROM ways',
                936, 825, false, false);
SELECT ST_MakeLine(route.geom) FROM (
    SELECT geom FROM pgr_fromAtoB('ways', %x1%, %y1%, %x2%, %y2%
  ) ORDER BY seq) AS route
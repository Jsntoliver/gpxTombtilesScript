#!/bin/bash -ex

WORKING_DIR=/home/jason/Desktop/tippecanoe

cd /home/jason/Desktop/tippecanoe

for i in $( ls path_to_files/*.gpx ); do ogr2ogr path_to_output_storage/gpx.shp -append $i track_points -fieldTypeToString DateTime; done

ogr2ogr -f GeoJSON gpx.json gpx.shp

./tippecanoe -o gpx.mbtiles gpx.json

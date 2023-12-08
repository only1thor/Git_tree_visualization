#!/bin/bash
for i in {A..Z}
do
	echo "ID=\"${i}\""
	~/./Downloads/OpenSCAD-2021.01-x86_64.AppImage -D "ID=\"${i}\"" -o "3d_files/puck_${i}.stl" puck.scad
done

#!/bin/bash
for i in {A..L}
do
	echo "ID=\"${i}\""
	~/./Downloads/OpenSCAD-2021.01-x86_64.AppImage -D "ID=\"${i}\"" -o "puck_${i}.stl" puck.scad
done

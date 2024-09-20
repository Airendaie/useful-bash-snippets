#!/bin/bash

for folder in *;do
	mv -v "$folder" "${folder#*_}"
done

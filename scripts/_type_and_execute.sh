#!/bin/bash

while read p; do
	echo -n '$ ' ; echo "${p}" | pv -qL 15 ; eval ${p}
done < ${1}

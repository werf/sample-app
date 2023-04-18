#!/bin/bash

while read p; do
	echo -n '$ ' ; echo "${p}" | pv -qL 11 ; eval ${p}
done < ${1}

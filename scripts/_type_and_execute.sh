#!/bin/bash

INPUT_THROTTLING="${INPUT_THROTTLING:-11}"

while read p; do
	echo -n '$ ' ; echo "${p}" | pv -qL ${INPUT_THROTTLING} ; eval ${p}
done < ${1}

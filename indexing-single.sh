#!/bin/bash
# $1: elasticsearch host:port
# $2: data in single format
# $3: number of data
for i in $(seq 0 $3)
do
    curl -XPOST $1/esbench_test/doc --data-binary @$2 2>/dev/null 1>/dev/null
done

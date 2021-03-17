#!/bin/sh
# Run every available test - Bash needed
cd test
for test in *test;
do
	bash $test || { echo "*** ERROR: Test '$test' failed!"; exit 1; }
done

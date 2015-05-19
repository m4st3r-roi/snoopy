#!/bin/bash



### Configure shell and bootstrap
#
set -e
set -u
. ./_bootstrap.sh



### Get data from Snoopy
#
unset SNOOPY_TEST_DATASOURCE_ENV_UNSET
VAL_SNOOPY=`$SNOOPY_TEST_DATASOURCE env "SNOOPY_TEST_DATASOURCE_ENV_UNSET"`
VAL_REAL="(undefined)"



### Evaluate
#
snoopy_test_compareValues "$VAL_SNOOPY" "$VAL_REAL"

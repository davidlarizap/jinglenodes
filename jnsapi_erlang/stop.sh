#!/bin/bash
HOSTNAME=d6h57b4j0
##`hostname`
erl_call -n JNLocal@$HOSTNAME -v -a 'init stop []'
kill -9 `ps -C epmd -o pid=`
kill -9 `ps -C beam.smp -o pid=`
kill -9 `ps -C heart -o pid=`
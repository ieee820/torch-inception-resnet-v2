#!/bin/sh

## cond1
filename="logs/cond1_b64_s12800_i1801710_20160519-193812-101174441.log"
cat $filename"".1 $filename"".2  > $filename

## parse train 
grep -r " | Epoch: " $filename > $filename"".train

## parse test
grep -r "Finished epoch" $filename > $filename"".test

## plot with python
#python tools/plot_log.py

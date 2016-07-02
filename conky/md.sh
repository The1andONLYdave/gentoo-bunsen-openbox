#!/bin/bash
awk '/^md/ {printf "%s: ", $1}; /blocks/ {print $NF}' </proc/mdstat
awk '/^md/ {printf "%s: ", $1}; /speed/ {print $2, $4, $6,  $NF}' </proc/mdstat

#!/bin/env bash

# Gather the current working amout for the day
hours=$(timew summary :day | tail -n 2 | grep --only-matching "..:..:..$")
echo $hours


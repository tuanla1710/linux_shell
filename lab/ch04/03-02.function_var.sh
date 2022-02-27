#!/bin/bash

function my_function {
    local GLOBAL_VAR=1
}

my_function

# GLOBAL_VAR is NOW available
echo "GLOBAL_VAR value AFTER my_function called: $GLOBAL_VAR"
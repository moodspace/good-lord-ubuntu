#!/bin/bash

for script in $( ls misc ); do
    bash misc/$script
done

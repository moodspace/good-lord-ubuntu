#!/bin/bash

for script in $( ls misc | grep .sh ); do
    bash -l misc/$script
done

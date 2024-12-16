#!/bin/bash

echo "${PATH}" | sed 's/://g' | sed 's/\//\n/g'

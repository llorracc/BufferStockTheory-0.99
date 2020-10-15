#!/bin/bash

scriptDir="$(dirname "$0")"

./reproduce_compute.sh
./reproduce_textual.sh


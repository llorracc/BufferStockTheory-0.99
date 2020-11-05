#!/bin/bash

scriptDir="$(dirname "$0")"

./reproduce_computed.sh
./reproduce_text-etc.sh


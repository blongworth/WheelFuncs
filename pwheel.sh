#!/bin/bash

# format and print out wheelfile names on STDIN

csvlook -t $1 | pr --length=63 --header=$1 | lpr -ocpi=13

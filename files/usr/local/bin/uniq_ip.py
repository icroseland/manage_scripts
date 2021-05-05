#!/usr/bin/python3
import sys
import re
file_name = sys.argv[1]
count = 0
address_array = []
address_list = []

def find_ip(test_str):
    regex = re.compile(r"(?<![-\.\d])(?:0{0,2}?[0-9]\.|1\d?\d?\.|2[0-5]?[0-5]?\.){3}(?:0{0,2}?[0-9]|1\d?\d?|2[0-5]?[0-5]?)(?![\.\d])")
    return regex.findall(test_str)


with open( file_name ) as f:
    contents = f.readlines()

for line in contents:
    count += 1
    address_array.append( find_ip(line))    

[address_list.append(x) for x in address_array if x not in address_list]

for address in address_list:
    print(str(address)[2:-2])
    
    


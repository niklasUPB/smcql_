#!/usr/bin/python

import sys
import csv
import random




if __name__ == "__main__":
    rows= sys.argv[1];
    collum = sys.argv[2];
    start = sys.argv[3];
    name = sys.argv[4];
    file = open(name , "w")
    writer = csv.writer(file)
    for x in range(int(start), int(rows)+int (start)):    
        line = []
        line.append( str(x) )
        for y in range(1,4):
            line.append(str( random.randint(0, 1000 )))
        writer.writerow(line)
    file.close()
    

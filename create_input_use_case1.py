#!/usr/bin/python

import sys
import csv
import random


def write_half(start,amount, writer):
    for x in range(start, start+amount):
        line = []
        line.append( str(x) )
        line.append(str( random.randint(0, 1000 )))
        line.append(str( random.randint(0, 1000 )))
        line.append(str( random.randint(0, 1000 )))
        writer.writerow(line)
def write_file(name, row, intersection , start ):
    file = open(name , "w")
    writer = csv.writer(file)
    abstand = 1
    if name == "conf/workload/testDB/1/A_use_case1.csv":
       abstand = 10
    if name == "conf/workload/testDB/1/B_use_case1.csv":
       abstand = 20
    if name == "conf/workload/testDB/2/B_use_case1.csv":
        abstand =30
    if name == "conf/workload/testDB/2/A_use_case1.csv":
        abstand =40
    write_half(start,intersection, writer)
    write_half(row * abstand, row-intersection , writer)
    file.close()



if __name__ == "__main__":
    rows =  int (sys.argv[1]);
    intersection_size = int((int(sys.argv[2])*0.5));
    half = int(int(rows) * 0.5)
    write_file("conf/workload/testDB/1/A_use_case1.csv",  half, int(intersection_size), 0)
    write_file("conf/workload/testDB/1/B_use_case1.csv", half, int(intersection_size),rows )
    write_file("conf/workload/testDB/2/B_use_case1.csv", half, int(intersection_size), 0)
    write_file("conf/workload/testDB/2/A_use_case1.csv", half, int(intersection_size),rows)
    file = open("Results/use_case1_local" , "a")
    writer = csv.writer(file)
    line = []
    line.append(rows)
    line.append(rows)
    writer.writerow(line)
    file.close()

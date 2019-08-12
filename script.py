#!/usr/bin/env python2

import csv
from collections import defaultdict as dd

counts = dd(int)


with open("all-fve.test.txt") as f:
    reader = csv.reader(f, delimiter="\t")
    for i, line in enumerate(reader):
        # print 'line[{}] = {}'.format(i, line)

        for fieldno, field in enumerate(line):
            if len(field) > counts[fieldno]:
                counts[fieldno] = len(field)

for key in counts.keys():
    print 'counts[{}] = {}'.format(key, counts[key])

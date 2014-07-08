"""
@author: SSadalge

Week 6 Python Assignment.

PLEASE NOTE: I put the 4 lines in a txt file called Week_6_Python_data.txt to test out the code.
"""

import re


fhand = open('https://github.com/spenglerss/MSDABridgeCourse/tree/master/Week%206/Week_6_Python_data.txt')#open('C:\Users\ssadalge\Documents\GitHub\MSDABridgeCourse\Week 6\Week_6_Python_data.txt')
print fhand

print type(fhand)

for line in fhand:
    print type(line)


'''  The various strings in the file:
1 Germany  | W 3 | T 4 | W 2
2 United States | W 4 | T 3 | L 1
3 Portugal | L 1 | T 2 | W 4
4 Ghana | L 2 | T 1 | L 3
'''

theString = '1 Germany  | W 3 | T 4 | W 2'

match = re.search('(^[0-9]+) +([a-zA-Z ]+)\| ([WLT]+ [0-9 ]+)\| ([WLT]+ [0-9 ]+)\| ([WLT]+ [0-9 ]+)',theString)

if match:
    print "Rank: ",match.group(1)
    print "Country: ",match.group(2)
    print "Results:"
    print match.group(3)
    print match.group(4)
    print match.group(5)
else:
    print "No Match"
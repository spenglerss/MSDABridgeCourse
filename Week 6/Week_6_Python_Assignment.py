"""
@author: SSadalge

Week 6 Python Assignment.

**
PLEASE NOTE: I put the 4 lines in a txt file called Week_6_Python_data.txt
**
The file looks like this:
1 Germany  | W 3 | T 4 | W 2
2 United States | W 4 | T 3 | L 1
3 Portugal | L 1 | T 2 | W 4
4 Ghana | L 2 | T 1 | L 3

*** I made an iPython notebook to show the results along with my code below ***
*** It is saved in my github here: https://github.com/spenglerss/MSDABridgeCourse/tree/master/Week%206/ ***

"""

import re

fhand = open('C:\Users\ssadalge\Documents\GitHub\MSDABridgeCourse\Week 6\Week_6_Python_data.txt')

for line in fhand:
   
    match = re.search('(^[0-9]+) +([a-zA-Z ]+)\| ([WLT]+ [0-9 ]+)\| ([WLT]+ [0-9 ]+)\| ([WLT]+ [0-9 ]+)',line)

    if match:
        print "Rank: ",match.group(1)
        print "Country: ",match.group(2)
        print "Results:"
        print match.group(3)
        print match.group(4)
        print match.group(5)
        print "" # This is just for display spacing
    else:
        print "No Match"
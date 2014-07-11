"""
@author: SSadalge

Week 6 Python Assignment - ENHANCED.

"""
import re

theString = '2 United States | W 4 | T 3 | L 1 | L 5 | W 3 | T 2'

matches = re.search('(^[0-9]+) +([a-zA-Z ]+)\|(.*)',theString)

if matches:
    print "Rank: ",matches.group(1)
    print "Country: ",matches.group(2)
    resultsList = matches.group(3).strip().split('|')
    print "Results:"    
    for result in resultsList:
        print result.strip()
else:
    print "String not in anticipated format"    



"""
@author: SSadalge

Week 6 Python Assignment - ENHANCED.

"""
import re

# You can change this string as you like for testing:
theString = '2 United States | W 4 | T 3 | L 1 | L 5 | W 3 | T 2'

''' The following regular expression assigns the following:
matches.group(1) = Rank
matches.group (2) = Country
matches.group(3) is the string of all results.  basically everything from the first '|' onwards.
'''
matches = re.search('(^[0-9]+) +([a-zA-Z ]+)\|(.*)',theString)

if matches:
    print "Rank: ",matches.group(1)
    print "Country: ",matches.group(2)
    resultsList = matches.group(3).strip().split('|') # Making a list based on all the results. matches.group(3) contains everything from the first '|' to the EOL
    print "Results:"    
    for result in resultsList: # Going through all the resutls and printing them
        print result.strip()
else:
    print "String not in anticipated format"  # Print this if the regular expression fails to match something.
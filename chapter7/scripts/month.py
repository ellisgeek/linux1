#!/usr/bin/env python

#define the months of the year
months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

print "Traditional order:"
for month in months:
    print month
    
print "\n\nAlphabetical order:"
for month in sorted(months):
    print month

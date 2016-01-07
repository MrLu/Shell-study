#! /bin/bash

#document

# who > users
# cat users

# echo line2 >> users
# cat users

# wc -l users

# wc -l < users

# wc -l << EOF
#     This is a simple lookup program
#     for good (and bad) restaurants
#     in Cape Town.
# EOF

filename=test.txt
vi $filename << EndOfCommands
i
This file was created automatically from
a shell script
EndOfCommands
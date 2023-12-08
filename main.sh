#!/bin/bash

# make a directory called output
mkdir output

# move text file to output
mv input.txt output

# cd into output
cd output

# read contents of file into read.txt
cat input.txt > read.txt

# save outputs of pwd and ls into text files
pwd > pwd.txt
ls > ls.txt

# copy text file into third text file
cat input.txt > copy.txt

# create alias to print today's date
shopt -s expand_aliases
alias today="echo $(date)"

# store output of date aliase in date.txt
today > date.txt

# count words in text file and save to textcount.txt
wc -w input.txt > textcount.txt

# save first five lines of ps command as process.txt
ps aux | head -n 5 > process.txt

# save first five lines of ifconfig as netstat.txt
ifconfig | head -n 5 > netstat.txt

# save first five lines of mout as mount.txt
mount | head -n 5 > mount.txt

# make file called permissions and give rxw to all groups
> permissions.txt
chmod 777 permissions.txt

# create shell variable
TESTENV1='test'

# grep for all words in text file with words >= 3 and save
grep -Ewo '[[:alpha:]]{3,}' input.txt > regex.txt

# navigate back to parent directory
cd ..

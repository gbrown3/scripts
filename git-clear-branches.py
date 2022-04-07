"""
Gets a list of all the branches, checks out master
and then deletes all other branches.
"""
import sys
import subprocess

branch_filename = sys.argv[1]
branches = []

file = open(branch_filename, "r")
for line in file:
    stripped_line = line.strip('* \n')
    if (stripped_line != "" and stripped_line != "master" and stripped_line != "main"):
        branches.append(stripped_line)

file.close()

checkout_master = "git checkout master"
process = subprocess.Popen(checkout_master.split(), stdout=subprocess.PIPE)
process.communicate()

remove_branch = "git branch -D "
for branch in branches:
    bash_cmnd = remove_branch + branch
    process = subprocess.Popen(bash_cmnd.split(), stdout=subprocess.PIPE)
    process.communicate()

print("All branches cleared")
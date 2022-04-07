"""
Gets a list of all the branches, checks out master
and then deletes all other branches.
"""
import sys
import subprocess

branch_filename = sys.argv[1]
branches = []
main_branch_name = "master" # some repos use "master" as the main branch name, others use "main"

with open(branch_filename, "r") as file:
    for line in file:
        stripped_line = line.strip('* \n')
        if (stripped_line != "" and stripped_line != "master" and stripped_line != "main"):
            branches.append(stripped_line)

        if (stripped_line == "main"):
            main_branch_name = "main"

checkout_main_branch = f"git checkout {main_branch_name}"
process = subprocess.Popen(checkout_main_branch.split(), stdout=subprocess.PIPE)
process.communicate()

remove_branch = "git branch -D "
for branch in branches:
    bash_cmnd = remove_branch + branch
    process = subprocess.Popen(bash_cmnd.split(), stdout=subprocess.PIPE)
    process.communicate()

print("All branches cleared")
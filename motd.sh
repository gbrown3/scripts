# Prints out ASCII art welcome message along with the current day of the week, month, day of the month and time
figlet "Welcome, Gabe" | lolcat
figlet $(date +'%A, %B %d') | lolcat
figlet $(date +'%I : %M %p') | lolcat


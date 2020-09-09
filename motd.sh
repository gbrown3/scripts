# Message of the day. Yay ascii art!
# 
# CLI breakdown:
#   - figlet -> makes ascii art out  of strings
#   - lolcat -> makes things colorful
#   - date -> gets the current date in the desired format
figlet "Welcome, Gabe" | lolcat
figlet $(date +'%A, %B %d') | lolcat
figlet $(date +'%I : %M %p') | lolcat

# Provides weather info. curl "wttr.in/:help" to see full usage.
# Current iteration shows current weather for current location,
# with as little fluff as possible. VPN screws up location tracking though.
curl "wttr.in?0Q"

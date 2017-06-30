#Script by Enny Jole '18, modified from Sam's original code, copied below
#This script takes a URL surrounded by single quotes placed in a text file and directs Chromium to go to that page
#The extra flags are needed in order to kill the session restore bubble Chromium displays after an improper shutdown
sleep 60; #pauses script so wifi connection can be ensured
file="slideshow.txt"; #variable declaration for text file
SLIDESHOW=$(cat "$file"); #variable declaration for network
echo $SLIDESHOW; #initializes variable
chromium-browser --kiosk --incognito --no-first-run --disable-infobars --disable-session-crashed-bubble $SLIDESHOW; #launches Chrome
#
#
#
#Original code by Sam Boland
#chromium-browser --kiosk --incognito --no-first-run --disable-infobars --disable-session-crashed-bubble 'https://docs.google.com/presentation/d/1q6o9SSufPrq5X7vEJ28gUwQyI1pVcs8ts9eYeJqBkok/pub?start=true&loop=true&delayms=15000'
#This will launch Chromium in kiosk mode, which will hide the user interface
#and only show the actual website.
#
#The website in question must be specified in single quotes, or else
#Bash will interpret the commands after the ?-mark to be further processes.
#I think. I'm actually not sure why. I just know it did not work until I
#put it in single quotes. That's my best guess.

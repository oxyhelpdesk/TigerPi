
chromium-browser -kiosk --incognito --no-first-run --disable-infobars --disable-session-crashed-bubble 'https://docs.google.com/presentation/d/1q6o9SSufPrq5X7vEJ28gUwQyI1pVcs8ts9eYeJqBkok/pub?start=true&loop=true&delayms=15000'
#This will launch Chromium in kiosk mode, which will hide the user interface
#and only show the actual website.

#The website in question must be specified in single quotes, or else
#Bash will interpret the commands after the ?-mark to be further processes.
#I think. I'm actually not sure why. I just know it did not work until I
#put it in single quotes. That's my best guess.

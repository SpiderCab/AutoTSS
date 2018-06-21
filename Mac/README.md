# AutoTSS - Mac

1. Download Python3 from: 

https://www.python.org/ftp/python/3.6.5/python-3.6.5-macosx10.6.pkg

2. Open your terminal and type the follow commands one by one:
- pip3 install --upgrade pip
- pip3 install requests
- pip3 install dataset

3. Download a copy of the Mac release from here:

https://github.com/SpiderCab/AutoTSS/releases

4. Extract that zip into a folder and copy all the contents into a folder called AutoTSS in your User Documents folder.

5. Place your device info in devices.ini replacing mine
      - [Find your device identifier](https://ipsw.me/device-finder)
      - [Find your device ECID](https://www.theiphonewiki.com/wiki/ECID#Getting_the_ECID) (both hex and dec are accepted)
      - Determine if your iOS device requires a board config. iOS devices with multiple available board configs will require you to manually specify a board config. Check [this list](https://www.theiphonewiki.com/wiki/Models) to see if your device is applicable.

6. Open a Terminal and type the following commands:
- cd /Users/$USER/Documents/AutoTSS
- chmod +x autotss.py
- chmod +x run.sh
- cd tsschecker
- chmod +x tsschecker
- cd ..
- ./run.sh

8. IF IT WORKED. Proceed. IF IT DIDN'T WORK, backtrack your steps and make sure you did everything correctly then open a ticket.

9. IF IT WORKED, Let's make it native. Kill your terminal and reopen it. Type the following command:
- nano .bash_profile

10. BE CAREFUL, push your arrow key down all the way that will allow you, hit enter twice and type (make sure the path is correct)
- alias blobs='/Users/$USER/Documents/AutoTSS/run.sh'

11. Hit Control and X, then hit Y, then hit enter.

12. Kill the terminal and open a new one and type
- source ~/.bash_profile

13. Now type the following word in the terminal and hit enter:
- blobs
(IF IT WORKS, CONGRATS. NOW YOU GOT YOUR BLOBS SAVED)

14. Open your documents folder, then autotss. You will now see a folder called "Blobs". Inside is where your blobs are saved.

IF YOU WISH TO AUTOMATE THIS:
1. Install "Mac Homebrew" by running the following command in the terminal:
- /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Once hombrew is installed, type the following command in the terminal:
-  brew install watch

3. Once Watch is installed, type this in the terminal:
watch -n 15 /Users/$USER/Documents/AutoTSS/run.sh

4. Now just minimize your terminal and the autotss will look for new blobs every 10 seconds. Just kill the terminal if you want it to quit.

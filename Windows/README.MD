# AutoTSS - Windows

1. Download and install the latest version of python3:

https://www.python.org/downloads/release/python-365/

2. Download the Windows Release of AutoTSS:

https://github.com/SpiderCab/AutoTSS/releases

3. Extact the downloaded AutoTSS Release to a folder and place it in a save location.

4.  Run install.bat to install requests & dataset

    or
      
    Run in the CMD:
      - pip3 install requests
      - pip3 install dataset



5. Place your device info in devices.ini replacing mine
      - [Find your device identifier](https://ipsw.me/device-finder)
      - [Find your device ECID](https://www.theiphonewiki.com/wiki/ECID#Getting_the_ECID) (both hex and dec are accepted)
      - Determine if your iOS device requires a board config. iOS devices with multiple available board configs will require you to manually specify a board config. Check [this list](https://www.theiphonewiki.com/wiki/Models) to see if your device is applicable.

6. Run start.bat to open the AutoTSS menu
- 1. Manual Mode 
      - Will run AutoTSS and look for new firmware to save blobs for.
- 2. AutoMode 
      - Will autorun AutoTSS every 30 seconds checking for new firmware to save blobs for. 
- 3. Edit Devices.ini
      - Will open the devices.ini in notepad for editing.
- 4. Check For Updates
      - Will display the version and open the release page.


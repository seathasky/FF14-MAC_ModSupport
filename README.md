# FF14 on MAC w/ Full Mod Support via Crossover 21
**Alternative method of running FF14 on Mac + Mod Support.**

**WARNING:**
Performance may vary, and M1 users will see little perfomance gains here, but you can still use this method for Mod support!

------------------------------------------------------------------------------------------------------------

So a little background. I'm on an Intel i7 10700k w/ 5700 XT Hackintosh on latest version of Big Sur and was pretty underwhelmed with the performance the native FF14 mac client was giving. So, I jerry rigged a version through Crossover 21 and am no joke getting twice the FPS with my current setup and also inspired other devs to get some mods working inside Mac. **HUGEEEE Shouts to Marzent, he's been a major part of getting a lot of these mods working! You can check out his github here: https://github.com/marzent**

I posted a video of all mods and plugins working below if you want to see that full mod support is working on Mac:

[![FF14MacCX](https://i.imgur.com/qHmZOoq.png)](https://www.youtube.com/watch?v=SmH-8HdJkQY "Video showcasing mod support on Mac")

------------------------------------------------------------------------------------------------------------

**Setup Guide:**

------------------------------------------------------------------------------------------------------------

**STEP 1:**  Make a new Win 10 x64 bottle by installing x64 dependencies.
------------------------------------------------------------------------------------------------------------
![step1](https://i.imgur.com/sxyQpdb.png)
![step2](https://i.imgur.com/bBt5eGh.png)
![step21](https://i.imgur.com/wygSZWz.png)
------------------------------------------------------------------------------------------------------------
**STEP 2:** Install the rest of the dependencies after bottle is made. 
------------------------------------------------------------------------------------------------------------

"Direct x for modern games" 

"DXVK (builtin)"

*Optional: "Microsoft .NET Framework 4.8" is needed for XIVLauncher


------------------------------------------------------------------------------------------------------------
**STEP 3:** Go to your bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ and open "CXBOTTLE.CONF" with a text editor and add these env variables, the section is at the very bottom of the config file. I highlighted in red in this image what needs to be added:
------------------------------------------------------------------------------------------------------------
![step3](https://i.imgur.com/UtIE40Z.png )
------------------------------------------------------------------------------------------------------------
**STEP 4:** Configure your new bottle with these settings: 
------------------------------------------------------------------------------------------------------------
![step4](https://i.imgur.com/X6y0YQR.png )
------------------------------------------------------------------------------------------------------------
**STEP 5:** Download and install the game fully inside your CX bottle, Link here: https://sqex.to/ffxiv_client_en 
------------------------------------------------------------------------------------------------------------

**(OR)** copy the SE folder from a windows install into your bottle (this makes things faster)

Alternatively you can skip to step 7. and install the game by launching XIVlauncher. **(Recommended but requires more steps)** ------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
**OPTIONAL STEP 6:** Download & Install ACT Parser into your bottle. https://advancedcombattracker.com/download.php (read below for networking/bunny hud support. A script is needed for full functionality.
------------------------------------------------------------------------------------------------------------
**OPTIONAL STEP 7:** Download XIVLauncher manually from this link. Copy it anywhere into your bottle prefix. And run the XIVLauncher.exe https://drive.google.com/drive/folders/1IBq6ngsX2-U6rk5CimuRglgX4WQbW0A6?usp=sharing
------------------------------------------------------------------------------------------------------------
Run the game from the c: drive manually (Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/drive_c/Program86/SquareEnix/FF14/Boot/ffxivboot64.exe) OR

You can make a command inside your bottle by finding the ffxivboot64.exe so you can drag it to your dock.

If you installed XIVLauncher from step 7, you can run XIVLauncher.exe in your bottle and skip most of the installation steps.

------------------------------------------------------------------------------------------------------------
**OPTIONAL STEP 8:** Install this script for full network support in ACT. (Also change network to WinPcap Network in ACT Settings): https://github.com/marzent/ffxiv-on-mac  This script also fixes any network errors if you are having them while installing the game.
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
Read below for full mod support:
------------------------------------------------------------------------------------------------------------

Current issues and extra things to install for full functionality:

------------------------------------------------------------------------------------------------------------

 * in the file FFXIV_BOOT.cfg there is a line BrowserType 1, change that to BrowserType 0. That makes the launcher work as long as you press enter to log in instead of clicking.

 * in the file FFXIV.cfg, there is a line with CutsceneMovieOpening, change that to CutsceneMovieOpening 1. this gets rid of the infinite black screen.

 * ACT requires a custom script to function with networking. You can find it here: https://github.com/marzent/ffxiv-on-mac This also fixes network issue w/ FF14 installation if you have any. (Thanks Marzant)

 * An early build of Bunny Hud can be found here https://github.com/marzent/Bunny-HUD. You will need this for full overlay support in ACT (Thanks Marzant)

 * Dalamud (XIVLauncher) Might require a portable install, meaning folder copied over from a preexisting Windows 10/11 install. If you need help on this, DM me.

 * If you want to use a FF14 windows license instead, add this HideWineExports string to you CX bottles regedit:
![regedit](https://i.imgur.com/LreO7Lv.png)
 hkey_current_user / Software / Wine / add string HideWineExports = 1  
 
 This requires the script above found at marzents github to work (ffxiv-on-mac) (Thanks Marzent)

------------------------------------------------------------------------------------------------------------

Without XIV launcher installed the native launcher has some issues, you have to press enter to play after typing pw or the launcher freaks out, xivlauncher fixes this. but requires more dependencies and work. If you got this far i'm sure you can figure out xivlauncher, it's the easy part , just grab the latest .NET dependencies and it should work after copying the folder from a windows install.

------------------------------------------------------------------------------------------------------------

If I missed anything, holler at me through the issue tracker here, and i'll try and assist. 

Good luck!




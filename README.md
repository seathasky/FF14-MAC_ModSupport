# FF14 on MAC w/ Full Mod Support via Crossover 21
**Alternative method of running FF14 on Mac + Mod Support.**

This requires a legit copy of Crossover 21 or later to work! Cracked versions of CX will actually tank your performance.
Support Codeweavers, it's worth it! https://www.codeweavers.com/

**WARNING:**
Performance may vary, and M1 users have reported that they are doubling fps but using this method has no guarantee!
This guide is a 100% manual install guide. If you need assistance, post on the issue tracker.
------------------------------------------------------------------------------------------------------------

So a little background. I'm on an Intel i7 10700k w/ 5700 XT Hackintosh on latest version of Big Sur and was pretty underwhelmed with the performance the native FF14 mac client was giving. So, I wrapped a fresh FF14 install through Crossover 21 and am getting almost twice the FPS with my current setup. This has inspired other devs to get some mods working inside Mac. **HUGEEEE Shouts to Marzent, he's been a major part of getting a lot of these mods working! You can check out his github here: https://github.com/marzent**

I posted a video of all mods and plugins working below if you want to see that full mod support is working on Mac:

[![FF14MacCX](https://i.imgur.com/qHmZOoq.png)](https://www.youtube.com/watch?v=SmH-8HdJkQY "Video showcasing mod support on Mac")


------------------------------------------------------------------------------------------------------------
**Minimal Setup Guide:** 
------------------------------------------------------------------------------------------------------------
These first 5 steps are for a basic setup without mod support. If you want full mod support continue the guide after Step 5.

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
**STEP 3:** Performance tweaks & FPS display
------------------------------------------------------------------------------------------------------------
Go to your bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ and open "CXBOTTLE.CONF" with a text editor and add these env variables, the section is at the very bottom of the config file. I highlighted in red in this image what needs to be added:

![step3](https://i.imgur.com/UtIE40Z.png )

Copy below:
```json
 "WINEESYNC" = "1"
 "XL_WINEONLINUX" = "true"
 "DXVK_HUD" = "fps"
 "DXVK_FRAME_RATE" = "0"
 "GL_SHADER_DISK_CACHE_SKIP_CLEANUP" = "1"
 "MESA_GLTHREAD" = "1"
 "HARMONY_DEBUG" = "1"
 ```
 
------------------------------------------------------------------------------------------------------------
**STEP 4:** Configure your new bottle with these settings: 
------------------------------------------------------------------------------------------------------------

![step4](https://i.imgur.com/X6y0YQR.png )

------------------------------------------------------------------------------------------------------------
**STEP 5:** Download and install the game fully inside your CX bottle, Link here: https://sqex.to/ffxiv_client_en 
------------------------------------------------------------------------------------------------------------

**(OR)** copy the SE folder from a windows install into your bottle (this makes things faster)

Alternatively you can skip to step 7. and install the game by launching XIVlauncher. **(Recommended but requires more steps)** 

Run the game from the c: drive manually (Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/drive_c/Program86/SquareEnix/FF14/Boot/ffxivboot64.exe) OR

You can make a command inside your bottle by finding the ffxivboot64.exe so you can drag it to your dock.

If you installed XIVLauncher from step 7, you can run XIVLauncher.exe in your bottle and skip most of the installation steps.

This concludes setup guide for minimal install of FF14 in CX21. Continue below for mod support.


------------------------------------------------------------------------------------------------------------
**Continued Setup Guide for Mod Support:** 
------------------------------------------------------------------------------------------------------------
Before you continue any of these next steps, you will need to run this script to patch your Crossover 21. If you do not do this,
mods will not work! Download and install the install script from here: https://github.com/marzent/ffxiv-on-mac

------------------------------------------------------------------------------------------------------------
**STEP 6 - ACT Parser:** 
------------------------------------------------------------------------------------------------------------

Download & Install ACT Parser into your bottle. https://advancedcombattracker.com/download.php 

ACT requires the custom script to function with networking. Downloading and running the script provided above will patch your CX21 bottle and fix networking issues.
 
ACT Networking will only work through WinPcap. Enable this in ACT settings after installing the script above.
![pcap](https://i.imgur.com/YDllprc.png) 

After you install script, download your plugins (EXAMPLE: FFXIV_ACT_PLUGIN.DLL, OVERLAYPLUGIN.DLL, CACTBOTOVERLAY.DLL) and enable Local Overlay here by pressing start:

![lo](https://i.imgur.com/15zBdZj.png) 

Do not add any overlay directly from ACT, you will be using Bunny-HUD for overlays.

An early build of Bunny Hud can be found here https://github.com/marzent/Bunny-HUD. 
 
You will need this for full overlay support in ACT. Sort of like Hudkit on linux but 100x better because it is! You will need this if you want DPS Meters and Cactbot Overlays. 
 
![bunny](https://i.imgur.com/yzYbyBC.png)

 Default ACT overlays are not working, this APP is 100% required! (Thanks Marzant)
 
------------------------------------------------------------------------------------------------------------
**STEP 7 - XIVLauncher and Plugin support**:
------------------------------------------------------------------------------------------------------------
Download & copy the portible XIVlauncher folder anywhere into your bottle prefix. https://drive.google.com/drive/folders/1IBq6ngsX2-U6rk5CimuRglgX4WQbW0A6?usp=sharing 

**(OR)** Download Mac CX Installer here: https://github.com/marzent/ffxiv-on-mac/blob/main/XIVLauncherWine.exe and install into you FF14 bottle.

If you copied XIVlauncher from the folder provided you will need to manually add/run XIVLauncher.exe via command inside your bottle.

If you went with the installer, it will populate your bottle automatically. 
![xivl](https://i.imgur.com/PXiWuph.png!)

------------------------------------------------------------------------------------------------------------
**STEP 8:** - Gshade:
------------------------------------------------------------------------------------------------------------
Install the Windows version Gshade into your FF14 bottle. https://gposers.com/gshade/
Follow the gshade setup and use the prefix from your CX FF14 bottle.

After install, open wine configuration:
![wconf](https://i.imgur.com/oBp3UPL.png!)

------------------------------------------------------------------------------------------------------------
Add these overrides and edit their load orders:


New override for library: d3dcompiler_47 - edit to (native)

![dcom](https://i.imgur.com/BZGFwPw.png!)

New override for library: dxgi - edit to (native, builtin)

![dxgi](https://i.imgur.com/hCykZj8.png!)

------------------------------------------------------------------------------------------------------------
These need to be set prior to running game after installing Gshade.


------------------------------------------------------------------------------------------------------------
**STEP 9 (optional)** - So you want to use your FF14 Windows License instead of the Mac one.
------------------------------------------------------------------------------------------------------------
 
 If you want to use a FF14 windows license instead, add this HideWineExports string to your CX bottles regedit:
![regedit](https://i.imgur.com/LreO7Lv.png)
 hkey_current_user / Software / Wine / add string HideWineExports = 1  

------------------------------------------------------------------------------------------------------------
Troubleshooting:
------------------------------------------------------------------------------------------------------------

Without XIV launcher installed the native launcher has some issues, you have to press enter to play after typing pw or the launcher freaks out, xivlauncher fixes this. but requires more dependencies and work. If you got this far i'm sure you can figure out xivlauncher, it's the easy part, just grab the latest .NET dependencies and it should work after copying the folder from the link I provided above.

If you are using default launcher use these fixes:

Open FFXIV_BOOT.cfg and change these settings "Browser = 1" 

Open FFXIV.cfg and change these settings "CutsceneMovieOpening = 0" 

Both files are in  your FF14 bottle @ drive_c/users/<my username>/My Documents/My Games/FINAL FANTASY XIV - A Realm Reborn/
 
------------------------------------------------------------------------------------------------------------

Alot of mod related issues can be fixed by first installing this script: https://github.com/marzent/ffxiv-on-mac
 
Dalamud plugin not loading on launch? Restart your game and crossover. Sometimes this happens. (No known fix)

------------------------------------------------------------------------------------------------------------

If you feel I've missed anything or run into issue installing, use the issue tracker here, and i'll try and assist. 
 
Good luck!

-Seathasky




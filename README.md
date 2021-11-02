<div align="center"><h2>FF14 on MAC w/ Full Mod Support via Crossover 21:</h2></div>
<div align="center">Alternative method of running FF14 on Mac + Mod Support.</div>

------------------------------------------------------------------------------------------------------------

<div align="center"><h5>Video showcasing full mod support working on FF14 in MacOS:</h5>

[![FF14MacCX](https://i.imgur.com/CUkvquT.png)](https://www.youtube.com/watch?v=rs_lHlIQHqw "Video showcasing mod support on Mac")</div>

------------------------------------------------------------------------------------------------------------

# Table of contents
  
  - [Intro](#intro)
  - [News & Updates](#mac-mod-update-news)
  - [Setup Guide - Read me First | Steps 1 through 3](#setup-guide)
  - [Setup Guide for Mods](#continued-setup-guide-for-mod-support)
  - [Mods - ACT Parser](#step-4---act-parser)
  - [Mods - XIVLauncher, Plugins & Steam Account support](#step-5---xivlauncher-plugins--steam-account-support)
  - [Mods - Gshade](#step-6---gshade)
  - [Mods - Anamnesis (aka) CMTool Mod](#step-7-anamnesis-aka-cmtool-mod)
  - [Using your Windows License Instead on Mac](#step-8-optional---so-you-want-to-use-your-ff14-windows-license-instead-of-the-mac-one)
  - [Troubleshooting](#troubleshooting)

------------------------------------------------------------------------------------------------------------
Intro:
------------------------------------------------------------------------------------------------------------

<h6>This requires a legit copy of Crossover 21 or later to work! Cracked versions of CX will actually tank your performance.
Support Codeweavers, it's worth it! https://www.codeweavers.com/</h6>

<h3>WARNING:
Performance may vary, and M1 users have reported that they are doubling fps, but using this method has no guarantee!
This guide is a 100% manual install guide. If you need assistance, post on the issue tracker. Both Mac and Windows licenses will work but a Windows license is preferable.</h3>

------------------------------------------------------------------------------------------------------------
Mac Mod Update News:
------------------------------------------------------------------------------------------------------------
<strong>November 2, 2021:</strong> 
- `New Crossover crosstie install now default method. Step #'s have changed in process.`   

<strong>November 1, 2021:</strong> 
- `Dalamud plugins are now fixed on Mac and Linux.`   
- <strike>`Temporary issues with Dalamud plugins in XIVLauncher. https://github.com/seathasky/FF14-MAC_ModSupport/issues/5`</strike>
<br>

<strong>October 30, 2021:</strong>
- `FF14 on MAC w/ Full Mod Support Guide via Crossover 21 complete.`

------------------------------------------------------------------------------------------------------------
Setup Guide:
------------------------------------------------------------------------------------------------------------
<h2>STEP 1:</h2>  <h3>Install</h3>

IMPORTANT: If you plan on using mods, you must Download and install the install script from here: https://github.com/marzent/ffxiv-on-mac prior to following anything on this guide. This includes using Dalamud plugins in XIVLauncher. If you just want to play without mods, skip this and continue the steps below.<br><br>
------------------------------------------------------------------------------------------------------------

<h6> Right click & "Save Link as": <a href="https://raw.githubusercontent.com/marzent/ffxiv-on-mac/main/Final%20Fantasy%20XIV%20Online.tie" download>Final Fantasy 14 Online.tie</a> and save to desktop or downloads folder.<br><br>
  

  
 Double click the .tie file you just downloaded and press load:
<p align="center"> 
<img src="https://i.imgur.com/GVpKFwP.png">
</p><br><br>
  
 Press install:
  <p align="center"> 
<img src="https://i.imgur.com/qbv25X3.png">
</p><br><br>
  
 Follow prompts for dependancies and install everything until it finishes, it will take a while to install everything:
<p align="center"> 
<img src="https://i.imgur.com/fs6mm1x.png">
</p><br><br>
  
  Once you get to the end of the Crossover install follow the XIVLauncher install prompts and completely install FF14 through XIVlauncher (Only enable in-game features if you've used Marzents script prior to this, uncheck "Enable in-game features" if you have not installed his script: 
 <p align="center"> 
<img src="https://i.imgur.com/FufmuN7.png">
</p><br><br>
  
 Enter your account information into XIVLauncher and allow XIVLauncher to install everything:
 
<p align="center"> 
<img src="https://i.imgur.com/WQjov2b.png">
</p><br><br>
  
 Once game has completely installed, you can launch XIVLauncher from your new Crossover bottle to start your game or drag the XIVLauncher icon to your Mac OS dock
  <p align="center"> 
<img src="https://i.imgur.com/auSZR0N.png">
</p><br><br>
  
  Continue to step 2 for performance tweaks.
  
  
------------------------------------------------------------------------------------------------------------
(Not reccomended)<br><br>  
Alternatively, you can manually install everything by following the old manual install guide <a href="https://github.com/seathasky/FF14-MAC_ModSupport/blob/main/manual-install.md" manual install>here</a> This guide is for those who want to use the default launcher (Skip this if you used the crosstie install)</h6>

------------------------------------------------------------------------------------------------------------

<h2>STEP 2:</h2>  <h3>Performance tweaks & FPS display</h3> 

------------------------------------------------------------------------------------------------------------

<h6>Go to your new bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ and open "CXBOTTLE.CONF" Here:
  
 
  <p align="center"> 
<img src="https://i.imgur.com/1MVxClc.png">
</p>
  
  
 With a text editor of your choice, add these env variables to the section is at the very bottom of the config file. </h6>

<p align="center">
  <img width="530" height="537" src="https://i.imgur.com/wN48oSn.png">
</p>

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
 
<h2>STEP 3:</h2>  <h3>Configure your new bottle with these settings: </h3>

------------------------------------------------------------------------------------------------------------
<p align="center"> 
<img src="https://i.imgur.com/qZ8UiBK.png">
</p>

This concludes the install guide for minimal setup. Continue to step 4 if you want to use mods.

------------------------------------------------------------------------------------------------------------

<h1>Continued Setup Guide for Mod Support:</h1>

<h3>IMPORTANT!</h3>

<h5>Before you continue any of these next steps, make sure you've patched your Crossover w/ Marzents script. If you do not do this,
most mods will not work!
  <br><br>
Download and install the install script from here: https://github.com/marzent/ffxiv-on-mac
<br><br>
Xivlauncher may break with a FF14 Mac only game license after it updates, though this is already fixed and only needs to be merged back. 
<br><br>
You can read more about Mac license progress here: 

https://github.com/goatcorp/FFXIVQuickLauncher/pull/572 </h5>

------------------------------------------------------------------------------------------------------------
**STEP 4 - ACT Parser:** 
------------------------------------------------------------------------------------------------------------

<h6>Download & Install ACT Parser into your bottle. https://advancedcombattracker.com/download.php <br><br>

ACT requires the custom script "ffxiv-on-mac" and wireshark installed to function with networking. Downloading and running the script, will patch your CX21 bottle and fix networking issues.<br><br>

After installing the "ffxiv-on-mac" script, Install https://github.com/marzent/ffxiv-on-mac/tree/main/ChmodBPF package. <br>
  
Alternatively you can download this from the Wireshark Mac Homebrew page https://formulae.brew.sh/cask/wireshark-chmodbpf<br><br>
  
If one BPF install is not working for you and ACT isnt getting winpcap networking, try the other.
  
------------------------------------------------------------------------------------------------------------ 
ACT Networking will only work through WinPcap. Enable this in ACT settings after installing the script and BPF install above.<br><br>
  
<p align="center"> 
<img src="https://i.imgur.com/TgIrulK.png">
</p><br>
  
To test if networking is working with WinPcap, go fully into game (not login screen) and press "Test Game Connection" you should see this notification pop up in the bottom right corner of your screen. If you do not, you did not install correctly.<br>
  
<p align="center"> 
<img src="https://i.imgur.com/q5jTshM.png">
</p><br>


After you install script and have tested your network in ACT, download your plugins (EXAMPLE: FFXIV_ACT_PLUGIN.DLL, OVERLAYPLUGIN.DLL, CACTBOTOVERLAY.DLL) <br>

<p align="center"> 
<img src="https://i.imgur.com/SARQChz.png">
</p><br>

Once you have your plugins installed, enable Local Overlay here by pressing start:<br><br>

<p align="center"> 
<img src="https://i.imgur.com/15zBdZj.png">
</p><br>


Do not add any overlay directly from ACT, you will be using Bunny-HUD for overlays.<br><br>

An early build of Bunny Hud can be found here https://github.com/marzent/Bunny-HUD. <br><br>
 
You will need this for full overlay support in ACT. Sort of like Hudkit on linux but 100x better because it is! You will need this if you want DPS Meters and Cactbot Overlays. <br><br>

<p align="center"> 
<img src="https://i.imgur.com/yzYbyBC.png">
</p>

<br><br>
 Default ACT overlays are not working, this APP is 100% required!</h6>
 
------------------------------------------------------------------------------------------------------------
**STEP 5 - XIVLauncher, Plugins & Steam Account support**:
------------------------------------------------------------------------------------------------------------
<h6>
Dalamud plugins inside XIVLauncher should work by default if you have patched your Crossover w/ the script.<br><br>
When Square Enix patches FF14, we usually lose plugin support until Dalamud is updated again. This happens on all platiforms.<br><br>
If you have XIVlauncher specific errors, you can issue track here: https://github.com/goatcorp/FFXIVQuickLauncher <br><br>

------------------------------------------------------------------------------------------------------------  
  
If you have a FF14 Steam account, you will need to enable this option in XIVLauncher before you login:</h6>
<p align="center"> 
<img src="https://i.imgur.com/ttUyk5K.png">
</p>

------------------------------------------------------------------------------------------------------------
**STEP 6:** - Gshade:
------------------------------------------------------------------------------------------------------------
<h6>Install the Linux script of Gshade into your FF14 bottle. (It works in Mac too) https://gposers.com/gshade/<br><br>
Follow the gshade setup and use the prefix from your CX FF14 bottle.
<p align="center"> 
<img src="https://i.imgur.com/QCXIT69.png">
</p>  
  
After install, open wine configuration:</h6>
<br><br>
<p align="center"> 
<img src="https://i.imgur.com/oBp3UPL.png">
</p>

------------------------------------------------------------------------------------------------------------
<h6>Add these overrides and edit their load orders:<b5>
<br><br>

New override for library: d3dcompiler_47 - edit to (native)
![dcom](https://i.imgur.com/BZGFwPw.png!)

New override for library: dxgi - edit to (native, builtin)
![dxgi](https://i.imgur.com/hCykZj8.png!)

After these have been overriden, restart crossover. These need to be set prior to running game and after installing Gshade.</h6>
  
------------------------------------------------------------------------------------------------------------
STEP 7: Anamnesis (aka) CMTool Mod
------------------------------------------------------------------------------------------------------------  
<h6>The regular CMTool is not working in Crossover at this time but the CMTool devs are working on a newer version called
Anamnesis. It's still in early beta and there are a ton of bugs, including crashing and UI bugs in Crossover. You are welcome to test it out anyways.<br><br>

 First, make sure you download and install .NET Desktop Runtime 5.0.11+ into your bottle you can find the download here: https://dotnet.microsoft.com/download/dotnet/5.0<br><br>
  
Then download the latest version of Anamnesis here: https://github.com/imchillin/Anamnesis<br><br>
  
  My character with custom green shrek look in /gpose lol
<p align="center">
  <img src="https://i.imgur.com/vPhmOsO.png">
</p>
<br><br>
   
I will not support this mod in the Issue tracker at all, so please dont ask. Use at your own risk :)</h6>
  
------------------------------------------------------------------------------------------------------------
STEP 8: (optional) - So you want to use your FF14 Windows License instead of the Mac one.
------------------------------------------------------------------------------------------------------------
 
 <h6>If you want to use a FF14 windows license instead, run Marzents script https://github.com/marzent/ffxiv-on-mac/ 
   
   it will patch your crossover and you will have to add the following key into your registry via `regedit`:
   <br>
   <br>
   
<p align="center"> 
<img src="https://i.imgur.com/LreO7Lv.png">
</p>
   
 Vice versa, use HideWineExports = 0 to revert to a Mac license  </h6>

------------------------------------------------------------------------------------------------------------
Troubleshooting:
------------------------------------------------------------------------------------------------------------

<h6>So you decided to manually install the game through the old guide with the default launcher? Well, you might run into issues. The native launcher has some issues inside Crossover. You will have to press enter to play after typing your PASSWORD or the launcher freaks out. We reccomend following the main guide as XIVLauncher fixes this.<br><br><br>

If you are using default launcher use these fixes:
<br><br>
Open FFXIV_BOOT.cfg and change these settings "Browser = 1"  this fixes the frozen launcher screen on default launcher. Image below:
 <p align="center"> 
<img src="https://i.imgur.com/VszPBaN.png">
</p>
 
------------------------------------------------------------------------------------------------------------
Open FFXIV.cfg and change these settings "CutsceneMovieOpening = 0". This fixes infinite black screen in game during cutscenes. This is also a reccomened fix while using XIVLauncher.
   <p align="center"> 
<img src="https://i.imgur.com/knT31A2.png">
</p>
   

Both files are in  your FF14 bottle @ drive_c/users/<my username>/My Documents/My Games/FINAL FANTASY XIV - A Realm Reborn/ </h6>
 
------------------------------------------------------------------------------------------------------------

<h6>Alot of mod related issues can be fixed by first installing this script: https://github.com/marzent/ffxiv-on-mac
<br>
<br>
 
Dalamud plugins not loading on launch? Restart your game and crossover. Sometimes this happens. (No known fix)<br><br>
  
External hardrive? Setting up XIVlauncher/FF14 through Crossover 21 on an external harddrive will only work if you symlink. More info here: https://github.com/seathasky/FF14-MAC_ModSupport/issues/4 <br><br>  
 
Mods have been tested and working on latest Mac OS Catalina and Mac OS Big Sur.<br><br>
 
Mac OS Monterey support is unknown at this time.</h6>

------------------------------------------------------------------------------------------------------------
  
<h6>So a little background. I'm on an Intel i7 10700k w/ 5700 XT Hackintosh on latest version of Big Sur and was pretty underwhelmed with the performance the native FF14 mac client was giving. So, I wrapped a fresh FF14 install through Crossover 21 and am getting almost twice the FPS with my current setup. This has inspired other devs to get some mods working inside Mac. </h6><h5>Big shout to Marzent, he's been a major part of getting a lot of these mods working and also my co-collaborater on this project! You can check out his github here: https://github.com/marzent</h5><br><br>  

If you feel I've missed anything or run into issue installing, use the issue tracker here, and i'll try and assist. 
 
Good luck!!

  <h4>-Seathasky</h4>




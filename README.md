# FF14 on MAC w/ Full Mod Support via Crossover 21
**Alternative method of running FF14 on Mac + Mod Support.**
------------------------------------------------------------------------------------------------------------

<h6>This requires a legit copy of Crossover 21 or later to work! Cracked versions of CX will actually tank your performance.
Support Codeweavers, it's worth it! https://www.codeweavers.com/</h6>

<h3>WARNING:
Performance may vary, and M1 users have reported that they are doubling fps, but using this method has no guarantee!
This guide is a 100% manual install guide. If you need assistance, post on the issue tracker. Some steps may require a FF14 Windows game license to work fully.</h3>

------------------------------------------------------------------------------------------------------------
Mac Mod Update News:
------------------------------------------------------------------------------------------------------------

<strong>November 1, 2021:</strong> 
- `Dalamud plugins are now fixed on Mac and Linux.`   
- <strike>`Temporary issues with Dalamud plugins in XIVLauncher. https://github.com/seathasky/FF14-MAC_ModSupport/issues/5`</strike>
<br>

<strong>October 30, 2021:</strong>
- `FF14 on MAC w/ Full Mod Support Guide via Crossover 21 complete.`

------------------------------------------------------------------------------------------------------------

<h6>So a little background. I'm on an Intel i7 10700k w/ 5700 XT Hackintosh on latest version of Big Sur and was pretty underwhelmed with the performance the native FF14 mac client was giving. So, I wrapped a fresh FF14 install through Crossover 21 and am getting almost twice the FPS with my current setup. This has inspired other devs to get some mods working inside Mac. </h6><h5>Big shout to Marzent, he's been a major part of getting a lot of these mods working and also my co-collaborater on this project! You can check out his github here: https://github.com/marzent</h5>

------------------------------------------------------------------------------------------------------------
<div align="center"><h5>Video showcasing full mod support working on FF14 in MacOS:</h5>

[![FF14MacCX](https://i.imgur.com/CUkvquT.png)](https://www.youtube.com/watch?v=rs_lHlIQHqw "Video showcasing mod support on Mac")</div>


------------------------------------------------------------------------------------------------------------
**Minimal Setup Guide:** 

<h6>These first 5 steps are for a basic setup without mod support. If you want full mod support, continue reading the guide past Step 5. If you don't move past step 5, you will only be able to use a FF14 Mac game license. If you only have a windows game license, or want full mod support, you must proceed past step 5.</h6>

<h2>STEP 1:</h2>  
<h3>Make a new Win 10 x64 bottle by installing x64 dependencies.</h3>

------------------------------------------------------------------------------------------------------------

<p align="center"> 
<img src="https://i.imgur.com/Q0yGa3G.png">
<p align="center"> 
<img src="https://i.imgur.com/Kr1cfdh.png">
<p align="center"> 
<img src="https://i.imgur.com/ljIA7V5.png">
</p>


<h2>STEP 2:</h2>  <h3>Install the rest of the dependencies after bottle is made</h3>

------------------------------------------------------------------------------------------------------------
<h6>
"Direct-X for Modern Games" 

"DXVK (builtin)"

Optional: "Microsoft .NET Framework 4.8" is needed for XIVLauncher</h6>


<h2>STEP 3:</h2>  <h3>Performance tweaks & FPS display</h3>

------------------------------------------------------------------------------------------------------------

<h6>Go to your bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ and open "CXBOTTLE.CONF" Here:
  
 
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
 
<h2>STEP 4:</h2>  <h3>Configure your new bottle with these settings: </h3>

------------------------------------------------------------------------------------------------------------
<p align="center"> 
<img src="https://i.imgur.com/qZ8UiBK.png">
</p>

<h2>STEP 5:</h2>  <h3>Download and install the game fully inside your CX bottle, Link here: https://sqex.to/ffxiv_client_en  </h3>

------------------------------------------------------------------------------------------------------------

<h6>When installing ffxivsetup.exe, ensure that CX21 is set to the "Unlisted application" template:

![step5](https://i.imgur.com/MTuACnt.png )

The official "Final Fantasy XIV" template is broken and will break the bottle if you try to use it.

**(OR)** copy the SE folder from a windows install into your bottle (this makes things faster)

Alternatively you can skip to step 7. and install the game by launching XIVlauncher. **(Recommended but requires more steps)** 

Run the game from the c: drive manually (Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/drive_c/Program86/SquareEnix/FF14/Boot/ffxivboot64.exe) OR

You can make a command inside your bottle by finding the ffxivboot64.exe so you can drag it to your dock.

If you installed XIVLauncher from step 7, you can run XIVLauncher.exe in your bottle and skip most of the installation steps.

This concludes setup guide for minimal install of FF14 in CX21. Continue below for mod support.</h6>

------------------------------------------------------------------------------------------------------------

<h1>Continued Setup Guide for Mod Support:</h1>

<h3>IMPORTANT!</h3>

<h5>Before you continue any of these next steps, you will need to run this script to patch your Crossover 21. If you do not do this,
most mods will not work!
  <br><br>
This script also is currently only supported for those with a FF14 Windows game license. 
<br><br>
Download and install the install script from here: https://github.com/marzent/ffxiv-on-mac
<br><br>
Xivlauncher plugin support may require a FF14 Windows game license due to how it authenticates. 
<br><br>
You can read more about Mac license progress here: 

https://github.com/goatcorp/FFXIVQuickLauncher/pull/572 </h5>

------------------------------------------------------------------------------------------------------------
**STEP 6 - ACT Parser:** 
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
**STEP 7 - XIVLauncher, Plugins & Steam Account support**:
------------------------------------------------------------------------------------------------------------
<h6>Download & copy the portible XIVlauncher folder anywhere into your bottle prefix: 
<br><br>
https://drive.google.com/drive/folders/1IBq6ngsX2-U6rk5CimuRglgX4WQbW0A6?usp=sharing 
<br><br>
 (OR)
<br><br>
Download Mac CX Installer here: https://github.com/marzent/ffxiv-on-mac/blob/main/XIVLauncherWine.exe and install into you FF14 bottle.
  <br><br>
If you copied XIVlauncher from the folder provided you will need to manually add/run XIVLauncher.exe via command inside your bottle.
<br><br>
If you went with the installer, it will populate your bottle automatically.
<br><br>
<p align="center"> 
<img src="https://i.imgur.com/PXiWuph.png">
</p>
<br><br>
If you have a FF14 Steam account, you will need to enable this option in XIVLauncher before you login:</h6>
<p align="center"> 
<img src="https://i.imgur.com/ttUyk5K.png">
</p>


------------------------------------------------------------------------------------------------------------
**STEP 8:** - Gshade:
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
STEP 9: Anamnesis (aka) CMTool Mod
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
STEP 10: (optional) - So you want to use your FF14 Windows License instead of the Mac one.
------------------------------------------------------------------------------------------------------------
 
 <h6>If you want to use a FF14 windows license instead, run Marzents script https://github.com/marzent/ffxiv-on-mac/ 
   
   it will patch your crossover and also add these changes to regedit:
   <br>
   <br>
   
<p align="center"> 
<img src="https://i.imgur.com/LreO7Lv.png">
</p>
   
 Vice versa, use HideWineExports = 0 to revert to a Mac license (but dont expect mod support on Mac license with this)  </h6>

------------------------------------------------------------------------------------------------------------
Troubleshooting:
------------------------------------------------------------------------------------------------------------

<h6>Without XIV launcher installed the native launcher has some issues, you have to press enter to play after typing pw or the launcher freaks out, xivlauncher fixes this. but requires more dependencies and work. If you got this far i'm sure you can figure out xivlauncher, it's the easy part, just grab the latest .NET dependencies and it should work after copying the folder from the link I provided above.<br><br><br>

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
  
Setting up XIVlauncher/FF14 through Crossover 21 will only work on your unless you symlink. More info here: https://github.com/seathasky/FF14-MAC_ModSupport/issues/4 <br><br>  
 
Mods have been tested and working on latest Mac OS Catalina and Mac OS Big Sur.<br><br>
 
Mac OS Monterey support is unknown at this time.</h6>

------------------------------------------------------------------------------------------------------------

If you feel I've missed anything or run into issue installing, use the issue tracker here, and i'll try and assist. 
 
Good luck!!

  <h4>-Seathasky</h4>




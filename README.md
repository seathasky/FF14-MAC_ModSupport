<p align="center"> <a href="https://github.com/seathasky/FF14-MAC_ModSupport" title="FF14-Mac_ModSupport">
<img src="https://i.imgur.com/2IgiL4D.png">
</p>
<p align="center"> <a href="https://github.com/seathasky/FF14-MAC_ModSupport" title="FF14-Mac_ModSupport">
<img src="https://i.imgur.com/WI8Kpgj.png">
</p></a>

 ---
<p align="center"> <a href="https://github.com/seathasky/FF14-MAC_ModSupport/issues/new/choose" title="new issue"><img src="https://img.shields.io/badge/Need%20Help%3F-Click%20Here-red?style=for-the-badge" alt="New Issues"></a> 
<div align="center"> <h6>Or check our issue trackers first:</h6></div>
<p align="center"> <a href="https://github.com/seathasky/FF14-MAC_ModSupport/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/seathasky/FF14-MAC_ModSupport" alt="Open Issues"></a>  <a href="https://github.com/seathasky/FF14-MAC_ModSupport/issues?q=is%3Aissue+is%3Aclosed" title="Closed Issues"><img src="https://img.shields.io/github/issues-closed-raw/seathasky/FF14-MAC_ModSupport?style=flat" alt="Closed Issues"></a> 
</p>

------------------------------------------------------------------------------------------------------------
Updates & News:
------------------------------------------------------------------------------------------------------------

<strong>November 11, 2021:</strong>

- <img src="https://i.imgur.com/MkD6117.gif"> Added DXVK update, and Public testing to performance section

-  &nbsp;&nbsp;⚠️&nbsp;&nbsp;&nbsp; If you own a FF14 Mac license and cannot login after XIVLauncher update
  please go [here](https://github.com/seathasky/FF14-MAC_ModSupport/issues/15) to fix

<details> 
  <summary>Show older items</summary>
 
<strong>November 10, 2021:</strong>
- Seperate branch of ffxiv-on-mac patching now available for m1 users. 
 
<strong>November 7, 2021:</strong>
- New easy install.command method. MoltenVK update method now included in patcher for even more performance.

<strong>November 2, 2021:</strong> 
- New Crossover crosstie install now default method. Step #'s have changed in process.  

<strong>November 1, 2021:</strong> 
- Dalamud plugins are now fixed on Mac and Linux.   
- <strike>Temporary issues with Dalamud plugins in XIVLauncher. https://github.com/seathasky/FF14-MAC_ModSupport/issues/5</strike>

<strong>October 30, 2021:</strong>
- FF14 on MAC w/ Full Mod Support Guide via Crossover 21 complete.
</details>


------------------------------------------------------------------------------------------------------------

# Table of contents
  
  - [Setup Guide - Read me First | Step 1 and 2](#setup-guide)
  - [Setup Guide for Mods](#continued-setup-guide-for-mod-support)
  - [Mods - ACT Parser](#step-3---act-parser)
  - [Mods - XIVLauncher, Plugins & Steam Account support](#step-4---xivlauncher-plugins--steam-account-support)
  - [Mods - Gshade](#step-5---gshade)
  - [Mods - Anamnesis (aka) CMTool Mod](#step-6-anamnesis-aka-cmtool-mod)
  - [Using your Windows License Instead on Mac](#step-7-optional---so-you-want-to-use-your-ff14-windows-license-instead-of-the-mac-one)
  - [Troubleshooting](#troubleshooting)

---

<div align="center"><h6>Video showcase:</h6>

[![FF14MacCX](https://media3.giphy.com/media/jkvOjP18NQuER1J3d7/giphy.gif?cid=790b7611c4e32d08b041ec85857206ff1cc2d41844a0e1f5&rid=giphy.gif&ct=g)](https://www.youtube.com/watch?v=rs_lHlIQHqw "Video showcasing mod support on Mac")</div>


------------------------------------------------------------------------------------------------------------
Setup Guide:
------------------------------------------------------------------------------------------------------------
<h2>STEP 1:</h2> 
<div align="center"><h6> Clone <a href="https://github.com/marzent/ffxiv-on-mac">ffxiv-on-mac</a> or download the zip <a href="https://github.com/marzent/ffxiv-on-mac/archive/refs/heads/main.zip"> here</a> </div>
  

<div align="center">
<h6> Double click the `install.command` file inside the folder you just downloaded<br> and follow the instructions inside the Terminal window:
  <p align="center"> <br><br>
<img src="https://imgur.com/fuGBZn0.png"><br><br>
</p>
  
 Once it finishes press load in the CrossOver window that pops up:
<p align="center"> 
<img src="https://i.imgur.com/GVpKFwP.png">
</p>
  Press install:
  <p align="center"> 
<img src="https://i.imgur.com/qbv25X3.png">
</p><br><br>
  
 Follow prompts for dependancies and install everything until it finishes, it will take a while to install everything:
<p align="center"> 
<img src="https://i.imgur.com/fs6mm1x.png">
</p><br><br>
  
  Once you get to the end of the Crossover install follow the XIVLauncher install prompts and completely install FF14 through XIVlauncher. Uncheck "Enable in-game features" if you have not patched for XIVLauncher injection earlier.
 <p align="center"> 
<img src="https://i.imgur.com/FufmuN7.png">
</p>
 Enter your account information into XIVLauncher and allow XIVLauncher to install everything:
 <br><br>
<p align="center"> 
<img src="https://i.imgur.com/WQjov2b.png">
</p><br>
  Once game has completely installed, you can launch XIVLauncher from your new Crossover bottle to 
 start your game or drag the XIVLauncher icon to your Mac OS dock<br><br>
  <br>
  <p align="center"> 
<img src="https://i.imgur.com/auSZR0N.png">
  </p><br><br></h6>
  
  Continue to step 2 for performance tweaks.</div><br>
  
 <details> 
  <summary>Manual install method</summary>
  
------------------------------------------------------------------------------------------------------------
  
**(NOT RECOMMENDED)**<br>
</h6>Alternatively, you can manually install with our depreciated guide by following the old manual install guide <a href="https://github.com/seathasky/FF14-MAC_ModSupport/blob/main/manual-install.md" manual install>here</a> This guide is for those who want to use the default launcher</h6>

------------------------------------------------------------------------------------------------------------
 
 </details>


<h2>STEP 2:</h2>  <h3>Performance tweaks & FPS display</h3>
<h5> Performance may vary, and M1 users have reported that they are doubling fps, but using this method has no guarantee... <br>
Cracked versions of CrossOver can actually tank your performace, support <a href="https://www.codeweavers.com">CodeWeavers</a> it's worth it!
 </h5>

<div align="center">
<h6>Configure your new bottle with these settings: </h6>
 </div>

<p align="center"> 
<img src="https://i.imgur.com/qZ8UiBK.png">
</p>

<div align="center">
<h6>Go to your new bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ <br>and open "CXBOTTLE.CONF" Here:<br>
  <br>
  (Press Command+Shift+Dot inside USERNAME folder to unhide "Library" folder)
  
 
  <p align="center"> 
<img src="https://i.imgur.com/1MVxClc.png">
</p>
  
  
 With a text editor of your choice, add these env variables to the section is at the very bottom of the config file. </h6>

<p align="center">
  <img width="530" height="537" src="https://i.imgur.com/wN48oSn.png">
</p>

Copy below:</div>
```json
 "GL_SHADER_DISK_CACHE_SKIP_CLEANUP" = "1"
 "MVK_CONFIG_FAST_MATH_ENABLED" = "1"
 "HARMONY_DEBUG" = "1"
 ```
 
 Additionaly if you want to see some extra stats during gameplay set `DXVK_HUD` to the [options](https://github.com/doitsujin/dxvk#hud) you would like to see, for instance:
 ```json
 "DXVK_HUD" = "fps,compiler"
 ```
 
 <h3>Upgrading DXVK</h3>
 
1. Grab the latest dxvk build for mac from <a href=https://github.com/marzent/dxvk/releases> here </a> 
2. Extract the zip file and copy the contents of the `x64` folder into the `windows/system32` folder of your bottle and overwrite all files if prompted.
3. When starting the game with a full `DXVK_HUD` it should look sth like this now:  
 <p align="center">
  <img src="https://imgur.com/xIJ6Jgo.png">
</p>
<div align="center">
<h6>
 If you want to revert to stock Crossover DXVK just uncheck and check the DXVK Backend for D3D11 option of your bottle. </h6></div>
 
 ---
 <h2>ADVANCED USERS</h2>
 
 <h3>Bleeding Edge MoltenVK Builds</h3>
<div align="left"> The very latest MoltenVK builds for public testing can be found <a href="https://github.com/seathasky/FF14-MAC_ModSupport/tree/main/Public%20Testing">here</a> in our public testing section. Report any issues in our issue tracker if you decide to use these.

</div>

------------------------------------------------------------------------------------------------------------
<div align="center"><h2>This concludes the install guide for minimal setup. If you're using a windows license without mods, skip to
 <a href="https://github.com/seathasky/FF14-MAC_ModSupport#step-7-optional---so-you-want-to-use-your-ff14-windows-license-instead-of-the-mac-one">Step 7</a>,<br> otherwise continue guide for mod support.</h2></div>
<br>

------------------------------------------------------------------------------------------------------------
<h1>Continued Setup Guide for Mod Support:</h1>

<h3>IMPORTANT!</h3>

<h5>Before you continue any of these next steps, make sure you've patched your Crossover.
If you skipped steps in the "ffxiv-on-mac" patcher, most mods will not work! Re-run the patcher and respond "y" to everything. 
(You can skip the crosstie again obviously)
  <br><br>

Mods have been tested and working on latest macOS Catalina, Big Sur and Monterey. Older versions of macOS are not supported!
 <br><br>
Xivlauncher may break with a FF14 Mac only game license after it updates, though this is already fixed and only needs to be merged back. 
<br><br>
You can read more about Mac license progress [here](https://github.com/goatcorp/FFXIVQuickLauncher/pull/572) </h5>

------------------------------------------------------------------------------------------------------------
**STEP 3 - ACT Parser:**
------------------------------------------------------------------------------------------------------------

<div align="center"><h6>Download & Install ACT Parser into your bottle. https://advancedcombattracker.com/download.php <br><br>

ACT requires wireshark installed to function with networking. <br> Make sure you said "y" to installing Chmodbpf when you patched.
  
Alternatively you can download this from the Wireshark Mac Homebrew page https://formulae.brew.sh/cask/wireshark-chmodbpf<br><br>
  
------------------------------------------------------------------------------------------------------------ 
ACT Networking will only work through WinPcap. Enable this in ACT settings:<br><br>
  
<p align="center"> 
<img src="https://i.imgur.com/TgIrulK.png">
</p><br>
  
To test if networking is working with WinPcap, go fully into game (not login screen) and press "Test Game Connection" you should see this notification pop up in the bottom right corner of your screen. If you do not, you did not install correctly.<br>
  
<p align="center"> 
<img src="https://i.imgur.com/q5jTshM.png">
</p><br>


After you have tested your network in ACT, download your plugins <br>(EXAMPLE: FFXIV_ACT_PLUGIN.DLL, OVERLAYPLUGIN.DLL, CACTBOTOVERLAY.DLL) <br>

<p align="center"> 
<img src="https://i.imgur.com/SARQChz.png">
</p><br>

Once you have your plugins installed, enable Local Overlay here by pressing start:<br><br>

<p align="center"> 
<img src="https://i.imgur.com/15zBdZj.png">
</p><br>


Do not add any overlay directly from ACT, you will be using Bunny-HUD for overlays.<br><br>

An early build of Bunny Hud can be found here https://github.com/marzent/Bunny-HUD. <br><br>
 
You will need this for full overlay support in ACT. Sort of like Hudkit on linux but 100x better because it is!<br> You will need this if you want DPS Meters and Cactbot Overlays. <br><br>

<p align="center"> 
<img src="https://i.imgur.com/yzYbyBC.png">
</p>

<br><br>
 Default ACT overlays are not working, this APP is 100% required!</h6></div>
 
------------------------------------------------------------------------------------------------------------
**STEP 4 - XIVLauncher, Plugins & Steam Account support**:
------------------------------------------------------------------------------------------------------------
<div align="center"><h6>
Dalamud plugins inside XIVLauncher should work by default if you have patched for XIVLauncher injection.<br><br>
When Square Enix patches FF14, we usually lose plugin support until Dalamud is updated again. This happens on all platiforms.<br><br>
If you have XIVlauncher specific errors, you can issue track here: https://github.com/goatcorp/FFXIVQuickLauncher <br><br>

------------------------------------------------------------------------------------------------------------  
  
If you have a FF14 Steam account, you will need to enable this option in XIVLauncher before you login:</h6>
<p align="center"> 
<img src="https://i.imgur.com/ttUyk5K.png">
</p></div>

------------------------------------------------------------------------------------------------------------
**STEP 5:** - Gshade:
------------------------------------------------------------------------------------------------------------
<div align="center">IMPORTANT: A minority of gshade shaders will tank your performance. Avoid using the 2 clarity presets.</div>
<div align="center"><h6>Install the Linux script of Gshade into your FF14 bottle. (It works in Mac too) https://gposers.com/gshade/<br><br>
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
  <p align="center"> 
<img src="https://i.imgur.com/BZGFwPw.png">
</p>

New override for library: dxgi - edit to (native, builtin)
<p align="center"> 
<img src="https://i.imgur.com/hCykZj8.png">
</p>

After these have been overridden, restart crossover. These need to be set prior to running game and after installing Gshade.</h6></div>
  
------------------------------------------------------------------------------------------------------------
STEP 6: Anamnesis (aka) CMTool Mod
------------------------------------------------------------------------------------------------------------  
<div align="center"><h6>The regular CMTool is not working in Crossover at this time but the CMTool devs are working on a newer version called
Anamnesis. It's still in early beta and there are a ton of bugs, including crashing and UI bugs in Crossover. You are welcome to test it out anyways.<br><br>

 First, make sure you download and install .NET Desktop Runtime 5.0.11+ into your bottle you can find the download here: https://dotnet.microsoft.com/download/dotnet/5.0<br><br>
  
Then download the latest version of Anamnesis here: https://github.com/imchillin/Anamnesis<br><br>
  
 Seathasky's character with custom green shrek look in /gpose
<p align="center">
  <img src="https://i.imgur.com/vPhmOsO.png">
</p>
<br><br>
   
We will not support this mod in the Issue tracker at all, so please dont ask. Use at your own risk :)</h6></div>
  
------------------------------------------------------------------------------------------------------------
STEP 7: (optional) - So you want to use your FF14 Windows License instead of the Mac one.
------------------------------------------------------------------------------------------------------------
 
 <div align="center"><h6>If you want to use a FF14 windows license instead, make sure you patched for it.
   
   To make windows license active, add the following key into your registry via `regedit`:
   <br>
   <br>
   
<p align="center"> 
<img src="https://i.imgur.com/LreO7Lv.png">
</p>
   
   Vice versa, use HideWineExports = 0 to revert to a Mac license  </h6></div>

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
  
Open FFXIV.cfg and change these settings "CutsceneMovieOpening = 1". This fixes infinite black screen in game during cutscenes. This is also a reccomened fix while using XIVLauncher.
   <p align="center"> 
<img src="https://i.imgur.com/knT31A2.png">
</p>
   

Both files are in `/Users/<username>/Documents/My Games/FINAL FANTASY XIV - A Realm Reborn/` </h6>

------------------------------------------------------------------------------------------------------------  
  
<h6>If you are using a windows license within crossover, make sure to turn OFF HBAO. Leaving this on will cause wierd black textures.</h6>
  <br>
  
   <p align="center"> 
<img src="https://i.imgur.com/vGz4jvb.png">
</p>
   
 
------------------------------------------------------------------------------------------------------------

<h6>A lot of mod related issues can be fixed by first saying "y" to all the steps while patching with <a href="https://github.com/marzent/ffxiv-on-mac/archive/refs/heads/main.zip">ffxiv-on-mac</a> <br><br> 
Dalamud plugins not loading on launch? Restart your game and crossover. Sometimes this happens. (No known fix)<br><br>
During injection of Dalamud plugins, your game may freeze. This is normal on Mac/Linux clients.<br><br>
External hardrive? Setting up XIVlauncher/FF14 through Crossover 21 on an external harddrive will only work if you symlink. More info here: https://github.com/seathasky/FF14-MAC_ModSupport/issues/4 <br><br>  </h6>

------------------------------------------------------------------------------------------------------------
  
<h6>If you feel we've missed anything or run into issue installing, use the issue tracker here, and we'll try and assist you the best we can. 
  Good luck!!</h6>

---

  
   <b>Seathasky</b> (Guide Author, Support) <br>
  <p align="left"> <a href="https://github.com/seathasky/" title="Seathasky">
    <img width="90" height="90" src="https://i.imgur.com/eJcFs2U.jpg"></a>
</p>
    

  <b>Marzent</b> (Head Developer, Support) 
<p align="left"> <a href="https://github.com/marzent" title="Marzent">
  <img width="90" height="90" src="https://i.imgur.com/t4JeLLA.png"></a>
</p>      
 
  
------------------------------------------------------------------------------------------------------------  
  
[Return to Table of Contents](#table-of-contents)



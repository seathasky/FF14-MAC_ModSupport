This guide is for those who want to setup FF14 manually through Crossover 21 without the Crosstie.

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

The official "Final Fantasy XIV" template is broken and will break the bottle if you try to use it.<br><br>

**(OR)** copy the SE folder from a windows install into your bottle (this makes things faster)<br><br>

  
Running the game:
------------------------------------------------------------------------------------------------------------

<h6>Run the game from the c: drive manually (Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/drive_c/Program86/SquareEnix/FF14/Boot/ffxivboot64.exe) <br> <br>
  
  OR

You can make a command inside your bottle by finding the ffxivboot64.exe so you can drag it to your dock.<br><br>

If you want to use XIVLauncher instead, follow the main guide. <br><br>
  
---
  
The default FF14 launcher has some issues, go to our troubleshooting section for help: https://github.com/seathasky/FF14-MAC_ModSupport#troubleshooting
  
---

This concludes the manual setup guide for minimal install of default FF14 launcher in CX21.</h6>

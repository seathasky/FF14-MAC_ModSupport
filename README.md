# FF14 on MAC w/ Full Mod Support via Crossover 21
Alternative method of running FF14 on Mac + Mod Support.

WARNING: Performance may vary, and M1 users will see little perfomance gains here, but you can still use this method for Mod support!

=======================================================================

So a little background. I'm on an Intel i7 10700k w/ 5700 XT Hackintosh on latest version of Big Sur and was pretty underwhelmed with the performance the native FF14 mac client was giving. So, I jerry rigged a version through Crossover 21 and am no joke getting twice the FPS with my current setup and also inspired other devs to get some mods working inside Mac.

I posted a video of all mods and plugins working below if you want to see that full mod support is working on Mac:

https://www.reddit.com/r/macgaming/comments/qi90p1/ff14_on_mac_os_hackintosh_w_full_mod_support_in/

https://drive.google.com/uc?export=download&id=1t5QbEaKggCOV4byq0myXTR1YmluocyM7

=======================================================================

Setup Guide here:

=======================================================================

Make a new Win 10 x64 bottle by installing x64 dependencies.

1: https://imgur.com/a/8H2RZtA

2: https://imgur.com/a/ke5alqd + https://imgur.com/a/TmEFH83

then repeat 2, by installing direct x for modern games, dxvk (builtin), and the ffxivsetup.exe as a bare minimum.

3: Go to your bottle folder @ Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/ and open "CXBOTTLE.CONF" with a text editor and add these env variables, the section is at the very bottom of the config file. I highlighted in red in this image what needs to be added: https://imgur.com/a/1LJaaTe

4: Download the game fully inside your CX bottle, (or copy the SE folder from a windows install (this makes things faster) and make sure to enable these settings after everything has been installed. https://imgur.com/a/Shvja28 Alternative you can skip to step 6. and install the game this way as well by launching XIVlauncher.

OPTIONAL: 5: Download & Install ACT Parser into your bottle. https://advancedcombattracker.com/download.php (read below for networking/bunny hud support. A script is needed for full functionality.

OPTIONAL: 6. Download XIVLauncher manually from this link. Copy it anywhere into your bottle prefix. And run the XIVLauncher.exe https://drive.google.com/drive/folders/1IBq6ngsX2-U6rk5CimuRglgX4WQbW0A6?usp=sharing

Run the game from the c: drive manually (Users/USERNAME/Library/Application Support/Crossover/Bottles/YOURBOTTLENAME/drive_c/Program86/SquareEnix/FF14/Boot/ffxivboot64.exe) OR

You can make a command inside your bottle by finding the ffxivboot64.exe so you can drag it to your dock.

If you installed XIVLauncher from step 6, you can run XIVLauncher.exe in your bottle and skip most of the installation steps.

Read below for full mod support:

=======================================================================

Current issues and extra things to install for full functionality:

=======================================================================

    in the file FFXIV_BOOT.cfg there is a line BrowserType 1, change that to BrowserType 0. That makes the launcher work as long as you press enter to log in instead of clicking.

    in the file FFXIV.cfg, there is a line with CutsceneMovieOpening, change that to CutsceneMovieOpening 1. this gets rid of the infinite black screen.

    ACT requires a custom script to function with networking. You can find it here: https://github.com/marzent/ffxiv-on-mac (Thanks Marzant)

    An early build of Bunny Hud can be found here https://github.com/marzent/Bunny-HUD. You will need this for full overlay support in ACT (Thanks Marzant)

    Dalamud (XIVLauncher) Might require a portable install, meaning folder copied over from a preexisting Windows 10/11 install. If you need help on this, DM me.

    If you want to use a FF14 windows license instead, add this HideWineExports string to you CX bottles regedit https://imgur.com/a/8OVPKED | hkey_current_user / Software / Wine / add string HideWineExports = 1 | This requires the script above found at marzents github to work (ffxiv-on-mac) (Thanks Marzent)

=======================================================================

Without XIV launcher installed the native launcher has some issues, you have to press enter to play after typing pw or the launcher freaks out, xivlauncher fixes this. but requires more dependencies and work. If you got this far i'm sure you can figure out xivlauncher, it's the easy part , just grab the latest .NET dependencies and it should work after copying the folder from a windows install.

=======================================================================

If I missed anything, holler at me or if you're having issues, maybe I can help. I've set it up a few times now to make sure it works!

Good luck!

HUGEEEE Shouts to Marzent, he's been a major part of getting a lot of these mods working! You can check out his github here: https://github.com/marzent

This Guide has been Updated: 10-30-2021

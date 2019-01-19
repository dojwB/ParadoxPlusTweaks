# Paradox+ Tweaks with Unity Installer
Module that contains fixes for various problems and some magic for Snapdragon 820/821  devices on Android 8, 8.1 and 9. Aims to make device feel better with audio, video and performance tweaks.

Other devs are allowed to include this tweaks in their kernel or ROM only with proper credits or else those files will be removed.

## Features
* Supports multiple devices
* Adds files needed for ARCore
* Adds new frameworks that may needed for 3rd party apps
* Modifies thermal configs to delay thermal throttling **Only on fully supported devices*
* Patches audio policies for better audio effect compatibility
* Adds goodies from Nexus and Pixel devices
* And more...

#### Supported Devices
* Xiaomi Mi 5 **
* Xiaomi Mi 5s **
* Xiaomi Mi 5s Plus **
* *(Partially)* Other Snapdragon 820/821 devices

** *Supports MIUI Oreo, AOSP Oreo and AOSP Pie*

## FAQ
* **Is this gonna work with XYZ rom?**
I don't know, maybe try it out and give me a heads-up too.

* **How do I exit the bootlogo hell?**
Easy. Boot to recovery and flash the zip again.

* **Can you fix XYZ problem?**
If you find a problem that's not randomly occurred please give me detailed device information and tell how to reproduce that problem.


## Changelog
Build 52 (Begonia)
* Dynamic installer that enables MIUI and AOSP Oreo support
* Universal rollout
* Minor tweaks/changes/fixes
* Upgraded to Unity 3.1

Build 18 (Astrantia 2)
* LMK tweaks removed.
* Upgraded to Unity 2.2

Build 16 (Astrantia)
* General tweaks for first ever public release.

Build 14 (Aster 4)
* LoopySmoothness script removed because it's outdated.
* Removed cache cleaning in every boot.
* Some RAM tweaks disabled due to unreliabilities.
* Config script changes.
* Added GPU tweaks.
* Changes in camera tweaks.
* New signal tweaks added.

Build 6 (Aster 3)
* Added new signal and power tweaks.
* Removed Wi-Fi search interval tweak.

Build 5 (Aster 2)
* Some network tweaks removed due to unstableness.
* Netflix tweaks removed.
* Some delay tweaks removed.
* Some tweaks removed for performance improvements.

Build 1 (Aster)
* First release.


# And credit goes to;
* @aka_vkl for creating this module
* @dojwB for making various additions and purifying this module
* @topjohnwu for creating Magisk
* @ahrion and @Zackptg5for creating Unity Installer
* @eymenygt for testing it without a doubt

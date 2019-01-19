RetroPie-Setup Extended
=======================

General Usage
-------------

RetroPie-Setup Extended is an Unoffical Fork. It is a shell script that is based on the orginal RetroPie, and used is to setup the Raspberry Pi, Vero4K, ODroid-C1, Tinker Board or a PC running Ubuntu with many emulators and games, using EmulationStation as the graphical front end. RetroPie-Setup Extended focus will be for the Tinker Board and higher end sbc's.

This Extended script is designed for use on for the Tinker Board and Tinker Board S, but will still work on Raspberry Pi with Raspbian, OSMC on the Vero4K or Ubuntu on the ODroid-C1 or a PC.

Any issues or requests should be sent here and not to RetroPie, due to the fact they have noting to do with this version. 

RetroPie-Setup Extended Installation
====================================

To run the RetroPie Setup Script make sure that your APT repositories are up-to-date and that Git is installed:

```shell
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install git
```

Then you can download the latest RetroPie setup script with

```shell
cd
git clone --depth=1 https://github.com/RetroPie-Extended/RetroPie-Setup.git
```

The script is executed with 

```shell
cd RetroPie-Setup
sudo ./retropie_setup.sh
```

When you first run the script it may install some additional packages that are needed.

Binaries and Sources
--------------------

On the Tinker Board it is suggested you compile/update from source.

On the Raspberry Pi, RetroPie Setup offers the possibility to install from binaries or source. For other supported platforms only a source install is available. Installing from binary is recommended on a Raspberry Pi as building everything from source can take a long time.

For more information on the main RetroPie branch please visit the blog at https://retropie.org.uk or the repository at https://github.com/RetroPie/RetroPie-Setup.


Thanks
------

This script just simplifies the usage of the great works of many other people that enjoy the spirit of retrogaming. Many thanks go to them! A huge thanks to RetroPie and their work. 

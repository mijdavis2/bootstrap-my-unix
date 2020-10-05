# Arch Help

Issues and fixes I ran into during arch linux exploration and customization

#### Manjaro is not Arch

Don't try to post anything on /r/archlinux if you are using or refering to Manjaro... Arch users do not appreciate that.
Arch users aren't necessarily elitist, it's more that Manjaro is a "poorly maintained" distro based on Arch,
and the Arch community doesn't want to bother with supporting or helping Manjaro specific issues.

#### Archcraft

[Archcraft](https://archcraft-os.github.io/) is a nice custom ISO of Arch. It is still, at it's core, Arch. 
The creator has included a ton of beautiful themes and helpful scripts and wrappers to make Arch easier to install,
configure, etc. Much of this help guide is based on defaults from Archcraft.

## Battery indicator issues

Battery indicators and general power management being innacurate is likely, especially when using a pre-baked ISO
or you don't know what you are doing on initial Arch install/configure.

If using Archcraft, here's a couple possible fixes:

#### 1. Reset the battery at the BIOS level
  
1. While plugged in, boot into the BIOS.
1. In the BIOS, find option to "detatch" the battery and hit ENTER
1. The PC will shutdown
1. Unplug the power cord
1. Hold the power button for 10 seconds
1. Plug the power back in
1. Turn on the PC
1. Battery indicator should be accurate

#### 2. If you are half-lucky, the battery indicator will now be accurate... but will not actually update properly. 
So now we update mkinitcpio!
  
1. Open /etc/mkinitcpio.conf, ex: `sudo vim /etc/mkinitcpio.conf`.
1. Update the line starting with `MODULES=(...)`. Add `battery` to the MODULES object. Example: `MODULES=(i915 battery)`.
1. Load the config via `sudo mkinitcpio -p linux`.
1. Once complete, restart.
1. Battery info should update properly.

## TODO

- cisco anyconnect
- creating new themes
- TBD

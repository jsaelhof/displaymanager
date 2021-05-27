Using "ddcctl" to switch the monitor inputs - source here https://github.com/kfix/ddcctl. It's stored in /usr/local/bin.

Using "displayplacer" to set the monitor arrangement - source here https://github.com/jakehilborn/displayplacer. I installed it with Brew and it ends up in /usr/local/cellar/displayplacer

ddcctl can control the monitor inputs. I'm using automator to write a script for each command and then assigning each script as a 00shortcut in System Preferences > Keyboard > Shortcuts > Services (under General). Other apps like Karabiner etc could probably control the assignment of shortcuts as well.

The automator shortcuts are kept in:
/Users/jason/Library/Services/Monitor 1 Input DP.workflow
/Users/jason/Library/Services/Monitor 1 Input HDMI.workflow
/Users/jason/Library/Services/Monitor 2 Input DP.workflow
/Users/jason/Library/Services/Monitor 2 Input HDMI.workflow
/Users/jason/Library/Services/Monitor Inputs DP.workflow
/Users/jason/Library/Services/Monitor Inputs HDMI.workflow

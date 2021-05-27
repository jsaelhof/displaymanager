## Tools

Using "ddcctl" to switch the monitor inputs - source here https://github.com/kfix/ddcctl. It's stored in /usr/local/bin.

Using "displayplacer" to set the monitor arrangement - source here https://github.com/jakehilborn/displayplacer. I installed it with Brew and it ends up in /usr/local/cellar/displayplacer

## Description
ddcctl can control the monitor inputs. I'm using automator to write a script for each command and then assigning each script as a shortcut in System Preferences > Keyboard > Shortcuts > Services (under General). Other apps like Karabiner etc could probably control the assignment of shortcuts as well.

Displayplacer is piggybacked onto Monitor Inputs DP and Monitor Inputs HDMI so that the arrangement is set when switching.

The automator shortcuts are kept in /Users/<user>/Library/Services which makes them available to set keyboard shortcuts on. Example paths from my Mac. 
/Users/jason/Library/Services/Monitor 1 Input DP.workflow  
/Users/jason/Library/Services/Monitor 1 Input HDMI.workflow  
/Users/jason/Library/Services/Monitor 2 Input DP.workflow  
/Users/jason/Library/Services/Monitor 2 Input HDMI.workflow  
/Users/jason/Library/Services/Monitor Inputs DP.workflow  
/Users/jason/Library/Services/Monitor Inputs HDMI.workflow  

## Automator Script for Monitor Inputs HDMI
![image](https://user-images.githubusercontent.com/7939225/119765204-071eb680-be70-11eb-8bfd-30c25937f075.png)

## Automator Script for Monitor Inputs DP
![image](https://user-images.githubusercontent.com/7939225/119765258-2a496600-be70-11eb-9d97-2f8c4998f3cc.png)

## Keyboard Shortcuts Setup
![image](https://user-images.githubusercontent.com/7939225/119765426-7f857780-be70-11eb-9361-2479b17bd7c3.png)

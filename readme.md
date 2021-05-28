## Tools

Using "ddcctl" to switch the monitor inputs - source here https://github.com/kfix/ddcctl. It's stored in /usr/local/bin.

Using "displayplacer" to set the monitor arrangement - source here https://github.com/jakehilborn/displayplacer. I installed it with Brew and it ends up in /usr/local/cellar/displayplacer

## Description
ddcctl can control the monitor inputs. I'm using automator to write a script for each command and then assigning each script as a shortcut in System Preferences > Keyboard > Shortcuts > Services (under General). Other apps like Karabiner etc could probably control the assignment of shortcuts as well.

Displayplacer is piggybacked onto Monitor Inputs DP and Monitor Inputs HDMI so that the arrangement is set when switching.

The automator shortcuts are kept in /Users/<user>/Library/Services which makes them available to set keyboard shortcuts on. Example paths from my Mac. 
```
/Users/jason/Library/Services/Monitor 1 Input DP.workflow  
/Users/jason/Library/Services/Monitor 1 Input HDMI.workflow  
/Users/jason/Library/Services/Monitor 2 Input DP.workflow  
/Users/jason/Library/Services/Monitor 2 Input HDMI.workflow  
/Users/jason/Library/Services/Monitor Inputs DP.workflow  
/Users/jason/Library/Services/Monitor Inputs HDMI.workflow  
```
  
## Setup

1. To install DDCCTL, download the binary and put it in `/usr/local/bin`.
2. To install displayplacer, run `brew tap jakehilborn/jakehilborn && brew install displayplacer`.
3. Download the workflows from this repo and put them in `/Users/<user>/Library/Services`.
4. Setup monitor arrangement in `Settings > Displays > Arrangement`.
5. In a terminal, run `displayplacer list`. This outputs a bunch of info but the last line is the command for your current arrangement. Copy it.
6. Open the Monitor Inputs DP.workflow in Automator and paste this command over the one there. The same monitor gets a different id on each computer connected to it so it has to be updated from what is checked in.
7. Open the Monitor Inputs HDMI.workflow in Automator and paste the command over the one there.
8. Open `Settings > Keyboard > Shortcuts` and scroll down to `General`. Each workflow should appear there. Assign keyboard shortcuts for each.
9. Optional: Open the individual monitor workflows and add the displayplacer command there as well. I haven't checked it in that way because I generally switch both monitors at once.


## Automator Script for Monitor Inputs HDMI
![image](https://user-images.githubusercontent.com/7939225/119765204-071eb680-be70-11eb-8bfd-30c25937f075.png)

## Automator Script for Monitor Inputs DP
![image](https://user-images.githubusercontent.com/7939225/119765258-2a496600-be70-11eb-9d97-2f8c4998f3cc.png)

## Keyboard Shortcuts Setup
![image](https://user-images.githubusercontent.com/7939225/119765426-7f857780-be70-11eb-9361-2479b17bd7c3.png)

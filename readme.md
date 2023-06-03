## Tools

Using "displayplacer" to set the monitor arrangement - source here https://github.com/jakehilborn/displayplacer. I installed it with Brew and it ends up in /usr/local/cellar/displayplacer on older systems and in /opt/homebrew/bin/displayplacer on at least M1/Ventura.

Using Lunar to control monitor inputs. It does a lot more, mostly with birghtness, but it can control DDCCTL on an M1. https://lunar.fyi/

## Description

The old version of this (pre-M1) worked using DDCCTL to swtich monitor inputs and display placer to swap the screens so the arrangement was correct (long-standing mac bug randomly swaps them when the computer goes to sleep). I did find a bash script (https://gist.github.com/seocam/3a0c82349c6e4df610615550bb1741ae) that executes display placer differently which does work. All it does is reverse the the arrangement of two monitors. So I need to setup the arrangement in the mac settings first and then just run this to swap if needed. Place the `Monitor Swap.workflow` here:

```
/Users/jason/Library/Services/Monitor Swap.workflow
```

The old Pre-M1 version also allowed me to use DDCCTL to control the monitor inputs. I couldn't get it to work on M1 but I found Lunar, which requires a paid license, but does control the inputs with hotkeys.

## Setup

1. To install displayplacer, run `brew tap jakehilborn/jakehilborn && brew install displayplacer`.
2. Setup monitor arrangement in `Settings > Displays > Arrangement`.
3. Copy `Monitor Swap.workflow` to `/Users/jason/Library/Services/Monitor Swap.workflow`
4. Copy the `display-swap.sh` script to a location or just leave it where the github repo is checked out. Copy the absolute path to it.
5. Open the `Monitor Swap.workflow` in Automator and update the path to the `display-swap.sh` script.
6. Open `Settings > Keyboard` and press the `Keyboard Shortcuts` button. In the panel that pops up, find `Services` in the left-nav and then look for `General` on the right. The monitor swap workflow should appear there. Assign keyboard shortcuts for it. I used `SHIFT+CTRL+CMD+minus`.
7. Install Lunar
8. Open Lunar from Applications and find the monitor configuration (monitors need to be plugged in). Setup the keyboard shortcuts for each monitor+input combination. With two computers (work and personal) and two monitors, there will be four keyboard shortcuts. I used:  
   `SHIFT+CTRL+CMD+7` for Work Left monitor  
   `SHIFT+CTRL+CMD+8` for Work Right monitor  
   `SHIFT+CTRL+CMD+9` for Personal Left monitor  
   `SHIFT+CTRL+CMD+0` for Personal Right monitor

This makes each monitor and computer independent. Swapping the arrangement is on a separate key. Lunar does have a command line interface (in the app there is a place to install the CLI, then type `lunar` in a terminal). 9. Repeat setup on the other computer to be able to control it the same way from there.

It would be possible to create workflows for automator that would set both inputs with one key (i.e. change both monitors to personal inputs) but the swap only flips relatively. I haven't been aple to figure out how to make it target the monitors absolutely with displayplacer. I think it's because they are identical monitors. Displayplacer does have absolute and contextual id's for the monitors that are suppoed to maybe address this but I didn't get it working. I found it was "good enough" to just assign a workflow to swap the arrangement if it happens to be backwards. 50% of the time it's fine.

## Keyboard Shortcuts Setup

Screenshot is outdated but it applies  
![image](https://user-images.githubusercontent.com/7939225/119765426-7f857780-be70-11eb-9361-2479b17bd7c3.png)

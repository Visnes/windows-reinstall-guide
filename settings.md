# Settings to remember

> 💡 **But why?**  
> Windows doesn't come optimized and does a lot of weird stuff I don't like. These are some of them.

## Rename your PC?
- Settings → Rename (at the top under Home)

## Change regional formats (Non-english people only)

1. Win+R
2. Type **intl.cpl** and click enter
3. Change Regional Format to "Norwegian Bokmål (Norway)" or whatever language you want.

## Start menu
If you've added your own shortcuts in the Startmenu, they are located in 

```
X:\Backup\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
```
Copy the links you want to keep into
```
%AppData%\Microsoft\Windows\Start Menu\Programs
```
- Set up start menu (07 Start Menu.png)
- Set up Dekstop taskbar (04 Dekstop taskbar.png)
- Set up Explorer sidebar (06 Windows Explorer sidebar.png)

## Check monitor refresh rate

Some times Windows 11 doesn't use the max refresh rate for your monitor after a reinstall, so check that in
```
Settings → System → Display → Advancded display → Select your display → Choose a refresh rate → The max allowed
```
⚠️ **If dynamic refresh rate is on (and your not on a laptop) turn it off!**

## Graphics settings
Some say you should turn off Hardware-accelerated GPU scheduling. Right now games like Doom: Dark Ages requires this to be turned on for it to work correctly. I stopped changing this setting in the latest reinstall I did, and have had no problems with it being on. But, if you still want to turn it off, go to the following settings

```
Settings → System → Display → Graphics → Advanced graphics settings → Hardware-accelerated GPU scheduling
```
## Power Plan

Windows defaults to not use your full system. On a stationary PC, change the power plan to **performance**.

1. Open start menu and type **"Edit Power Plan"**
2. Click **"Change advanced power settings"**
3. In dropdown choose **"High performance"**
4. Go to **"Processor power management"**
5. Change **"Minimum processor state"** to **10%**
6. Click **"Ok"**

## Miscellaneous

- Configure **AudioSwitch**

- Go through **"X:\Backup\AppData"** and copy what's needed to **"%USERPROFILE%\AppData"** (remember to keep them in the same folder Roaming, Local, LocalNow)

- Copy Autodark Config folder **"X:\Backup\AppData\Roaming\AutoDarkMode"** to **"%AppData%\AutoDarkMode"**

- Go through Windows Settings and set it up

**[Let's check on Windows Update →](windows-update.md)**
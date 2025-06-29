# Fixing language problems

> 💡 **But why?**  
> Windows is pretty shit if you are non-US but want to have a US language for the OS, but still use your local format and keyboard.

Windows often gets confused that you want to have an English version Windows but still have your local formating and keyboard. So whenever you hit Win-Space by mistake, it changes the keyboard layout to US. We shall fix that!

## Remove 'US' language

1. Launch **Regedit**
2. Go to **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000409**
3. Right click the folder called **0000409**
4. Rename it to **0000409-NO**
5. Reboot your PC

## Remove the langauge selector
1. Go to Settings → Time & Language
2. Click **"Typing"**
3. Click **"Advanced keyboard settings"**
4. Uncheck both **"Switching input methods"**

## Remove US keyboard
1. Go to Settings → Time & Language → Language & region
2. Click the **"..."** next to "English (United States)
3. Click **"Add a keyboard"** doesn't matter which keyboard layout
4. Click the **"..."** next to the newly added keyboard and remove it

## Remove magnifier shortcut
It's really annoying when you accidentally hit the shortcut for the magnifier app. And it's a bit more involved removing that feature.

In Windows Terminal, do the following:
```powershell
takeown /f C:\Windows\System32\Magnify.exe
cacls C:\Windows\System32\Magnify.exe /G administrators:F
cd "C:\Windows\System32"
ren Magnify.exe Magnify.exe.bak
```

## Check that time is syncing
I have experienced that Windows isn't automatically syncing the time in Windows, so after a while 2FA-codes won't sync correctly.

1. Open Settings → Time & Language → Date & Time
2. Make sure that **"Set time zone automatically"**, **"Set time automatically"** and **"Show time and date in the System tray"** are all on.
3. Click **"Sync now"**
4. **Win+R** and type **Services.msc**
5. Find **"Windows Time"** and check that it's set to **"Automatic"**

**[Are we done yet?! →](done.md)**
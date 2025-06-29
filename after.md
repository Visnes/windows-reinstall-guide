# After you reinstall

Now you are hopefully in your newly reinstalled Windows 11. Looking fresh? Most of what you will be doing will happen inside Windows Terminal and using Powershell.

> [!WARNING] 
> Make sure that drives are set to the right drive letters! Do this by right-clicking on the Start Menu icon and select Disk Management. Here you can change the drive letters for each drive.

## Path Variables

I use Dropbox, so I make a path variable for it.

1. Click Win+R to open run and type:  
   **SystemPropertiesAdvanced**

2. Click:  
   **"Environment Variables..."**

3. Click  
   **"New..."**  
   under  
   **"User Variables for ..."**

4. Make Variable name:
   **Dropbox**  
   and Variable value:  
   **X:\Dropbox**

> [!TIP]
> It comes into play when you start using commands later on. Instead of typing the driver and path, you just do **$env:Dropbox** I don't know if this is easier though. I just do it for some reason

## Install Microsoft Windows Terminal

It might be installed, but make sure by running this command in Command Prompt:  

   ```command prompt
   winget install Microsoft.WindowsTerminal
   ```
## Execution Policies

Make sure that Windows Terminal has the correct permissions.

   > [!ATTENTION]
   > If you don't you won't be able to install ex. Chocolatey

   In **PowerShell**, run:  
   ```powershell
   Get-ExecutionPolicy
   ```

If it shows Restricted, run the following command
   ```powershell
   Set-ExecutionPolicy AllSigned
   ```
   or
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process
   ```
Now if you run Get-ExecutionPolicy, it should show AllSigned.

## Update Powershell and import settings

Install the newest Powershell
   ```powershell
   iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
   ```

   > [!ATTENTION]  
   > The Powershell that comes with Windows is not the newest version, so you use this to install it. This will install the newest PowerShell into Program Files.

## Configure Windows Terminal
   1. In Windows Terminal click CTRL + ,
   2. Go To PowerShell (left side) and change location to
   ```
   %PROGRAMFILES%\PowerShell\7\pwsh.exe
   ```
   > [!ATTENTION] 
   > Windows Terminal uses PowerShell installed with Windows, you need to tell it to use the new one you installed.

## Copy over settings from backup

You made a backup of AppData in the first part of the guide, now we get to use what you backed up. X: is drive you placed the backup.

   1. Copy content of 
   ```
   X:\Backup\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
   ```
   to
   ```
   %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
   ```
   > [!ATTENTION] 
   > If you've configured your Windows Terminal on the old installation, this is where the files are. Just overwrite the ones on the new install. If Windows Terminal doesn't start after this, just delete the files in LocalState and start it again. It will reset it.

## Windows Sandbox

I usually install Windows Sandbox at this point, type the following command:
   ```
   Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All
   ```

## Turn off ACM
Windows has a feature that screws with the color of your monitor. Turn that shit off

- Settings → System → Display → Color management → If **"Automatically manage color for apps"** is on, turn it off!

## Windows 11 Pro N
If you installed this version of Windows 11 and want to install the Media Features now or later on

Settings → Apps → Optional features → Select View features → Install the Media Feature Pack

## Change location of Windows folders

If you use Dropbox, you can create a folder in your Dropbox called Windows and then move the different Windows folders like Documents, Music, Pictures etc. to that folder. Which makes it easier to both back up, and get back up and running. You can also drop backing up with OneDrive if you use this method.

- Right click Documents → Location → Move... → Select where to move it

For example the location would be **"D:\Dropbox\Windows\Documents"** instead of **"C:\Users\<user>\Documents"**

The folders you can move are (default location is C:\Users\<user>\):  
→ Contacts  
→ Desktop (If you keep stuff on the Desktop, I wouldn't add it to Dropbox)
→ Documents
→ Downloads (I wouldn't add this to Dropbox)  
→ Favorites  
→ Links  
→ Music  
→ Pictures  
→ Saved Games  
→ Searches  
→ Videos  

## Update Windows completely
Just get it over with: Settings → Windows Update → Check for updates

After you've rebooted, do this again untill you can't update no more! Then move on.

**[Next up, package managers! →](package-managers.md)**
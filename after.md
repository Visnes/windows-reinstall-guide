# After you reinstall

Now you are hopefully in your newly reinstalled Windows 11. Looking fresh? Most of what you will be doing will happen inside Windows Terminal and using Powershell.

> ⚠️ **First off!**  
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

> 💡 **Why do this?**  
> It comes into play when you start using commands later on. Instead of typing the driver and path, you just do **$env:Dropbox** I don't know if this is easier though. I just do it for some reason

## Install Microsoft Windows Terminal

It might be installed, but you can just run this command in Command Prompt:  

   ```command prompt
   winget install Microsoft.WindowsTerminal
   ```
## Execution Policies

Make sure that Windows Terminal has the correct permissions.

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

## Configure Windows Terminal
   1. In Windows Terminal click CTRL + ,
   2. Go To PowerShell (left side) and change location to
   ```
   %PROGRAMFILES%\PowerShell\7\pwsh.exe
   ```
   > 💡 **Why do this?**  
   > Currently the PowerShell it runs is not the new one, this will make it run the latest version (might be 8 if they release it though)

## Copy over settings from backup
   1. Copy content of 
   ```
   X:\Backup\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
   ```
   to
   ```
   %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
   ```
   > 💡 **Why do this?**  
   > If you've configured your Windows Terminal on the old installation, this is where the files are. Just overwrite the ones on the new install. If Windows Terminal doesn't start after this, just delete the files in LocalState and start it again. It will reset it.

## Windows Sandbox

I usually install Windows Sandbox at this point, type the following command:
   ```
   Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All
   ```

**[Next up, package managers! →](package-managers.md)**
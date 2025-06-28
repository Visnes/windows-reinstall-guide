# Package Managers

The only way I use Windows 11 now is either with WinGet or Chocolatey. They are package managers using CLI, which is a really nice and easy way to install, and uninstall, apps on your computer.

> ⚠️ **Administrative Mode**  
> From now on, get used to running Windows Terminal in admin mode (you should have done that before this point too).

## WinGet

Make sure you are running the newest version of WinGet (App Installer)

   In **PowerShell**, run:  
   ```powershell
   Add-AppxPackage -Path "$env:SystemRoot\System32\AppX\AppxManifest.xml" -Register
   ```

## Chocolatey

If you want, you can install this, but you don't have too

   In **PowerShell**, run:  
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   If you did install it, you can run this command to make it auto upgrade all the apps every monday at 04:00 AM
   ```powershell
   choco install choco-upgrade-all-at --params "'/WEEKLY:yes /DAY:MON /TIME:04:00'"
   ```

## Scoop

Scoop is another variant of Chocolatey. I've used it a couple of times, but now I mostly stick to WinGet, and use Chocolatey for stuff I don't find on WinGet.

   If you want to install it, run these commands (NOT IN ADMIN MODE!):
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   irm get.scoop.sh | iex
   scoop install git
   scoop bucked add nonportable
   scoop bucked add extras
   ```

   **[Debloat Windows now! →](debloat.md)**
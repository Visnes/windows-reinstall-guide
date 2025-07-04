What's seen as critical software is subjective. For me it's stuff like Dropbox, Firefox and Proton Pass, for you it can be different. You can also look as this page as a list of good software for your Windows 11 installation. None of this is "must have", you decide.

> [!NOTE|label:Manual or script] 
> You can easily make a script that let's you install what you need, although I would suggest you **install critical software manually**, so you can properly set it up. For software that isn't critical, you can easily use a script. I will give you both below.

## Ninite

If you don't care about any of this and want to just get it over and done with, you can use a [service like Ninite](https://ninite.com/). Just pick the software you want to install, click download, double click file and everything is installed. Easy peasy.

![ninite](_media/ninite.png)

# Critical

## Using Windows Terminal

Like I said, I like to install the following software manually.

### Dropbox

After the install, start it and make sure it syncs to the folder you have on your other drive.

<!-- tabs:start -->
#### **WinGet**

```terminal
winget install Dropbox.Dropbox
```
#### **Chocolatey**

```terminal
choco install -y dropbox
```
#### **Scoop**
```terminal
scoop install dropbox
```
<!-- tabs:end -->

> [!TIP]
> I've been using Dropbox for years, and I've learned that having it located on a non-C drive, it's very easy to just install and get it up and running quickly again. If you have it on C and you format, you have to re-download everything, which takes forever. If you keep Dropbox on another drive, and tell the newly installed Dropbox to sync in that location, it will only check the files there and only download if something has changed. [I also keep Documents etc on Dropbox for easy backup](after.md#change-location-of-windows-folders).

### 🚨 Mozilla Firefox
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Mozilla.Firefox
```
#### **Chocolatey**

```terminal
choco install -y firefox
```
#### **Scoop**
```terminal
scoop install firefox
```
<!-- tabs:end -->

→ Start it and make it your default browser  
→ Go to **about:profiles**  
→ Create a New Profile → Choose Folder → The folder you backed up [before the reinstall](before.md).  
→ Restart Firefox and it should now be just like it was before the reinstall, with extensions, settings, and actually open up again tabs you had open. Nice.

### 🚨 Proton Pass

You don't have Proton yet? What are you even doing with your life? Anyway, if you don't use Proton Pass, just think of this section as me telling you to install your password manager so that it's ready.

<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Proton.ProtonPass
```
#### **Chocolatey**
```terminal
choco install -y protonpass
```
#### **Scoop**
```terminal
scoop install protonpass
```
<!-- tabs:end -->

Log in and also make sure that the extension is working in Firefox. This will make it much easier to log into websites and software you have.

# Semi-Critical

Like I said above, two ways of doing it. Either manually one after the other, or you can use a script.

## Automatic script
Change this script with the apps you want to use, the good thing is that you can keep this safe somewhere, so the next time you have to reinstall Windows, you just run this one script.

in Windows Terminal go to the folder you want to save it and type
   ```terminal
   notepad semi-critical-software.ps1
   ```
Then in that file, add the following
   ```notepad
#############
# Variables #
#############
$title	= ' '
$lines = @( 
            "This will install the following semi-critical software:`n",
            "- Nanazip by M2Team",
            "- Discord by Discord",
            "- ShareX by ShareX",
            "- PowerToys by Microsoft",
            "- DisplayFusion by BinaryFortress",
            "- Malwarebytes by Malwarebytes",
            "- Intel Driver And Support Assistant by Intel",
            "- AudioSwitch by sirWest",
            "- LittleBigMouse by mgth",
            "`nIf you do this, it will install all the software above. Let it finish!"
        )
$question	= 'Are you sure you want to proceed?'
$choices	= '&Yes', '&No'

################
# Script start #
################
Clear-Host
Write-Output $lines

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 0) {
        Write-Host 'confirmed'
        winget install --id=M2Team.NanaZip -e  ; winget install --id=Discord.Discord -e  ; winget install --id=ShareX.ShareX -e  ; winget install --id=Microsoft.PowerToys -e  ; winget install --id=BinaryFortress.DisplayFusion -e  ; winget install --id=Malwarebytes.Malwarebytes -e ;  winget install --id=Intel.IntelDriverAndSupportAssistant  -e ;  winget install --id=sirWest.AudioSwitch  -e ; winget install --id=mgth.LittleBigMouse  -e ;
    } else {
        Clear-Host
        Write-Host 'The process has been aborted successfully.'
    }
   ```
This will install everthing in one go. Just edit the file as you see fit, easy to understand how it works by looking at it. Save the file and run it with the following command
   ```terminal
   powershell.exe -executionpolicy bypass -file 'D:\location of file\semi-critical-software.ps1'
   ```
This will bypass any lockouts and run the script. You will be asked if you want to install them or not.

> [!TIP|label:How do I find apps to install]
> Easy, in Windows Terminal type **winget search <something>** ex. **winget search 7z** will give you a list of apps with 7z in it, and it will be a table with name, id, version, match and source. Look for 7-Zip and use the Id to install the app, the id for 7zip is **7zip.7zip** this is the ID you add to the script above ex. **winget install --id=7zip.7zip -e ;** after **LittleBigMouse  -e ;**


## Manual installation

For the above apps, just type this one line at a time into Windows Terminal

### 📦[Nanazip](https://github.com/M2Team/NanaZip)
I like this one more than 7z.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install M2Team.NanaZip
```
#### **Chocolatey**
```terminal
choco install -y nanzip
```
#### **Scoop**
```terminal
scoop install nanazip
```
<!-- tabs:end -->

### 🗨️[Discord](https://discord.com)
For the time being this is what we all use. Keep fucking adding ads and shit, and we'll find something else or go back to IRC.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Discord.Discord
```
#### **Chocolatey**
```terminal
choco install -y discord
```
#### **Scoop**
```terminal
scoop install discord
```
<!-- tabs:end -->

### 📸[ShareX](https://github.com/ShareX/ShareX)
A better app for taking screenshots. Can edit the screenshot before you take it (add text, blur text etc), can also create gif and mp4 captures.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install ShareX.ShareX
```
#### **Chocolatey**
```terminal
choco install -y sharex
```
#### **Scoop**
```terminal
scoop install sharex
```
<!-- tabs:end -->

### 🔮[PowerToys](https://github.com/microsoft/PowerToys)
Awesome tools made by Microsoft developers for use with Windows. Better zoning of Windows, copy text from images, create workspaces and a bunch of other cool and usefull stuff
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Microsoft.PowerToys
```
#### **Chocolatey**
```terminal
choco install -y powertoys
```
#### **Scoop**
```terminal
scoop install powertoys
```
<!-- tabs:end -->

### 💻[DisplayFusion](https://www.displayfusion.com/)
I use multi monitors, and this has some really good ways to manage this in Windows, better than Windows does it at least. It's pay2use though. They do offer a free trial. Bought it ones many many many years ago, and still get updates.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install BinaryFortress.DisplayFusion
```
#### **Chocolatey**
```terminal
choco install -y displayFusion
```
#### **Scoop**
```terminal
scoop install displayfusion
```
<!-- tabs:end -->

### 🐛[Malwarebytes](https://malwarebytes.com)
Do you need it? Something every discusses. I used it because it was recommended by someone way back when, and I've just stuck with it. Paid once. Windows Defender is enough for 99.99 % of people I guess.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Malwarebytes.Malwarebytes
```
#### **Chocolatey**
```terminal
choco install -y malwarebytes
```
#### **Scoop**
```terminal
scoop install malwarebytes
```
<!-- tabs:end -->

### 🚘[Intel Driver & Support Assistant](https://www.intel.com/content/www/us/en/support/detect.html)
If you have an Intel CPU, this is a nice piece of software that makes sure you're running up to date drivers for your motherboard.
```terminal
winget install Intel.IntelDriverAndSupportAssistant
```
### 🔉[AudioSwitch](https://github.com/sirWest/AudioSwitch)
If you use speakers and headset, you know that you need to change the device when you switch between them. This help to make that process easier. Adds a icon to the system tray that you can click and change the source. Lots of other apps exist for this.
```terminal
winget install sirWest.AudioSwitch
```
### 🖱️[LittleBigMouse](https://github.com/mgth/LittleBigMouse)
If you have multi monitors of different resolutions and orientations, this is a must. It will make it so that when you move your mouse between monitors, it doesn't skip because the size difference etc. Why Microsoft haven't fixed this yet is weird...
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install mgth.LittleBigMouse
```
#### **Chocolatey**
```terminal
choco install -y littlebigmouse
```
#### **Scoop**
```terminal
scoop install littlebigmouse
```
<!-- tabs:end -->

## More cool and usefull apps

Here is a list of software I find usefull and tend to end up installing.

### []()

### 🪟Windows HDR Calibration
This Microsoft app isn't installed by default, but if you have an OLED monitor with HDR support, download and calibrate it.
```terminal
winget install 9N7F2SM5D1LR
```

### 📱[Proton Pack](https://proton.me)
I moved away from Google and over to Proton. Don't regret it at all, it's awesome and getting better by the day!
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Proton.ProtonDrive
winget install Proton.ProtonMail
winget install Proton.ProtonMailBridge
winget install Proton.ProtonVPN
```
#### **Chocolatey**
```terminal
choco install -y protondrive
choco install -y protonmail
choco install -y protonmailbridge
choco install -y protonvpn
```
#### **Scoop**
```terminal
scoop install protondrive
scoop install protonmail
scoop install protonmailbridge
scoop install protonvpn
```
<!-- tabs:end -->

# Non-critical software

Non-critical software are just things that are nice to have if you need it.

### <i class="fa-solid fa-file-pen"></i> [Notepads](https://github.com/0x7c13/Notepads)
Most people use Notepad++ or something else. Even Notepad has gotten better (but has AI 🤮). This I think is really good looking, and has what I need. For more complex files etc, I use VSCode.
   ```terminal
   winget install JackieLiu.NotepadsApp
   ```

### <i class="fa-solid fa-network-wired"></i> [Parsec](https://parsec.app)
Remotly connect to your other PCs easy and fast.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Parsec.Parsec
```
#### **Chocolatey**
```terminal
choco install -y parsec
```
#### **Scoop**
```terminal
scoop install parsec
```
<!-- tabs:end -->

### <i class="fa-solid fa-circle-nodes"></i> [RustDesk](https://rustdesk.com)  
Remote desktop software that’s simple, secure, and open source.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Rustdesk.Rustdesk
```
#### **Chocolatey**
```terminal
choco install -y rustdesk
```
#### **Scoop**
```terminal
scoop install rustdesk
```
<!-- tabs:end -->

### <i class="fa-brands fa-spotify"></i> [Spotify](https://www.spotify.com)  
Popular music streaming app with millions of songs and playlists. I really want to stop using it though. 🙃

<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Spotify.Spotify
```
#### **Chocolatey**
```terminal
choco install -y spotify
```
#### **Scoop**
```terminal
scoop install spotify
```
<!-- tabs:end -->

### <i class="fa-solid fa-file-pen"></i> [Advanced Renamer](https://www.advancedrenamer.com)  
Batch rename multiple files and folders easily with custom rules.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install HulubuluSoftware.AdvancedRenamer
```
#### **Chocolatey**
```terminal
choco install -y advanced-renamer
```
#### **Scoop**
```terminal
scoop install advanced-renamer
```
<!-- tabs:end -->

### <i class="fa-solid fa-file-pdf"></i> [SumatraPDF](https://www.sumatrapdfreader.org)  
Lightweight, fast PDF reader supporting many formats.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install SumatraPDF.SumatraPDF
```
#### **Chocolatey**
```terminal
choco install -y sumatrapdf
```
#### **Scoop**
```terminal
scoop install sumatrapdf
```
<!-- tabs:end -->

### <i class="fa-brands fa-telegram"></i> [Telegram](https://telegram.org)  
Cloud-based instant messaging app with focus on speed and security.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Telegram.TelegramDesktop
```
#### **Chocolatey**
```terminal
choco install -y telegram
```
#### **Scoop**
```terminal
scoop install telegram
```
<!-- tabs:end -->

### <i class="fa-solid fa-shield"></i> [Signal](https://signal.org)  
End-to-end encrypted messaging app for privacy-focused communication.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install OpenWhisperSystems.Signal
```
#### **Chocolatey**
```terminal
choco install -y signal
```
#### **Scoop**
```terminal
scoop install signal
```
<!-- tabs:end -->

### <i class="fa-solid fa-chart-line"></i> [GlassWire Lite](https://www.glasswire.com)  
Network monitoring tool with firewall and security features. Has free version, but many features behind subscription
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install GlassWire.GlassWire.Lite
```
#### **Chocolatey**
```terminal
choco install -y glasswire
```
#### **Scoop**
```terminal
scoop install glasswire
```
<!-- tabs:end -->

### <i class="fa-solid fa-broom"></i> [BleachBit](https://github.com/bleachbit/bleachbit)  
System cleaner and optimization tool to free up space and improve performance.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install BleachBit.BleachBit
```
#### **Chocolatey**
```terminal
choco install -y bleachbit
```
#### **Scoop**
```terminal
scoop install bleachbit
```
<!-- tabs:end -->

### <i class="fa-solid fa-hard-drive"></i> [Samsung Magician](https://www.samsung.com/semiconductor/minisite/ssd/product/consumer/magician)  
Tool for managing Samsung SSDs, firmware updates, and performance tuning. Not using Samsung, don't install.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install XPDDT99J9GKB5C
```
#### **Chocolatey**
```terminal
choco install -y samsung-magician
```
#### **Scoop**
```terminal
scoop install samsung-magician
```
#### **Manually**
📥 [Download the app](https://semiconductor.samsung.com/consumer-storage/support/tools/)
<!-- tabs:end -->

### <i class="fa-solid fa-gamepad"></i> [Epic Games Launcher](https://www.epicgames.com/store/en-US/)  
Launcher for Epic Games Store and access to your library and store.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install EpicGames.EpicGamesLauncher
```
#### **Chocolatey**
```terminal
choco install -y epicgameslauncher
```
#### **Scoop**
```terminal
scoop install epicgameslauncher
```
<!-- tabs:end -->

### <i class="fa-solid fa-gamepad"></i> [GOG Galaxy](https://www.gog.com/galaxy)  
Game launcher and manager for GOG games with optional DRM-free features.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install GOG.Galaxy
```
#### **Chocolatey**
```terminal
choco install -y goggalaxy
```
#### **Scoop**
```terminal
scoop install goggalaxy
```
<!-- tabs:end -->

### <i class="fa-solid fa-video"></i> [HandBrake](https://handbrake.fr)  
Open-source video transcoder for converting video formats.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install HandBrake.HandBrake
```
#### **Chocolatey**
```terminal
choco install -y handbrake
```
#### **Scoop**
```terminal
scoop install handbrake
```
<!-- tabs:end -->

### <i class="fa-solid fa-moon"></i> [Windows Auto Night Mode](https://github.com/armin2208/WindowsAutoNightMode)  
Automatically switch Windows between light and dark modes based on time and location
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Armin2208.WindowsAutoNightMode
```
#### **Chocolatey**
```terminal
choco install -y auto-dark-mode
```
#### **Scoop**
```terminal
scoop install auto-dark-mode
```
<!-- tabs:end -->

### <i class="fa-solid fa-film"></i> [VLC Media Player](https://www.videolan.org/vlc/)  
Versatile media player supporting most audio and video formats.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install VideoLAN.VLC
```
#### **Chocolatey**
```terminal
choco install -y vlc
```
#### **Scoop**
```terminal
scoop install vlc
```
<!-- tabs:end -->

### <i class="fa-brands fa-whatsapp"></i> [WhatsApp Beta](https://www.whatsapp.com)  
Beta version of WhatsApp desktop client for messaging and calls.
```terminal
winget install WhatsApp.WhatsApp
```

### <i class="fa-solid fa-magnifying-glass"></i> [QuickLook](https://quicklook.app)  
File previewer that shows contents quickly with spacebar press just like on MacOS.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install QL-Win.QuickLook
```
#### **Chocolatey**
```terminal
choco install -y quicklook
```
#### **Scoop**
```terminal
scoop install quicklook
```
<!-- tabs:end -->

### <i class="fa-solid fa-image"></i> [FastStone Viewer](https://www.faststone.org/FSViewerDetail.htm)  
Fast and user-friendly image viewer with editing capabilities. I find this much better than the built-in photo viewer.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install FastStone.Viewer
```
#### **Chocolatey**
```terminal
choco install -y faststone-image-viewer
```
#### **Scoop**
```terminal
scoop install faststone-image-viewer
```
<!-- tabs:end -->

### <i class="fa-solid fa-magnet"></i> [qBittorrent Enhanced Edition](https://github.com/c0re100/qBittorrent-Enhanced-Edition)  
Advanced torrent client with enhanced features.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install c0re100.qBittorrent-Enhanced-Edition
```
#### **Chocolatey**
```terminal
choco install -y qbittorrent-enhanced
```
#### **Scoop**
```terminal
scoop install qbittorrent-enhanced
```
<!-- tabs:end -->

### <i class="fa-brands fa-git-alt"></i> [Git](https://git-scm.com)  
Command line distributed version control system.
<!-- tabs:start -->
#### **WinGet**
```terminal
winget install Git.Git
```
#### **Chocolatey**
```terminal
choco install -y git
```
#### **Scoop**
```terminal
scoop install git
```
<!-- tabs:end -->

### <i class="fa-brands fa-python"></i> [Python Launcher](https://www.python.org)  
Launcher for managing Python versions and scripts.

```terminal
winget install Python.Launcher
```

<br /><br /><span style="font-size: 24px; float:right;">**[Time to download apps and run the installer, mate. ➡️](install-manually.md)**</span><br /><br /><br />
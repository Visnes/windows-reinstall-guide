# Before you reinstall

It's important to backup whatever you need. I always save my most important stuff on separate drives other than the C-drive.

---

1. Copy the folder:  
   **`C:\Users\<your user>\AppData`**  
   to:  
   **`X:\Backup`**

> 💡 **Why do this?**  
> AppData contains configuration, saved states, and data for apps like browsers, editors, and launchers. Backing it up helps restore your setup after reinstalling Windows.

---

2. Copy fonts from:  
   **`C:\Windows\Fonts`**  
   to:  
   **`X:\Backup`**

> 💡 **Why do this?**  
> Preserves any manually installed fonts not synced via Microsoft account.

---

3. These are some apps I backup the settings for:

- **DisplayFusion**
- **ShareX**
- **Windhawk**
- **Plex Media Server**
  → Backup this registry key:
  **`HKEY_CURRENT_USER\Software\Plex, Inc.\`**

> 💡 **Why do this?**  
> Makes it easier to reimport the settings on a new install. If you don't use any of these apps, you can skip this step. Although you might have separate apps not on this list that you would want to back up.

---

4. Open **PowerToys** → Go to **Backup Settings** and export.

> 💡 **Why do this?**  
> Allows restoring PowerToys customizations quickly.

---

5. In **PowerShell**, run:  
   ```powershell
   choco list --local-only
   winget list

> 💡 **Why do this?**
> This will show you a list of all the apps installed by these programs. If you don't use Chocolatey or Scoop, you can skip those. Winget will show you installed apps from Microsoft Store.

6. In **PowerShell**, run:  
   ```powershell
   Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*,HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object { $_.DisplayName } | Select-Object DisplayName, DisplayVersion, Publisher | Sort-Object DisplayName | Out-File -Encoding UTF8 -FilePath (Join-Path $env:USERPROFILE "Desktop\Installed Apps ($(Get-Date -Format 'MMMM yyyy')).txt")>
   ```

> 💡 **Why do this?**
> This will create a file called 'Installed Apps (April 2025).txt' on your desktop. This file will contain all installed apps on Windows. Why run this and the one above? Because some times you don't get all the apps with this command unfortunately.

7. Take screenshots of your startmenu, taskbar, desktop.

> 💡 **Why do this?**
> So you remember which apps you have were. I do this because I like my Start Menu some certain way, if you don't care about that, skip it.

- <input type="checkbox" id="step1"> Step 1: AppData backed up
- <input type="checkbox" id="step2"> Step 2: Fonts backed up
- <input type="checkbox" id="step3"> Step 3: App settings backed up
- <input type="checkbox" id="step4"> Step 4: PowerToys
- <input type="checkbox" id="step5"> Step 5: List of all apps installed
- <input type="checkbox" id="step6"> Step 6: Screenshots taken

**[Time to install Windows 11, baby! →](during.md)**
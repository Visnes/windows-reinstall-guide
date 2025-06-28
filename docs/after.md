1. Backup C:\Users\<user>\AppData to D:\Backup

2. Backup C:\Windows\Fonts to D:\Backup

3. Make backup of settings for the following apps:
	- DisplayFusion
	- ShareX
	- Windhawk
	- Plex Media Server
		Backup following registry:
		HKEY_CURRENT_USER\Software\Plex, Inc.\

4. Open PowerToys -> Backup settings

5. Powershell: "choco list --local-only" or use chocolateygui

6. Winget in terminal: winget list

7. In Terminal: Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*,HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object { $_.DisplayName } | Select-Object DisplayName, DisplayVersion, Publisher | Sort-Object DisplayName | Out-File -Encoding UTF8 -FilePath (Join-Path $env:dropbox "03 Clean Install\Installed Apps ($(Get-Date -Format 'MMMM yyyy')).txt")

8. Screenshot Start Menu, My Computer, Explorer Side Bar
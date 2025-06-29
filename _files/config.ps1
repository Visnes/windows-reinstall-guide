# ===== WINFETCH CONFIGURATION =====

# Display either in 'en' or 'jp' (default is jp)
# $info_language = 'en'

# $image = "~/winfetch.png"
# $noimage = $true

# Display image using ASCII characters
# $ascii = $true

# Set the version of Windows to derive the logo from.
 $logo = "Visnes"

# Specify width for image/logo
# $imgwidth = 52

# Make the logo blink
$blink = $true

# Display all built-in info segments. Very slow.
# $all = $true

# Add a custom info line
 function info_custom_time {
     return @{
         title = "└─  じかん"
         content = (Get-Date -Format "dd.MM.yyyy - HH:mm (K)")
     }
 }

# Configure which disks are shown
# $ShowDisks = @("C:", "D:", "E:")
# Show all available disks
$ShowDisks = @("*")

# Configure if the CPU temp shows in info_cpu
# Some systems can't get the temp with the way this is coded
# Turn it on and try, turn it off if it doesn't work.
# $CPUTemp = $true

# Configure which package managers are shown
# disabling unused ones will improve speed
$ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
$cpustyle = 'bartext'
$memorystyle = 'bartext'
$diskstyle = 'bartext'
$batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

@(
# TITLE & SUBTITLE
    "title"
    "subtitle"
    "blank"
# OS, KERNEL, PS-PKGS, PWSH, UPTIME, TERMINAL, PKGS, THEME, DATETIME, BATTERY
    "software"
    "os"
    "kernel"
#    "ps_pkgs"  # takes some time
    "pwsh"
    "uptime"
#    "terminal"
#    "pkgs"
#    "theme"
    "datetime"
    "battery"
    "dashes_end"
    "blank"
# COMPUTER, CPU, GPU, MOTHERBOARD, TEMPERATURES, RESOLUTION, CPU_USAGE, MEMORY, DISK
    "hardware"
#    "computer"
    "cpu"
    "gpu"
#    "motherboard"
#   "temperatures" # Not used (yet), don't uncomment!
    "resolution"
#    "cpu_usage"
    "memory"
    "disk"
# LOCALE, LAYOUT, LOCAL_IP, PUBLIC_IP, FAKE_IP, WEATHER
    "dashes_end"
    "blank"
    "other"
    "locale"
    "layout"
    "local_ip"
    "public_ip"
#    "redacted_ip"
#    "weather"
# END OF VIEW WITH COLORBAR
    "dashes_end"
    "blank"
    "colorbar"
)

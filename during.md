# Installing Windows 11

Now that you've made backups of the stuff you care about, you're now ready to reinstall Windows 11.

---

## Make a bootable Windows USB stick
### Ventoy
There are several ways to do this, I like to use [Ventoy](https://github.com/ventoy/Ventoy). It's tooted as "A new bootable USB solution".

> 💡 **Why do this?**  
> The reason I like it, is that you make a Ventoy USB stick, and just copy the ISOs you want onto it, and then you get to select which ISO to run. So you can have one USB stick with both Windows, Linux etc. A little more involved, but really nice.

### Windows Media Creation Tool
If you don't need that, you can easily create a Windows 11 bootable USB stick using [Windows Media Creation Tool](https://www.microsoft.com/software-download/windows11).

1. Download the Windows Media Creation Tool
2. Run it
3. It will download the ISO and format your USB stick
4. Go to your BIOS and boot from this USB stick
5. ???
6. Profit

### Creating your own Windows 11 ISO
Go to [UUP dump](https://uupdump.net/) find a ISO you want to use, create that ISO and download it. You're on your own with this one. 🙃

> 💡 **Warning!**  
> It would be a good idea to download the network drivers for your motherboard from the vendor. With my current computer the Windows installer doesn't load them, so I have to manually select them to get networking to work. Or, you could just skip hooking up to the network till after you are in Windows.

**[This is why you're here, what to do after you reinstall Windows 11! →](after.md)**
Now that you've made backups of the stuff you care about, you're now ready to reinstall Windows 11. You choose which version of Windows 11 you want to install. The two I go between is Windows 11 Pro and Windows 11 Pro N. Here are the differences. Basically Windows 11 Pro N is made to be compliant with EU laws, so they have removed a bunch of media apps. You can install them later if you need them.

| Feature                            | Windows 11 Pro          | Windows 11 Pro N              |
|------------------------------------|--------------------------|-------------------------------|
| Windows Media Player               | ✅ Included              | ❌ Not included               |
| Voice Recorder                     | ✅ Included              | ❌ Not included               |
| Skype                              | ✅ Included              | ❌ Not included               |
| Video & Music Apps (Groove, etc.) | ✅ Included              | ❌ Not included               |
| Microsoft Teams Chat               | ✅ Included              | ❌ Not included               |
| Media Foundation                   | ✅ Included              | ❌ Not included               |
| DirectX media features             | ✅ Fully supported       | ❌ Some components missing    |
| Feature Pack Available             | 🚫 Not needed           | ✅ Can install Media Feature Pack manually |

> [!WARNING]
> The best way to reinstall is to delete the partions for your C drive and start over. BE VERY CAREFULL if you have more than one drive so you don't accidentally remove one of them. The content of the drive will be destroyed when you do this.


# Make a bootable Windows USB stick

You have to make a USB stick so that you can install Windows. If you don't have a DVD-drive that is. 🙃 There are several options. Here are some of them.

## Ventoy
There are several ways to do this, I like to use [Ventoy](https://github.com/ventoy/Ventoy). It's tooted as "A new bootable USB solution".

![ventoy](_media/ventoy.png)

> [!NOTE]
> The reason I like it, is that you make a Ventoy USB stick, and just copy the ISOs you want onto it, and then you get to select which ISO to run. So you can have one USB stick with both Windows, Linux etc. A little more involved, but really nice. If you at one point get a new ISO, you can just copy it straight on it without having to do all the formating and shit that comes with making it the old way.

## Windows Media Creation Tool
If you don't need that, you can easily create a Windows 11 bootable USB stick using [Windows Media Creation Tool](https://www.microsoft.com/software-download/windows11).

![media-creation-tool](_media/media-creation-tool.png)

1. Download the Windows Media Creation Tool
2. Run it
3. It will download the ISO and format your USB stick
4. Go to your BIOS and boot from this USB stick
5. ???
6. Profit

## Creating your own Windows 11 ISO
Go to [UUP dump](https://uupdump.net/) find a ISO you want to use, create that ISO and download it. You're on your own with this one. 🙃

![uupdump](_media/uupdump.png)

> [!ATTENTION]
> It would be a good idea to download the network drivers for your motherboard from the vendor. With my current computer the Windows installer doesn't load them, so I have to manually select them to get networking to work. Or, you could just skip hooking up to the network till after you are in Windows.

<br /><br /><span style="font-size: 24px; float:right;">**[This is why you're here, what to do after you reinstall Windows 11! ➡️](after.md)**</span><br /><br /><br />
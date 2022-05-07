# thecus-nas
This repo is a playground to experiment with a thecus nas. Goal is to get the LCD &amp; HDD LEDs/GPIOs working. Currently is arch running and its working fine. 


- https://github.com/ipilcher/n5550/issues/18
- https://github.com/jncronin/pymonitor
- https://www.youtube.com/watch?v=f2IvOeY00_Q
- https://wiki.chaostreff.ch/index.php/Thecus_n5200_Debian#LCD_Display
- https://wiki.debian.org/InstallingDebianOn/Thecus/N2800


# Analyse OOBM
```
\2\1\0
```
Prefix für alle Befehle?

```
\30mdadm
```
muss nicht mdadm sein, muss aber gleich lang sein.

```
\0\1\0\0
```
?

\3Disk 3 Rebuilding

    0 = cmd
    1 = Debug
    2 = Inform
    3 = Notice
    4 = Warning
    5 = Error
    6 = crash ;-)
    
```
\0\372\267\1\3 
```


# Missing ACPI driver
```
[    9.372123] ACPI Warning: SystemIO range 0x0000000000000428-0x000000000000042F conflicts with OpRegion 0x0000000000000429-0x0000000000000429 (\PM2S) (20200925/utaddress-204)
[    9.372147] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    9.372156] ACPI Warning: SystemIO range 0x00000000000004B0-0x00000000000004BF conflicts with OpRegion 0x00000000000004B8-0x00000000000004BB (\GPO2) (20200925/utaddress-204)
[    9.372172] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    9.372178] ACPI Warning: SystemIO range 0x0000000000000480-0x00000000000004AF conflicts with OpRegion 0x000000000000048C-0x000000000000048F (\GPO) (20200925/utaddress-204)
[    9.372192] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    9.372196] lpc_ich: Resource conflict(s) found affecting gpio_ich
```

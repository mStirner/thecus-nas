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

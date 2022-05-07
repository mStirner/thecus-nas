#!/bin/sh

fillmsg(){
    unset FILL
    unset LENGTH
    LENGTH=`echo $1 | wc -m`
    FILL=`echo $2-$LENGTH | bc`
    for i in `seq 0 $FILL`; do  echo -n " "; done
}


INFO1="Test test"
FILLCHARS1=`fillmsg "$INFO1" 20`

INFO2="LAN1: 10.1.11.20"
FILLCHARS2=`fillmsg "$INFO2" 19`

INFO3="LAN2: 0.0.0.0"
FILLCHARS3=`fillmsg "$INFO3" 20`

INFO4="Linux 2.6.19.2"
FILLCHARS4=`fillmsg "$INFO4" 20`

printf "\2\1\0U\31$INFO1$FILLCHARS1\0$INFO2$FILLCHARS2\0\0$INFO3$FILLCHARS3\000$INFO4$FILLCHARS4\0\3" > /dev/ttyS1

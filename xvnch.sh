#!/bin/bash
printf "\nXVNC Starter\n\n (c) 2018 GNS Systems GmbH\n     by Julien Deseke-Wendt\n     julien.deseke-wendt@gns-systems.de\n\n"
sleep 1

 
X11=`pgrep x11vnc`;

if [ "$X11" == "" ]; then

	export DISPLAY=:0.0
	xhost +
	x11vnc -auth guess -display :0.0 -bg -reopen -forever > /tmp/x11vncstart.$(date "+%Y%m%d%H%M%S").txt 2>&1
	
	if [ "$X11" == "" ]; then
	echo "Alle Dienste gestartet."

	else 
	echo "hmm... something smells fishy..."
   fi

else 
	printf "Es l\Ufffffffft bereits alles N\Uffffffffe ($X11) :-)\n"

fi

exit 0

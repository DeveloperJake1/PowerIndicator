b='\033[0;34m';g='\033[0;32m'
echo -e "${g}>>> ${b}Launch the Power Indicator? (This will lock this tab of your terminal.)${NC}${NC}"
echo "[y|n]"
afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/AlertRepeat.aiff
read confirmation
if [ "$confirmation" == "n" ] 
then
 afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/Alert.aiff
 exit
elif [ "$confirmation" == "y" ]
then 
 afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/Alert.aiff
 clear
else
 afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/ActionsAvailable.aiff
 echo "Unknown or incorrect input: \"$confirmation\""
 exit
fi
#support creator on yt: https://www.youtube.com/c/developerjake
canDetect='true' 
canOffDetect='true'
r='\033[0;31m'
o='\033[0;33m'
y='\033[1;93m'
g='\033[0;32m'
bl='\033[1;34m'
NC='\033[0m'
flb='\033[0;37m'
fg='\033[5;32m'
d='\033[5;34m'
e='\033[5;34m'
bo='\e[4m'
nbo='\e[0m'
clear; clear; clear; clear; clear;
echo -e "
${fg}██████╗░░█████╗░░██╗░░░░░░░██╗███████╗██████╗░${NC}  ${flb}██╗███╗░░██╗██████╗░██╗░█████╗░░█████╗░████████╗░█████╗░██████╗░${NC}
${fg}██╔══██╗██╔══██╗░██║░░██╗░░██║██╔════╝██╔══██╗${NC}  ${flb}██║████╗░██║██╔══██╗██║██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗${NC}
${fg}██████╔╝██║░░██║░╚██╗████╗██╔╝█████╗░░██████╔╝${NC}  ${flb}██║██╔██╗██║██║░░██║██║██║░░╚═╝███████║░░░██║░░░██║░░██║██████╔╝${NC}
${fg}██╔═══╝░██║░░██║░░████╔═████║░██╔══╝░░██╔══██╗${NC}  ${flb}██║██║╚████║██║░░██║██║██║░░██╗██╔══██║░░░██║░░░██║░░██║██╔══██╗${NC}
${fg}██║░░░░░╚█████╔╝░░╚██╔╝░╚██╔╝░███████╗██║░░██║${NC}  ${flb}██║██║░╚███║██████╔╝██║╚█████╔╝██║░░██║░░░██║░░░╚█████╔╝██║░░██║${NC}
${fg}╚═╝░░░░░░╚════╝░░░░╚═╝░░░╚═╝░░╚══════╝╚═╝░░╚═╝${NC}  ${flb}╚═╝╚═╝░░╚══╝╚═════╝░╚═╝░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝${NC}
"
afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/ExitingMultiSelect.aiff
echo -e "${o}█   █▀▀ ▄▀█ █▄░█   █▀▄ █▀█   █▀ ▀█▀ █░█ █▀▀ █▀▀   █░█░█ █░█ █▀▀ █▄░█   █ ▀ █▀▄▀█   █▀█ █░░ █░█ █▀▀ █▀▀ █▀▀ █▀▄  █ █▄░█ █
█   █▄▄ █▀█ █░▀█   █▄▀ █▄█   ▄█ ░█░ █▄█ █▀░ █▀░   ▀▄▀▄▀ █▀█ ██▄ █░▀█   █ ░ █░▀░█   █▀▀ █▄▄ █▄█ █▄█ █▄█ ██▄ █▄▀  █ █░▀█ ▄ ${NC}"
afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/LinkBegin.aiff
echo ""; echo -e "${r}(This Tab is now reserved for the Power Indicator, so press 'cmd + T' to use the terminal in a different tab.)${NC}"; echo -e "${g}>>>${NC} ${bl}Read the READ_ME.txt!${NC}"; echo -e "${g}>>>${NC} ${bl}Support me at https://www.youtube.com/c/developerjake ${NC}"; echo ""; echo ""; echo -e "${b}<><><><><><><><><><><><><><><><><><><><><><><><><><>${NC}"; echo ""; echo "";
while true; do   
 detection=$(osascript osa/PowerIndicator.scpt)
 if [ "$detection" == "Yes" ]  
 then 
  if [ "$canDetect" == "true" ] 
  then 
   #-
    # replace all of area with your own function :: this happens automatically when mac gets plugged into the wall power
   
    echo "I'm charging now."

    # afplay Sounds/default_connect_power.aif #<< default plug in sound 

    afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/LayoutChanged.aiff &#<< custom plug in sound 1

    afplay Sounds/anime_connect_power.mp3 &#<< custom plug in sound 2

   #-

   canDetect='false' # dont replace this
   canOffDetect='true' # dont replace this
  fi
 else
  if [ "$canOffDetect" == "true" ]
  then
   #-
    # replace all of area with your own function :: this happens automatically when your mac is unplugged from the wall power

    echo "I'm not charging now.
    "

    afplay /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/BrailleDisplayDisconnected.aiff &#<< custom disconnect sound 1

    afplay Sounds/anime_disconnect_power.mp3 &#<< custom disconnect sound 2

   #-

   canOffDetect='false' # dont replace this
   canDetect='true' # dont replace this
  fi
 fi
done

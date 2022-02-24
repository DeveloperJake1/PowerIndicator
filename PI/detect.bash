#support creator on yt: https://www.youtube.com/c/developerjake
canDetect='true' #very lazy booleans
canOffDetect='true'
while true; do   
 detection=$(osascript osa/PowerIndicator.scpt)
 if [ "$detection" == "Yes" ]  
 then 
  if [ "$canDetect" == "true" ] 
  then 
   #------------
    # replace this area with your own function :: this happens automatically when mac gets plugged into the wall power
   
    echo "I'm charging now."
    afplay Sounds/anime_connect_power.mp3 #<< CUSTOM PLUG IN SOUND

   #------------
   canDetect='false' 
   canOffDetect='true'
  fi
 else
  if [ "$canOffDetect" == "true" ]
  then
   #------------
    # replace this area with your own function :: this happens automatically when your mac is unplugged from the wall power

    echo "I'm not charging now."
    afplay Sounds/anime_disconnect_power.mp3

   #------------
   canOffDetect='false'
   canDetect='true'
  fi
 fi
done
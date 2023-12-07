#! /bin/bash

echo "
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
               &&%/***,,,,(&&&&&&&&&&&&&&&&&&&&@@@@&@&,.,*///*,.                
          %&&&&&&&&&&&&&&&&&&&&&@&&&&&&&&&&&&&@@#&*.,*////////**,.              
                  /*,,,,,,**/      ,,,,,,,,***,.,*////////*******(.%,//((*#     
                           &&#/#(//((*///*/.,**//@//@/**********,#* #%     (*   
                   #&/(((((/((/(//(/*/*.,,**//(//@@@*#******,.*,.. (*      *(   
              (&&&(#(///#((((//%#* .,,*******/%****&%*,,,,/,.,.,      #(#(      
           %&&&&&@&#(/%&,(     ,,,****************,,,,/,., /                    
                           ,,,*****************,,,/,.,                          
                       ,,******************,,,/,., ,                            
                   .,,*****************,,,*,.. (                                
               .,******************,,,,,,, /                                    
             .*****************,,,,*,*.(&&&#(                                   
            .,,************,,,,/,.  (#%&&%##%%&(&@@@@&&&##%&&&&&&&&&%#          
            ,#%%% *****,,,,/,,.,(##&@&,/%@@@@%@@&&&(@&&((#%&&&&&(/.             
             (%,,,,,,,,,,,..#*(#%%%&&&&&&&&&@&@@@@@&&##%&&&%                    
               * ,*,,,..(#(**,.. .,#                 (&*#@@@@@&&%               
                                                           /&&/*&&&&&%          
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                "
echo "


  _________       .__                  ____  __.      .__  _____        ___________           .__   
 /   _____/_  _  _|__| ______ ______  |    |/ _| ____ |__|/ ____\____   \__    ___/___   ____ |  |  
 \_____  \\ \/ \/ /  |/  ___//  ___/  |      <  /    \|  \   __\/ __ \    |    | /  _ \ /  _ \|  |  
 /        \\     /|  |\___ \ \___ \   |    |  \|   |  \  ||  | \  ___/    |    |(  <_> |  <_> )  |__
/_______  / \/\_/ |__/____  >____  >  |____|__ \___|  /__||__|  \___  >   |____| \____/ \____/|____/
        \/                \/     \/           \/    \/              \/                              

"
echo "made by threee3k/3lka"
sleep 2
echo "Welcome to SKT, Swiss Knife Tool, an all in one hacking script made simple!"
echo "Visit the Github page for instructions"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
echo "Choose the attack's category"
echo "------------------------------------"
echo "Wifi-Related Attacks(1)"
echo "------------------------------------"
echo "Website Attacks(2)"
echo "------------------------------------"
echo "Reverse Shell Attacks(3)"
echo "------------------------------------"
echo "Social Engineering(4)"
echo "------------------------------------"

read ATTACKCATEGORY
if [[ $ATTACKCATEGORY == '1' ]]
then
    cd categorys/wifiattacks
    clear
    ./wifiattacks.sh
    bash wifiattacks.sh

fi

if [[ $ATTACKCATEGORY == '2' ]]
then
  cd categorys/websiteattacks
  clear
  ./websiteattacks.sh
  bash websiteattacks.sh

fi



if [[ $ATTACKCATEGORY == '3' ]]
then
    cd categorys/reverseshellattacks
    clear
    ./reverseshellattacks
    bash reverseshellattacks.sh

fi


if [[ $ATTACKCATEGORY == '4' ]]
then
    cd categorys/socialengineering
    clear
    ./socialengineering.sh
    bash socialengineering.sh

fi



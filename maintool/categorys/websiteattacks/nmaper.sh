#! /bin/bash


echo "
                                                                                                    
                                    /&(&(/@&**#&@@@@@@&*/@*&&/&/                                    
                              **/@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@&,&                              
                         /**#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*@@**&@                         
                     *(#/@@@@@@@@@@@&((//(%%%%#%%%%#(%(#%(%/((/(@@@@@@@@@@@@*@&(                    
                 /*/*@@@%@@@@@@(&(&#%%%&%%%#%%#####&&&&&&%%%%&%##&%/%#@@@%@@@@@@@@@                 
              @&@@@@@@*@@@@&@(&&&&%#%&%&%########%&%##&&##%%%&%%###&&&&*@%@@@@(@@/@&(&%             
          */@#@@@@@@@@@&@/&&&&&&&#&&&%#&#%####****/****&###%%&%#&#&&&&&&&&&&@/@@*@@@@@@@@*          
       @@@@@@@@@@@@@(&&&&&&&&&&&&####&&&%#%%/*****/*****(%%#%%&&&&##&&&&&&&&&&&/@#@@@#@@@@**//      
     *&&@@@@@/@(@%@@@@@@@@@@@@@@@#%&&&&&%%%%/**%*&&**(**/%%%%#&&&&&&@@@@@@@@@@@@@@@#@&@@@@@@@(/@    
   %@@@@@@@@(/@#@@@@@@@@@@@@@@@@@&%&@@&&%%%%&/***(%****/%%%%&&&@@%%%@@@@@@@@@@@@@@@@%%&#&@@(@@@@**  
   &&&&&&%@@&&%%#@@@@@@@@@@@@@@@@@%&%%@&%&%%%%&(/*/*/(%%%%&&&&@&&&&@@@@@@@@@@@@@@@@###%%@@@(&&&#&&  
    *&%/&*&&&&&&&//,/(&@@@@@@@@@@@@&&&@@@&&&%%%%%%%%%%%%&&&%@%&&%%@@@@@@@@@@@&((/%%&&&/&&&/#/&((    
              /&*&&/&&&&&((,#&@@@@@@@%&&%%%&&%&%&&&%%%&&%&&@%&%&@@@@@@@#/(&%&&&//&/##*              
                     *&&&*&&*&&%&&&&@@@&%&&&#&%%&&&&&%&&%&#%#@@@&&&&//&&&&&&%,&                     
                          /&&&*&&&&&&%&&/#&(&#&#&&&&&#&&#&#(&%/&&&&*&&***&                          
                               &**#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&&&*                              
                                   (%*%(%*#%%%%%&%%%%%%%%%*%%,(%#           ,,.,                   
"



echo "Welcome to Nmaper! A tool to help you use Nmap and guide you through it's many ticks/dashes (a horrible explanation, please go to nmap.org)"
echo "
    TARGET SPECIFICATION:
        -iL *FILELOCATION* | scan whatever targets are in the specified file
        -iR | chooses random targets
    HOST DISCOVERY:
        -sL | Lists target's other addresses
        -sn | Ping scan, use this if you don't have a port
        -Pn | basically, if your ping probes are getting blocked, use this
    SCAN TECHNIQUES:
        -sT | TCP (3-way-hanshake) 
        -sS | Stealthier version of -sT
    PORT SPECIFICATION AND SCAN ORDER:
        -p *PORT(s)* | Only scans specified ports
        --exclude-ports *PORTS | Don't scan specified ports
        -F | Fast port scan
        -r | Scan ports sequentially, slower version of -F
        --top-ports *NUMBER* | Scans the top most used ports
        --port-ratio *NUMBER* | Scans ports above specified ratio
    OUTPUT:
        -oN | Output scan results in normal 
        -oX | Output scan results in XML
        -oG *FILENAME* | Output scan results in specified file
        --reason | Show why a port is in that state
        --open | Only show open ports
        --packet-trace | Show all packets sent and recieved
        --resume *FILENAME* | Resume an aborted scan
    MISC:
        -6 | Enable IPv6 scanning
        -A | Enable OS detection, Version detection, script scanning and traceroute
        --send-eth / --send-ip | Send raw packets
        --privileged | Assume that the user is fully privileged
        --unprivileged | Assume the user lacks raw socket privileges
        -V | print version number
        -h | Print the nmap help screen
"


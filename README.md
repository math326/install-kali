Para instalar todas ferramentas do kali linux em sua maquina Debian ou Ubuntu de esses comandos:

git clone git clone https://github.com/math326/install-kali.git

cd install-kali

chmod +x install-kali.sh

sudo su

sudo bash install.sh

Ele fará a instalação de ferramentas como:
Metasploit, Wireshark, Nmap, Aircrack-ng, Burp Suite, Hydra, Gobuster, Sqlmap, John the Ripper, Hashcat, Responder, BloodHound, Maltego, WPScan, Nikto, Impacket scripts, Ettercap, Bettercap, Snort, Tcpdump, Dirbuster / Dirsearch, TheHarvester, Wifite / Wifiphisher, Mimikatz, Netcat, Crunch, BeEF-XSS, Autopsy, DVWA

Esse download de conjunto de ferramentas do kali linux pode passar de 20GB 
então será nescessario ter no minimo 80GB de disco em sua maquina para fazer essa instalação.

PARA INSTALAR FERRAMENTAS DO KALI NO ARCH LINUX DE ESSES COMANDOS

sudo pacman -S curl
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo su
bash strap.sh
sudo pacman -S nmap metasploit hydra aircrack-ng john sqlmap burpsuite wireshark-qt whatweb

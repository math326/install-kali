#!/bin/bash
set -euo pipefail

# Script para adicionar repositório do Kali e instalar ferramentas
# Uso: sudo ./install-kali.sh

if [ "$(id -u)" -ne 0 ]; then
  echo "Execute este script com sudo/root."
  exit 1
fi

echo "1) Adicionando repositório do Kali ao sources.list..."
grep -q "http.kali.org/kali" /etc/apt/sources.list || \
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list

echo "2) Importando chave GPG do Kali..."
wget -q -O - https://archive.kali.org/archive-key.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/kali.gpg > /dev/null

echo "3) Atualizando pacotes..."
sudo apt update

echo "4) Instalando metapacote kali-linux-everything..."
sudo apt install nmap metasploit-framework hydra aircrack-ng john sqlmap wireshark tcpdump ncat netcat whatweb gobuster -y

echo "Instalação concluída!"

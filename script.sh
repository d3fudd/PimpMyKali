clear
echo '        _______ ____          __    __            _                                           __         ___  '
echo '   ____/ /__  // __/_  ______/ /___/ /     ____  (_)___ ___  ____       ____ ___  __  __     / /______ _/ (_) '
echo '  / __  / /_ </ /_/ / / / __  / __  /_____/ __ \/ / __ `__ \/ __ \     / __ `__ \/ / / /    / //_/ __ `/ / /  '
echo ' / /_/ /___/ / __/ /_/ / /_/ / /_/ /_____/ /_/ / / / / / / / /_/ /    / / / / / / /_/ /    / ,< / /_/ / / /   '
echo ' \__,_//____/_/  \__,_/\__,_/\__,_/     / .___/_/_/ /_/ /_/ .___/____/_/ /_/ /_/\__, /____/_/|_|\__,_/_/_/    '
echo '                                       /_/               /_/   /_____/         /____/_____/                   '

setxkbmap -model abnt2 -layout br -variant abnt2
cd /opt

echo ' '
echo ' [*] Atualizando repositório'
echo ' '
dpkg --add-architecture i386
apt update

echo ' '
echo ' [*] Instalando Python 3.10.0'
echo ' '
curl -O https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
tar xzf Python-3.10.0.tgz
rm Python-3.10.0.tgz
cd Python-3.10.0
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-3.10.0/

echo ' '
echo ' [*] Instalando Python 3.9.0'
echo ' '
curl -O https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar xzf Python-3.9.0.tgz
rm Python-3.9.0.tgz
cd Python-3.9.0
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-3.9.0/

echo ' '
echo ' [*] Instalando Python 2.8.0'
echo ' '
curl -O https://www.python.org/ftp/python/2.8/Python-2.8.tgz
tar xzf Python-2.8.tgz
rm Python-2.8.tgz
cd Python-2.8
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-2.8/

echo ' '
echo ' [*] Instalando Python 2.7.0'
echo ' '
curl -O https://www.python.org/ftp/python/2.7/Python-2.7.tgz
tar xzf Python-2.7.tgz
rm Python-2.7.tgz
cd Python-2.7
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-2.7/

echo ' '
echo ' [*] Instalando slapd'
echo ' '
apt install slapd -y
echo ' '
echo ' [*] Instalando ldap-utils'
echo ' '
apt install ldap-utils -y
echo ' '
echo ' [*] Instalando gobuster'
echo ' '
apt install gobuster -y
echo ' '
echo ' [*] Instalando terminator'
echo ' '
apt install terminator -y
echo ' '
echo ' [*] Instalando rlwrap'
echo ' '
apt install rlwrap -y
echo ' '
echo ' [*] Instalando libwine'
echo ' '
apt install libwine -y
echo ' '
echo ' [*] Instalando wine'
echo ' '
apt install wine -y
echo ' '
echo ' [*] Instalando wine32'
echo ' '
apt install wine32 -y
echo ' '
echo ' [*] Instalando winetricks'
echo ' '
apt install winetricks -y
echo ' '
echo ' [*] Instalando kali-wallpapers-legacy'
echo ' '
apt install kali-wallpapers-legacy -y
echo ' '
echo ' [*] Instalando nuclei'
echo ' '
apt install nuclei -y
echo ' '
echo ' [*] Instalando dirsearch'
echo ' '
apt install dirsearch -y
echo ' '
echo ' [*] Instalando redis-tools'
echo ' '
apt install redis-tools -y
echo ' '
echo ' [*] Instalando figlet'
echo ' '
apt install figlet -y
echo ' '
echo ' [*] Instalando toilet'
echo ' '
apt install toilet -y
echo ' '
echo ' [*] Instalando fcrackzip'
echo ' '
apt install fcrackzip -y
echo ' '
echo ' [*] Instalando freerdp2-x11'
echo ' '
apt install freerdp2-x11 -y
echo ' '
echo ' [*] Instalando bettercap'
echo ' '
apt install bettercap* -y
echo ' '
echo ' [*] Instalando jd-gui'
echo ' '
apt install jd-gui -y
echo ' '
echo ' [*] Instalando apktool'
echo ' '
apt install apktool -y
echo ' '
echo ' [*] Instalando smali'
echo ' '
apt install smali -y
echo ' '
echo ' [*] Instalando dex2jar'
echo ' '
apt install dex2jar -y
echo ' '
echo ' [*] Instalando jadx'
echo ' '
apt install jadx -y
echo ' '
echo ' [*] Instalando dsniff'
echo ' '
apt install dsniff -y
echo ' '
echo ' [*] Instalando libc6-dev:i386'
echo ' '
apt install libc6-dev:i386 -y
echo ' '
echo ' [*] Instalando libssl-dev:i386'
echo ' '
apt install libssl-dev:i386 -y
echo ' '
echo ' [*] Instalando seclists'
echo ' '
apt install seclists -y
echo ' '
echo ' [*] Instalando isc-dhcp-server'
echo ' '
apt install isc-dhcp-server -y
echo ' '
echo ' [*] Instalando proxychains'
echo ' '
apt install proxychains -y
echo ' '
echo ' [*] Instalando tor'
echo ' '
apt install tor -y
echo ' '
echo ' [*] Instalando mingw-w64'
echo ' '
apt install mingw-w64 -y
echo ' '
echo ' [*] Instalando lynx'
echo ' '
apt install lynx -y
echo ' '
echo ' [*] Instalando libssl-dev'
echo ' '
apt install libssl-dev -y
echo ' '
echo ' [*] Instalando python3-venv'
echo ' '
apt install python3-venv -y
echo ' '
echo ' [*] Instalando sqlplus'
echo ' '
apt install oracle-instantclient-sqlplus -y
echo ' '
echo ' [*] Instalando systemd-resolved'
echo ' '
apt install systemd-resolved openvpn-systemd-resolved -y
echo ' '
echo ' [*] Instalando pwntools'
echo ' '
pip install pwntools

apt autoremove -y && apt autoclean

echo ' '
echo ' [*] Instalando Rustscan'
echo ' '
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
dpkg -i rustscan_2.0.1_amd64.deb
rm rustscan_2.0.1_amd64.deb

echo ' '
echo ' [*] Descompactando rockyou.txt e convertendo em UTF-8'
echo ' '
gunzip /usr/share/wordlists/rockyou.txt.gz
iconv -f ISO-8859-1 -t UTF-8 /usr/share/wordlists/rockyou.txt > /usr/share/wordlists/rockyou_utf8.txt
rm /usr/share/wordlists/rockyou.txt
mv /usr/share/wordlists/rockyou_utf8.txt /usr/share/wordlists/rockyou.txt

echo ' '
echo ' [*] Criando wordlist best.txt em /usr/share/wordlists/dirb/'
echo ' '
cat /usr/share/wordlists/dirb/big.txt /usr/share/wordlists/dirb/common.txt /usr/share/wordlists/dirb/small.txt | tr '\r' '\n' | sort -u > /usr/share/wordlists/dirb/best.txt

echo ' '
echo ' [*] Instalando pip2'
echo ' '
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py
rm get-pip.py

echo ' '
echo ' [*] Fazendo downgrade do OpenVPN para a versao 2.5.1-3'
echo ' '
apt remove --purge openvpn
git clone https://github.com/d3fudd/Pimp_my_Kali
cd Pimp_my_Kali
dpkg -i libssl1.1_1.1.1w-0+deb11u1_amd64.deb
dpkg -i openvpn_2.5.1-3_amd64.deb
apt-mark hold openvpn
cd ..
rm -rf Pimp_my_Kali

echo ' '
echo ' [*] Finalizando...'
echo ' '
updatedb

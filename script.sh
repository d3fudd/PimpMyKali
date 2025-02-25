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

cd /opt
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

cd /opt
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

cd /opt
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
echo ' [*] Instalando libssl-dev e build-essential'
echo ' '
apt install libssl-dev build-essential libbz2-dev libssl-dev libreadline-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libffi-dev zlib1g-dev libncurses5-dev libncursesw5-dev -y

cd /opt
echo ' '
echo ' [*] Instalando Python 2.7.0'
echo ' '
curl -O https://www.python.org/ftp/python/2.7/Python-2.7.tgz
tar xzf Python-2.7.tgz
rm Python-2.7.tgz
cd Python-2.7
./configure --enable-optimizations
make altinstall
./configure --with-ssl
make
make install
cd ..
rm -rf Python-2.7/

cd /opt
echo ' '
echo ' [*] Instalando python2-dev'
echo ' '
apt install python2-dev -y

cd /opt
echo ' '
echo ' [*] Instalando pip2.7'
echo ' '
apt install zlib1g-dev -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2 get-pip.py
rm get-pip.py

echo ' '
echo ' [*] Instalando setuptools para o python2.7'
echo ' '
pip2.7 install setuptools==44.1.1

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
echo ' [*] Instalando libreoffice'
echo ' '
apt install libreoffice -y

echo ' '
echo ' [*] Instalando bloodhound'
echo ' '
apt install bloodhound.py -y
apt install bloodhound -y

echo ' '
echo ' [*] Instalando CrackMapExec'
echo ' '
apt install crackmapexec -y

echo ' '
echo ' [*] Instalando systemd-resolved'
echo ' '
apt install systemd-resolved openvpn-systemd-resolved -y

echo ' '
echo ' [*] Instalando pwntools'
echo ' '
apt install python3-pwntools
pip2.7 install pwntools

echo ' '
echo ' [*] Instalando kerberos'
echo ' '
apt install krb5-config
apt install libkrb5-dev
pip3 install kerberos
pip2 install kerberos

echo ' '
echo ' [*] Instalando paramiko no python 2.7'
echo ' '
pip2.7 install paramiko

apt autoremove -y && apt autoclean

echo ' '
echo ' [*] Instalando Rustscan'
echo ' '
wget https://github.com/RustScan/RustScan/releases/download/2.3.0/rustscan-2.3.0-x86_64-linux.zip;
unzip rustscan-2.3.0-x86_64-linux.zip;
mv tmp/rustscan-2.3.0-x86_64-linux/rustscan /usr/bin ;
rm -rf rustscan-2.3.0-x86_64-linux.zip tmp ;

echo ' '
echo ' [*] Descompactando rockyou.txt e convertendo em UTF-8'
echo ' '
gunzip /usr/share/wordlists/rockyou.txt.gz
iconv -f ISO-8859-1 -t UTF-8 /usr/share/wordlists/rockyou.txt > /usr/share/wordlists/rockyou_utf8.txt
rm /usr/share/wordlists/rockyou.txt
mv /usr/share/wordlists/rockyou_utf8.txt /usr/share/wordlists/rockyou.txt

echo ' '
echo ' [*] Criando wordlist best_common.txt e best_big.txt em /usr/share/wordlists/dirb/'
echo ' '
wget https://github.com/d3fudd/Wordlists/releases/download/release/best_common.txt;
wget https://github.com/d3fudd/Wordlists/releases/download/release/best_big.txt;
mv best_common.txt /usr/share/wordlists/dirb/best_common.txt;
mv best_big.txt /usr/share/wordlists/dirb/best_big.txt;

echo ' '
echo ' [*] Baixando sysinternals da Microsoft'
echo ' '
cd /opt
mkdir SysinternalsSuite
cd SysinternalsSuite
wget https://download.sysinternals.com/files/SysinternalsSuite.zip
unzip SysinternalsSuite.zip
cd /opt

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

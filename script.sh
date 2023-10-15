setxkbmap -model abnt2 -layout br -variant abnt2

cd /opt
dpkg --add-architecture i386
apt update -y
apt upgrade -y
apt autoremove -y && apt autoclean

curl -O https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar xzf Python-3.9.0.tgz
rm Python-3.9.0.tgz
cd Python-3.9.0
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-3.9.0/

curl -O https://www.python.org/ftp/python/2.7/Python-2.7.tgz
tar xzf Python-2.7.tgz
rm Python-2.7.tgz
cd Python-2.7
./configure --enable-optimizations
make altinstall
cd ..
rm -rf Python-2.7/

apt install i3 sddm gobuster terminator rlwrap libwine wine wine32 winetricks kali-wallpapers-legacy nuclei dirsearch redis-tools figlet toilet fcrackzip freerdp2-x11 bettercap* gobuster jd-gui apktool smali dex2jar jadx dsniff libc6-dev:i386 libssl-dev:i386 seclists isc-dhcp-server proxychains tor mingw-w64 lynx -y
apt remove lightdm kali-desktop-xfce light-locker
apt autoremove -y && apt autoclean

wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
dpkg -i rustscan_2.0.1_amd64.deb
rm rustscan_2.0.1_amd64.deb

sudo apt install libssl-dev python3-venv
pip install pwntools
gunzip /usr/share/wordlists/rockyou.txt.gz
iconv -f ISO-8859-1 -t UTF-8 /usr/share/wordlists/rockyou.txt > /usr/share/wordlists/rockyou_utf8.txt
rm /usr/share/wordlists/rockyou.txt
mv /usr/share/wordlists/rockyou_utf8.txt /usr/share/wordlists/rockyou.txt

apt remove --purge openvpn
wget http://sft.if.usp.br/debian/pool/main/o/openvpn/openvpn_2.5.1-3_amd64.deb
wget http://ftp.de.debian.org/debian/pool/main/o/openssl/libssl1.1_1.1.1w-0+deb11u1_amd64.deb
dpkg -i libssl1.1_1.1.1w-0+deb11u1_amd64.deb
dpkg -i openvpn_2.5.1-3_amd64.deb
apt-mark hold openvpn
rm *.deb

updatedb
cd /home/kali

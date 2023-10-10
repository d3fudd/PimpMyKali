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

apt install libwine wine wine32 winetricks kali-wallpapers-legacy nuclei dirsearch redis-tools figlet toilet fcrackzip freerdp2-x11 bettercap* gobuster jd-gui apktool smali dex2jar jadx dsniff libc6-dev:i386 libssl-dev:i386 seclists bless isc-dhcp-server proxychains tor mingw-w64 lynx -y

wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
dpkg -i rustscan_2.0.1_amd64.deb
rm rustscan_2.0.1_amd64.deb

updatedb
cd /home/kali

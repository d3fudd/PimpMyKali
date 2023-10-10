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

wget https://github.com/maurosoria/dirsearch/archive/refs/tags/v0.4.3.zip
unzip v0.4.3.zip
rm v0.4.3.zip
mv dirsearch-0.4.3 dirsearch

apt install libwine wine wine32 winetricks kali-wallpapers-legacy nuclei redis-tools figlet toilet fcrackzip freerdp2-x11 bettercap* gobuster jd-gui apktool smali dex2jar jadx dsniff libc6-dev:i386 libssl-dev:i386 seclists bless isc-dhcp-server proxychains tor mingw-w64 lynx -y

echo ' ' >> ~/.bashrc
echo '# Meus PATHS personalizados' >> ~/.bashrc
echo 'export PATH="$PATH:/opt/dirsearch/"' >> ~/.bashrc

echo ' ' >> /home/kali/.bashrc
echo '# Meus PATHS personalizados' >> /home/kali/.bashrc
echo 'export PATH="$PATH:/opt/dirsearch/"' >> /home/kali/.bashrc

cd /home/kali

# update
sudo dpkg --add-architecture i386
sudo apt-get -y update
sudo apt-get -y upgrade
# deps
sudo apt-get -y install git build-essential
sudo apt-get -y install g++-multilib
sudo apt-get -y install unzip socat binwalk exiftool imagemagick nmap pngcheck foremost valgrind steghide tree upx
sudo apt-get -y install python2.7 python-pip
sudo apt-get -y install ruby-full
sudo apt-get -y install python-dev libssl-dev libffi-dev libpcap-dev libncurses-dev libgmp3-dev virtualenvwrapper pkg-config
sudo apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get -y install gdb gdb-multiarch
# nodejs
# curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# sudo apt-get -y install nodejs
# create dir
mkdir -p ~/tools
# radare2
git clone https://github.com/radare/radare2 ~/tools/radare2
cd ~/tools/radare2
./sys/install.sh
echo "radare2 installed"
cd ~
sudo pip install r2pipe
# r2dec
r2pm init
r2pm install r2dec

# libc-database
#git clone https://github.com/niklasb/libc-database.git ~/tools/libc-database
#cd ~/tools/libc-database
#./add /lib/i386-linux-gnu/libc.so.6
#./add /lib/x86_64-linux-gnu/libc.so.6
#./get
#cd ~

# gdb peda
# git clone https://github.com/longld/peda.git ~/tools/peda
# echo "source ~/tools/peda/peda.py" >> ~/.gdbinit
# echo "DONE! debug your program with gdb and enjoy"
# gef
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
# pwntools
sudo pip install --upgrade pip
sudo pip install --upgrade pwntools
echo "pwntools installed"
# one_gadget
sudo gem install one_gadget
# seccomp-tools
sudo gem install seccomp-tools
# zsteg
sudo gem install zsteg
# sqlmap
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git ~/tools/sqlmap-dev
# SecLists
# git clone https://github.com/danielmiessler/SecLists.git ~/tools/SecLists

# tensorflow and keras
sudo pip install tensorflow
sudo pip install keras

# z3 (included in angr)
# git clone https://github.com/Z3Prover/z3.git ~/tools/z3
# cd ~/tools/z3
# python scripts/mk_make.py --python
# cd build
# make
# make install
# cd ~
# imgcat
sudo mkdir -p bin
cd ~/bin
sudo wget https://www.iterm2.com/utilities/imgcat
sudo chmod +x imgcat
cd ~
# z script
git clone https://github.com/rupa/z.git ~/tools/z
echo ". ~/tools/z/z.sh" >> ~/.bashrc
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/tools/fzf
yes | ~/tools/fzf/install
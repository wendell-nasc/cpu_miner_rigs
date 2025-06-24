# For both Ubuntu 22.04 (Jammy) and 24.04 (Noble):
sudo apt install git wget build-essential cmake clang libssl-dev libudns-dev libc++-dev lld libsodium-dev

# A Complete Guide To Install Clang LLVM Compiler on Ubuntu 22.04
https://orcacore.com/install-clang-llvm-ubuntu22/

sudo apt-get remove --purge clang llvm lldb
sudo apt-get autoremove
sudo apt-get install clang-14 llvm-14 lldb-14

clang --version
clang++ --version
llvm-config --version

sudo ln -sf /usr/bin/clang-14 /usr/bin/clang
sudo ln -sf /usr/bin/clang++-14 /usr/bin/clang++
sudo ln -sf /usr/bin/llvm-config-14 /usr/bin/llvm-config

clang --version
clang++ --version
llvm-config --version



--TNN
https://drive.google.com/file/d/1wqzkFq6ViCpcHrM2g_xvXrysA6IWljZu/view?usp=drive_link

https://drive.usercontent.google.com/u/0/uc?id=1wqzkFq6ViCpcHrM2g_xvXrysA6IWljZu&export=download

https://www.transfernow.net/dl/20241001M0H6pS6E

https://drive.google.com/file/d/1wqzkFq6ViCpcHrM2g_xvXrysA6IWljZu/view?usp=sharing


wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1wqzkFq6ViCpcHrM2g_xvXrysA6IWljZu' -O tnn.tar.gz





https://drive.google.com/file/d/1wqzkFq6ViCpcHrM2g_xvXrysA6IWljZu/edit
https://anotepad.com/notes/r7mfjfhk

wget https://gitlab.com/Tritonn204/tnn-miner/-/releases/0.4.1/downloads/Tnn-miner-amd64-0.4.1.tar.gz
tar xvf Tnn-miner-amd64-0.4.1.tar.gz
sudo ./Tnn-miner


wget https://gitlab.com/Tritonn204/tnn-miner/-/archive/main/tnn-miner-main.tar
tar xvf tnn-miner-main.tar


wget https://github.com/StickyFingaz420/tnn-miner-v0.3.3/raw/refs/heads/main/tnn-miner-v0.3.3.br1.1.tar.gz
tar xvf tnn-miner-v0.3.3.br1.1.tar.gz


sudo dpkg --configure -a
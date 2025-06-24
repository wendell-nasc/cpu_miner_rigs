# astrobwt-miner

https://github.com/dero-am/astrobwt-miner




Dev fee
dev fee is 4.9%




https://github.com/dero-am/astrobwt-miner/releases/tag/V1.9.2.R5


- separado
mkdir /home/wendell/astrominer
cd /home/wendell/astrominer
sudo wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.2.R5/astrominer-V1.9.2.R5_amd64_linux.tar.gz
sudo tar xvf astrominer-V1.9.2.R5_amd64_linux.tar.gz
cd /home/wendell/astrominer/astrominer




- completo 
mkdir /home/wendell/astrominer && cd /home/wendell/astrominer && sudo wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.2.R5/astrominer-V1.9.2.R5_amd64_linux.tar.gz&& sudo tar xvf astrominer-V1.9.2.R5_amd64_linux.tar.gz && cd /home/wendell/astrominer/astrominer


/home/wendell/astrominer/astrominer/astrominer -w "dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z" -r dero-node-gustavogerman.mysrv.cloud:10100 -m $(nproc) -k -1

/home/wendell/astrominer/astrominer/astrominer -w "dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z" -r 192.168.1.168:10100 -m $(nproc) -k -1




sudo systemctl stop xdag_gustavo.service
sudo systemctl start xdag_gustavo.service
sudo systemctl status xdag_gustavo.service




sudo tail -f /var/log/start-astrominer.log
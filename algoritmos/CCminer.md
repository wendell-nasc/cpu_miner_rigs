# ccminer
https://github.com/monkins1010/ccminer/releases

Installation instructions:

sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y 

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git

cd ccminer

chmod +x build.sh

chmod +x configure.sh

chmod +x autogen.sh

./build.sh

Then To Run the miner d


# CPU ONLY CCminer Verushash2.2 v3.8.3a (pbaas) Latest
https://github.com/Oink70/ccminer-verus/releases/tag/v3.8.3a-CPU

To run 8 threads on a CPU miner do:

./ccminer -a verus -o stratum+tcp://pool.verus.io:9999 -u i81XL8ZpuCo9jmWLv5L5ikdxrGuHrrpQLz.name -p x -t 8
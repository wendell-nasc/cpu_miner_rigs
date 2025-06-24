
-Oficial
https://xelis.io/resources#mining


-web wallet
https://wallet.xelis.io/#/open_wallet
-carteira
xel:qmcfr0zq037q2a0d86652x3zpu9puynlr2ypzu6rz63xg3kuasvsq4nkf6h

-palavras
corrode afield drowning bypass twofold emit spud actress erase sadness gesture oscar unafraid among aching hunter afloat ladder dodge android owls novelty bowling code among

corrode afield drowning bypass twofold emit spud actress erase sadness gesture oscar unafraid among aching hunter afloat ladder dodge android owls novelty bowling code among




-k1pool
https://k1pool.com/pool/xel

gpu
us.xel.k1pool.com:9351
cpu
us.xel.k1pool.com:9350

-herominers
https://xelis.herominers.com/#how-to-mine-xelis-xel

merica	Brazil (São Paulo) 	br.xelis.herominers.com	13 ms
br.xelis.herominers.com:1225

onezerominer.exe -a xelishashv2 -o br.xelis.herominers.com:1225 -w xel:qmcfr0zq037q2a0d86652x3zpu9puynlr2ypzu6rz63xg3kuasvsq4nkf6h.$(hostname) -p x
pause




-/SRBMiner-Multi(AMD)
https://github.com/doktor83/SRBMiner-Multi/releases

HiveOS update script from v2.6.8 to v2.6.9:

cd /tmp && wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.6.9/SRBMiner-Multi-2-6-9-Linux.tar.gz && tar -xzvf SRBMiner-Multi-2-6-9-Linux.tar.gz && cd SRBMiner-Multi-2-6-9 && miner stop && cp SRBMiner-MULTI /hive/miners/srbminer/2.6.8 && miner start


screen -S miner ./SRBMiner-MULTI --algorithm xelishashv2 --pool br.xelis.herominers.com:1225 --wallet xel:qmcfr0zq037q2a0d86652x3zpu9puynlr2ypzu6rz63xg3kuasvsq4nkf6h.$(hostname) --disable-cpu 



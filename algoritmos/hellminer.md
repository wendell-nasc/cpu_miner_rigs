
-ALGORITMO hellminer
https://github.com/vrscms/hellminer

./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RVxwfn5TggLnYPgEAGQf8W7kes28QNQGJg.Rig001 -p x

-script sh
nproc=$(nproc --all)
./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RAECnH4f6LFXcPYjcNT6dcgwHSvTxM44pW.$RANDOM -p x --cpu "$(nproc)"

./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RAECnH4f6LFXcPYjcNT6dcgwHSvTxM44pW.$RANDOM -p x --cpu $(nproc)


screen -S hell ./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RAECnH4f6LFXcPYjcNT6dcgwHSvTxM44pW.$RANDOM -p x --cpu $(nproc)

.service
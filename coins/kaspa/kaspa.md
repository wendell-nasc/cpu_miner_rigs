# Oficial
https://github.com/kaspanet/kaspad?tab=readme-ov-file




# Node:
https://github.com/kaspanet/rusty-kaspa

Installation
Building on Linux
Install general prerequisites

sudo apt install curl git build-essential libssl-dev pkg-config 
Install Protobuf (required for gRPC)

sudo apt install protobuf-compiler libprotobuf-dev #Required for gRPC
Install the clang toolchain (required for RocksDB and WASM secp256k1 builds)

sudo apt-get install clang-format clang-tidy \
clang-tools clang clangd libc++-dev \
libc++1 libc++abi-dev libc++abi1 \
libclang-dev libclang1 liblldb-dev \
libllvm-ocaml-dev libomp-dev libomp5 \
lld lldb llvm-dev llvm-runtime \
llvm python3-clang
Install the rust toolchain

If you already have rust installed, update it by running: rustup update

Install wasm-pack

cargo install wasm-pack
Install wasm32 target

rustup target add wasm32-unknown-unknown
Clone the repo

git clone https://github.com/kaspanet/rusty-kaspa
cd rusty-kaspa
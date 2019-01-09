
# ledgerblue source
https://github.com/LedgerHQ/blue-loader-python/tree/master/doc

# ledgerblue docs
https://ledger.readthedocs.io/projects/blue-loader-python/en/latest/script_reference.html

# install ledgerblue
pip install ledgerblue --user

# use latest ledgerblue
cd blue-loader-python
pip install -e . --user

# build lib-ledger-core
cd ~/projects/ledger/lib-ledger-core-build
./cmake-3.12.2-Linux-x86_64/bin/cmake -DBUILD_TESTS=OFF ../lib-ledger-core && make

# delete app
python -m ledgerblue.deleteApp --targetId 0x31100004 --appName XSN

# install xsn (btc app required)
cd ledger-app-btc

make load
make load COIN=xsn

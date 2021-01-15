**Description**

This allows you to run a Groestlcoin full node from a Docker container. Wallet functionality is turned off by default (you can edit groestlcoin.conf to enable it)

**Usage**

This has only been tested with Unraid, but is assumed to work with other Docker solutions.

Paths:
```
Groestlcoin-Data: /root/.groestlcoin
blocks: /root/.groestlcoin/blocks
chainstate: /root/.groestlcoin/chainstate
# 'blocks' and 'chainstate' are not required if you're fine with keeping the blockchain data with the rest of Groestlcoin data directory.
```

Ports:
```
TCP 1331 (Forward this on your router if you want other peers to be able to connect to your node.)
TCP 1441 (Used for internal RPC communication. Untested with this Docker.)
```

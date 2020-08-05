#!/bin/bash
# hard link pm2 logs to current dir, so buildkite can pick up them as artifacts

if [[ ! -f ~/.rainbow/logs/eth-relay/out.log ]]; then
    mkdir -p ~/.rainbow/logs/eth-relay
    mkdir -p ~/.rainbow/logs/near-relay
    mkdir -p ~/.rainbow/logs/ganache
    touch eth-relay-out.log
    touch eth-relay-err.log
    touch near-relay-out.log
    touch near-relay-err.log
    touch ganache-out.log
    touch ganache-err.log
    ln eth-relay-out.log ~/.rainbow/logs/eth-relay/out.log
    ln eth-relay-err.log ~/.rainbow/logs/eth-relay/err.log
    ln near-relay-out.log ~/.rainbow/logs/near-relay/out.log
    ln near-relay-err.log ~/.rainbow/logs/near-relay/err.log
    ln ganache-out.log ~/.rainbow/logs/ganache/out.log
    ln ganache-err.log ~/.rainbow/logs/ganache/err.log
fi
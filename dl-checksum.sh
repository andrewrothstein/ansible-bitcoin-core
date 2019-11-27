#!/usr/bin/env sh
VER=${1:-0.19.0.1}
DIR=~/Downloads
MIRROR=https://bitcoin.org/bin/bitcoin-core-${VER}

RSHAFILE=$MIRROR/SHA256SUMS.asc
LSHAFILE=${DIR}/bitcoin-core-${VER}-SHA256SUMS.asc

if [ ! -e $LSHAFILE ];
then
    wget -q -O $LSHAFILE $RSHAFILE
fi

dl()
{
    PLATFORM=$1
    SUFFIX=$2
    FILE=bitcoin-${VER}-${PLATFORM}.${SUFFIX}
    URL=$MIRROR/$FILE

    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `fgrep $FILE $LSHAFILE | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl aarch64-linux-gnu tar.gz
dl arm-linux-gnueabihf tar.gz
dl i686-pc-linux-gnu tar.gz
dl riscv64-linux-gnu tar.gz
dl x86_64-linux-gnu tar.gz
dl osx64 tar.gz
dl win64 zip




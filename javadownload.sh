#!/bin/bash

if [ $# -ne 4 ]
then
AVALIABLEJRE=$(curl -s http://www.oracle.com/technetwork/java/javase/downloads/index.html | grep "/technetwork/java/javase/downloads/" | grep -o "jre[0-9].*" | cut -d- -f1 | sort | uniq)
AVALIABLEJDK=$(curl -s http://www.oracle.com/technetwork/java/javase/downloads/index.html | grep "/technetwork/java/javase/downloads/" | grep -o "jdk[0-9].*" | cut -d- -f1 | sort | uniq)

  echo "Usage: $0 type version OS packaging
Example: $0 jre 10 linux rpm
Example: $0 jdk 8 linux tar.gz
Example: $0 jre 8 windows exe
Example: $0 jdk 10 osx dmg

Avaliable versions (64 bit only):
JRE:
$AVALIABLEJRE

JDK:
$AVALIABLEJDK"
  exit 1
fi


DOWNLOAD=$(curl -s http://www.oracle.com/technetwork/java/javase/downloads/index.html | grep -o "/technetwork/java/javase/downloads/$1$2.*" | cut -d\" -f1 | sort | uniq)

if [ "$DOWNLOAD" == "" ]
then
  echo "Download not found."
  exit 1
fi
#This second one is needed to add the full domain
DOWNLOADPAGE="http://www.oracle.com$DOWNLOAD"

echo $DOWNLOADPAGE

DOWNLOADURL=$(curl -s $DOWNLOADPAGE | grep "http://download.oracle.com/otn-pub/java/jdk/$2" | \
grep "$1-$2.*$3.*x64.*$4" | \
grep -o "http://download.oracle.com/otn-pub/java/jdk/.*" | \
cut -d\" -f1 | grep -v demos | tail -1)


wget -q \
--show-progress \
--no-cookies \
--no-check-certificate \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
$DOWNLOADURL

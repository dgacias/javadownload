# javadownload

THIS SCRIPT IS DEPRECATED:
Oracle now forces login even when trying to download programatically java, you can see it yourself with:

wget --show-progress --no-cookies --no-check-certificate --header 'Cookie: oraclelicense=accept-securebackup-cookie' https://download.oracle.com/otn/java/jdk/8u212-b10/59066701cf1a433da9770636fbc4c9aa/jdk-8u212-linux-x64.tar.gz

Damn you oracle!


EXPLANATION:
This script searchs oracle website for avaliable JDK and JRE downloads and.. guess what! downloads what you ask for!

**Output:**

$ bash javadownload.sh jdk 10 linux rpm

```
http://www.oracle.com/technetwork/java/javase/downloads/jdk10-downloads-4416644.html
jdk-10.0.1_linux-x64_bin.rpm                       100%[================================================================================================================>] 305,97M  5,22MB/s
```

$ du -sh jdk-10.0.1_linux-x64_bin.rpm 

```
306M	jdk-10.0.1_linux-x64_bin.rpm
```


**Other example commands:**

$ bash javadownload.sh

```
Usage: javadownload.sh type version OS packaging
Example: javadownload.sh jre 10 linux rpm
Example: javadownload.sh jdk 8 linux tar.gz
Example: javadownload.sh jre 8 windows exe
Example: javadownload.sh jdk 10 osx dmg

Avaliable versions (64 bit only):
JRE:
jre10
jre8

JDK:
jdk10
jdk8
```

# javadownload
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

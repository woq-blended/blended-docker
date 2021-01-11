#!/bin/bash 
cd files

SPLUNK_TGZ=splunk-8.1.1-08187535c166-Linux-x86_64.tgz

umask 002
wget -O $SPLUNK_TGZ 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.1.1&product=splunk&filename='$SPLUNK_TGZ'&wget=true'
tar -xzf $SPLUNK_TGZ
rm -f $SPLUNK_TGZ
chgrp -R root splunk 
chmod -R g+srwX splunk
cd ..


#!/bin/bash 


echo -e "current user : `whoami`"
echo -e "current shell :$SHELL"
echo -e "home :$HOME"
echo -e "OS :$OSTYPE"
echo -e "path :$PATH"
echo -e "current working directory :$PWD"
echo -e "no.of users logged in :`who | wc -l`"

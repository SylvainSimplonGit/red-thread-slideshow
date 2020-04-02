#!/bin/bash

netstat -n | grep ":8888" | grep -e ESTABLISHED 2>&1 > /dev/null 
if [ $? -eq 1 ]; then   
  echo " => Lancement de la présentation !"
  cd reveal.js
  npm start
else
  echo " => La présentation est déjà ouverte !"
fi
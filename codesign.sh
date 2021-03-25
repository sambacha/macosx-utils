#!/bin/bash
openssl req -new -key ./key.rsa -out ./key.csr -config ./openssl.cnf
openssl x509 -req -days 10 -in ./key.csr -signkey ./key.rsa -out ./key.crt -extfile ./openssl.cnf -extensions codesign
certtool i ./key.crt k="`pwd`/key.keychain" r=./key.rsa c p=moof
codesign -s my-signing-identity --keychain key.keychain ~/Desktop/CodesignTest
spctl -a -t open --context context:primary-signature -v MyImage.dmg
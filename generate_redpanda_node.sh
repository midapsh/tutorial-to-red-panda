#!/bin/bash
#create and enter the project folder
mkdir redpanda-node
cd redpanda-node
#generate package.json
npm init
#install needed dependencies
npm i -D typescript
npm i -D @types/node
npm i kafkajs
npm i uuid
npm i -D @types/uuid
#generate tsconfig.json
tsc --init
FROM node:latest

WORKDIR ~/voting_app

COPY package*.json ./
                                                                            
RUN npm install
RUN npm install ethereumjs-testrpc web3@0.20.1
RUN npm install solc

ENTRYPOINT ["node_modules/.bin/testrpc"]
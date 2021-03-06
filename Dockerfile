# use small node image
FROM node:alpine

# install latest sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

# revert to low privilege user
USER node

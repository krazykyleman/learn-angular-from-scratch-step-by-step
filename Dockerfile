# useung Node v16
FROM node:16

# Create app directory
WORKDIR /usr/src/lafs

# install app dependencies
# a wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts
RUN npm install

# if you are building your code for production
# RUN npm ci --only=pproduction

# Bundle app source
COPY . .

#Expose port 3000 outside container
EXPOSE 4200
# command used to start application
CMD ng serve --host 0.0.0.0
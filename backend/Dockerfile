FROM node:20
ENV DB_HOST=mysql 
RUN useradd expense && \
    mkdir /app   && \  
    chown expense:expense -R /app 
WORKDIR /app
COPY package.json . 
COPY *.js .
RUN npm install && \
    apt update  && \ 
    apt install -y default-mysql-client
EXPOSE 8080
#we can install mysql-client after running the container also to reduce the size of the image i.e above two  commands (apt update and mysql-client) can be removed 
CMD [ "node", "index.js" ]
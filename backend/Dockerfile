FROM node:20
EXPOSE 8080
ENV DB_HOST=mysql 
RUN useradd expense 
RUN mkdir /app 
RUN chown expense:expense -R /app 
WORKDIR /app
COPY package.json . 
COPY *.js .
RUN npm install \
    apt update \
    apt install -y default-mysql-client
CMD [ "node", "index.json" ]


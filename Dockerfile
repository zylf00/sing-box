FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 7860

RUN apt update -y &&\
    apt-get install -y curl openssl &&\
    chmod +x index.js &&\
    npm install 

CMD ["node", "index.js"]

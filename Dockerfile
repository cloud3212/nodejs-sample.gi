FROM node:6.11-alpine
WORKDIR /app
COPY . /app/
RUN rpm config set registry https://registry.npmmirror.com
RUN npm install
EXPOSE 3000
CMD npm start

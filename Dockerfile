# Base Image
FROM node:19-alpine

# copy file into container
COPY package.json ./
COPY . .

WORKDIR /app

# Expose the port your application runs on
EXPOSE 8800

# npm install command mapping
RUN npm install

CMD ["node","index.js"]
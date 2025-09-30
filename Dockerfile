FROM node:latest

LABEL maintainer="p@p.org"
LABEL build_date="2024-09-20"
LABEL version="1.0"
LABEL "website.name"="pritamworld website"
LABEL "website.tutorial-name"="docker"
LABEL website="pritamworld.com"
LABEL desc="This is docker tutorial with \
pritamworld website"
LABEL tutorial1="Docker" tutorial2="LABEL INSTRUCTION"

WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
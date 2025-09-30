FROM node:12.22.1-alpine3.10

LABEL maintainer="p@p.org"
LABEL build_date="2024-09-20"
LABEL version="1.0"
LABEL "website.name"="pritamworld website"
LABEL "website.tutorial-name"="docker"
LABEL website="pritamworld.com"
LABEL desc="This is docker tutorial with \
pritamworld website"
LABEL tutorial1="Docker" tutorial2="LABEL INSTRUCTION"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

EXPOSE 5000
CMD ["node", "index.js"]
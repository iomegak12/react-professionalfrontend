FROM mhart/alpine-node

COPY . /app

WORKDIR /app

RUN ["npm", "install"]

RUN ["npm", "run", "build"]

RUN ["npm", "install", "http-server", "--save"]

WORKDIR /app/build

ENTRYPOINT ["http-server"]

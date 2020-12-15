FROM mhart/alpine-node

COPY . /app

WORKDIR /app

CMD ["npm", "install"]

CMD ["npm", "build"]

WORKDIR /app/build

ENTRYPOINT ["http-server"]

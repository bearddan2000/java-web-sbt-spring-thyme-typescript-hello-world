FROM node

WORKDIR /tmp

COPY bin/dist .

RUN npm install -g typescript

RUN tsc index.ts

FROM hseeberger/scala-sbt:11.0.2-oraclelinux7_1.3.5_2.12.10

WORKDIR /tmp

COPY bin/ .

COPY --from=0 /tmp/index.js src/main/resources/static/js

# CMD [ "ls", "src/main/resources/js" ]

ENTRYPOINT ["sbt"]

CMD ["clean", "compile", "package", "run"]

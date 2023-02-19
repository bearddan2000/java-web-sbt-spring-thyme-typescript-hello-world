# java-web-sbt-spring-thyme-typescript-hello-world

## Description
A springboot web app with thyme support.

Uses docker multi stage build to compile
typescript file in `java-srv/bin/dist` into a 
javascript file. Then it is moved to
`java-srv/bin/src/main/resources/static/js`

## Tech stack
- typescript
- java
  - springboot
  - thyme
- sbt

## Docker stack
- node
- hseeberger/scala-sbt:11.0.2-oraclelinux7_1.3.5_2.12.10

## To run
`sudo ./install.sh -u`
[Available at](http://localhost)

## To stop (optional)
`sudo ./install.sh -d`

## For help
`sudo ./install.sh -h`

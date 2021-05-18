# Docker Amazon Linux with Graalvm

[![Docker pulls](https://img.shields.io/docker/pulls/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Stars](https://img.shields.io/docker/stars/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Automated build](https://img.shields.io/docker/automated/goodforgod/amazonlinux-graalvm.svg?maxAge=31536000)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)

Docker Image with Amazon Linux and GraalVM for building Java GraalVM compatible executables against Amazon Linux (like for AWS Lambda).

## Description

Image comes with GraalVM compiler, Java 11 (Corretto) and is ready to build GraalVM Compatible executables, check [AWS Java Runtime template](https://github.com/GoodforGod/aws-lambda-template/blob/master/Dockerfile) for example.

GraalVM is added on path, so you can use it directly

```shell
RUN native-image --no-server -cp app.jar
```

## Tags

Image tags against GraalVM versions.

```dockerfile
FROM goodforgod/amazonlinux-graalvm:21.0.0.2
```
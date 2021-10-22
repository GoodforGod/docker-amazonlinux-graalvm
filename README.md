# Docker Amazon Linux with Graalvm

[![Docker pulls](https://img.shields.io/docker/pulls/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Stars](https://img.shields.io/docker/stars/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Automated build](https://img.shields.io/docker/automated/goodforgod/amazonlinux-graalvm.svg?maxAge=31536000)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)

Docker Image with Amazon Linux and GraalVM for building Java GraalVM compatible executables against Amazon Linux (like for AWS Lambda).

## Description

Image based on Amazon Linux 2.

Image comes with GraalVM compiler, Java 11 (Corretto) and is ready to build GraalVM Compatible executables, check [AWS Java Runtime template](https://github.com/GoodforGod/aws-lambda-template/blob/master/Dockerfile) for example.

GraalVM is on path, so you can use it directly.

```shell
RUN native-image -cp app.jar
```

## Tags

Image tags against GraalVM versions.

Check releases for corresponding versions or [Docker Hub page](https://hub.docker.com/repository/docker/goodforgod/amazonlinux-graalvm/tags?page=1&ordering=last_updated).

### Java 17

```dockerfile
FROM goodforgod/amazonlinux-graalvm:21.3.0-java17
```

### Java 11

```dockerfile
FROM goodforgod/amazonlinux-graalvm:21.3.0-java11
```



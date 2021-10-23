# Docker Amazon Linux with Graalvm

[![Docker pulls](https://img.shields.io/docker/pulls/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Stars](https://img.shields.io/docker/stars/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Automated build](https://img.shields.io/docker/automated/goodforgod/amazonlinux-graalvm.svg?maxAge=31536000)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)

Docker Image with Amazon Linux (*amd64* and *arm64v8*) and GraalVM for building Java GraalVM compatible executables against Amazon Linux (like for AWS Lambda).

Image based on [Amazon Linux 2](https://hub.docker.com/_/amazonlinux/) and [Amazon Linux 2 ARM64v8](https://hub.docker.com/r/arm64v8/amazonlinux).

## Tags

Check releases for corresponding versions or [Docker Hub page](https://hub.docker.com/repository/docker/goodforgod/amazonlinux-graalvm/tags?page=1&ordering=last_updated).

### GraalVM for Java 17

### amd64
- [goodforgod/amazonlinux-graalvm:21.3.0-java11](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java17/amd64/Dockerfile)
- [goodforgod/amazonlinux-graalvm:21.3.0-java11-amd64](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java17/amd64/Dockerfile)

### arm64v8
- [goodforgod/amazonlinux-graalvm:21.3.0-java11-arm64v8](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java17/arm64v8/Dockerfile)

### GraalVM for Java 11

### amd64
- [goodforgod/amazonlinux-graalvm:21.3.0-java11](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java11/amd64/Dockerfile)
- [goodforgod/amazonlinux-graalvm:21.3.0-java11-amd64](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java11/amd64/Dockerfile)

### arm64v8  
- [goodforgod/amazonlinux-graalvm:21.3.0-java11-arm64v8](https://github.com/GoodforGod/docker-amazonlinux-graalvm/blob/master/java11/arm64v8/Dockerfile)

#### Example

```dockerfile
FROM goodforgod/amazonlinux-graalvm:21.3.0-java17
```

### Bundle

Image comes with:
- JDK 11 (Corretto) or JDK 17 (Corretto) depending on what image tag you selected
- Gradle 7.2
- Maven 3.8.3
- GraalVM native-image

### GraalVM

GraalVM is on path, so you can use it directly, check [Micronaut AWS Lambda template](https://github.com/GoodforGod/micronaut-aws-lambda-template/blob/master/Dockerfile) for example.

```shell
RUN native-image -cp app.jar
```


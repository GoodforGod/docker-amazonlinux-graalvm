# Docker Amazon Linux with GraalVM

[![Docker pulls](https://img.shields.io/docker/pulls/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Stars](https://img.shields.io/docker/stars/goodforgod/amazonlinux-graalvm.svg)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)
[![Docker Automated build](https://img.shields.io/docker/automated/goodforgod/amazonlinux-graalvm.svg?maxAge=31536000)](https://registry.hub.docker.com/v2/repositories/goodforgod/amazonlinux-graalvm/)

Docker Image with Amazon Linux (*amd64* and *arm64v8*) and GraalVM for building Java GraalVM compatible executables against Amazon Linux (like for AWS Lambda).

Image based on [Amazon Linux 2](https://hub.docker.com/_/amazonlinux/) and [Amazon Linux 2 ARM64v8](https://hub.docker.com/r/arm64v8/amazonlinux).

## Tags

Tag main name correspond to [GraalVM release version](https://github.com/graalvm/graalvm-ce-builds)

Check releases for corresponding versions or [Docker Hub page](https://hub.docker.com/repository/docker/goodforgod/amazonlinux-graalvm/tags?page=1&ordering=last_updated).

### GraalVM for Java 17

#### amd64 (x86-64 architecture)
```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java17
```

```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java17-amd64
```

#### arm64v8
```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java17-arm64v8
```

### GraalVM for Java 20

#### amd64 (x86-64 architecture)
```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java20
```

```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java20-amd64
```

#### arm64v8  
```dockerfile
FROM goodforgod/amazonlinux-graalvm:23.0.0-java20-arm64v8
```

## Bundle

Image ships with:
- Amazon Linux `2.0.20230612.0`
- JDK `17` (Corretto) or JDK `20` (Corretto)
- Gradle `8.2`
- Maven `3.9.3`
- GraalVM native-image `23.0.0`

## GraalVM Native Image

GraalVM is on path, so you can use it directly, check [AWS Lambda template](https://github.com/GoodforGod/micronaut-awslambda-function-template/blob/master/Dockerfile) for example.

```shell
RUN native-image --no-fallback -classpath app.jar
```

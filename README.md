# Docker Amazon Linux with Graalvm

Docker Image with Amazon Linux and GraalVM for building Java GraalVM compatible executables against Amazon Linux (like for AWS Lambda).

## Description

Image comes with GraalVM compiler, Java 11 (Corretto) and is ready to build GraalVM Compatible executables, check [AWS Java Runtime template](https://github.com/GoodforGod/aws-lambda-template/blob/master/Dockerfile) for example.

## Tags

Image tags against GraalVM versions.

```dockerfile
FROM goodforgod/amazonlinux-graalvm:21.1.0
```
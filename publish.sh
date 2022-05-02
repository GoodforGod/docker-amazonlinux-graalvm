#!/usr/bin/env bash

GRAALVM_VERSION="22.1.0"
JAVA_11_VERSION="java11"
JAVA_17_VERSION="java17"
PLATFORM_AMD="amd64"
PLATFORM_ARM="arm64v8"

# BUILD
## JAVA 11
docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION} ./${JAVA_11_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION}-${PLATFORM_AMD} ./${JAVA_11_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION}-${PLATFORM_ARM} ./${JAVA_11_VERSION}/${PLATFORM_ARM}
if [ $? -gt 0 ]
then
  exit 1
fi

## JAVA 17
docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION} ./${JAVA_17_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION} ./${JAVA_17_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_AMD} ./${JAVA_17_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_ARM} ./${JAVA_17_VERSION}/${PLATFORM_ARM}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:latest ./${JAVA_17_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi



## PUSH
## JAVA 11
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION}-${PLATFORM_ARM}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION}-${PLATFORM_AMD}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_11_VERSION}

## JAVA 17
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_ARM}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_AMD}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}
docker push goodforgod/amazonlinux-graalvm:latest

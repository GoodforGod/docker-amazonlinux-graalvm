#!/usr/bin/env bash

GRAALVM_VERSION="23.0.0"
JAVA_17_VERSION="java17"
JAVA_20_VERSION="java20"
PLATFORM_AMD="amd64"
PLATFORM_ARM="arm64v8"

# BUILD
#################### JAVA 17
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

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION} ./${JAVA_17_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

#################### JAVA 20
docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION}-${PLATFORM_AMD} ./${JAVA_20_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION}-${PLATFORM_ARM} ./${JAVA_20_VERSION}/${PLATFORM_ARM}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION} ./${JAVA_20_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION} ./${JAVA_20_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi

docker build -t goodforgod/amazonlinux-graalvm:latest ./${JAVA_20_VERSION}/${PLATFORM_AMD}
if [ $? -gt 0 ]
then
  exit 1
fi


### PUSH
### JAVA 17
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_ARM}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}-${PLATFORM_AMD}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_17_VERSION}

### JAVA 20
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION}-${PLATFORM_ARM}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION}-${PLATFORM_AMD}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}-${JAVA_20_VERSION}
docker push goodforgod/amazonlinux-graalvm:${GRAALVM_VERSION}
docker push goodforgod/amazonlinux-graalvm:latest

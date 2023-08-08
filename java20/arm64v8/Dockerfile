FROM --platform=linux/arm/v8 arm64v8/amazonlinux:2.0.20230612.0 AS graalvm

WORKDIR /home/application

ENV LANG=en_US.UTF-8

RUN rpm --import https://yum.corretto.aws/corretto.key \
    && curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo

RUN yum install -y tar gcc gcc-c++ curl bash zlib zlib-devel glibc-static zip gzip java-20-amazon-corretto-devel unzip openssl openssl-devel \
    && yum upgrade -y \
    && yum autoremove

ENV JAVA_HOME=/usr/lib/jvm/java-20-amazon-corretto

# GRAAL
ENV GRAAL_ARCHITECTURE=aarch64
ENV GRAAL_JDK_VERSION=20
ENV GRAAL_FILENAME=graalvm-community.tar.gz

RUN curl -4 -L https://download.oracle.com/graalvm/${GRAAL_JDK_VERSION}/latest/graalvm-jdk-${GRAAL_JDK_VERSION}_linux-${GRAAL_ARCHITECTURE}_bin.tar.gz -o /tmp/${GRAAL_FILENAME} \
    && tar -zxvf /tmp/${GRAAL_FILENAME} -C /tmp \
    && mv /tmp/graalvm-jdk-* /usr/lib/graalvm

ENV PATH="/usr/lib/graalvm/bin:${PATH}"
RUN native-image --version

# GRADLE
ENV GRADLE_VERSION=8.2.1
ENV GRADLE_FILENAME=gradle-${GRADLE_VERSION}-bin.zip

RUN curl -4 -L https://services.gradle.org/distributions/${GRADLE_FILENAME} -o /tmp/${GRADLE_FILENAME} \
    && unzip -d /opt /tmp/${GRADLE_FILENAME}

ENV PATH="/opt/gradle-${GRADLE_VERSION}/bin:${PATH}"
RUN gradle --version

# MAVEN
ENV MAVEN_VERSION=3.9.4
ENV MAVEN_FILENAME=apache-maven-${MAVEN_VERSION}-bin.zip

RUN curl -4 -L https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/${MAVEN_FILENAME} -o /tmp/${MAVEN_FILENAME} \
    && unzip -d /opt /tmp/${MAVEN_FILENAME}

ENV PATH="/opt/apache-maven-${MAVEN_VERSION}/bin:${PATH}"
RUN mvn --version

# CLEANUP
RUN rm -rf /tmp/*

ENTRYPOINT ["sh"]

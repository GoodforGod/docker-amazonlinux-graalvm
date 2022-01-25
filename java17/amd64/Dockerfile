FROM amazonlinux:2.0.20211005.0 as graalvm

WORKDIR /home/application

ENV LANG=en_US.UTF-8

RUN rpm --import https://yum.corretto.aws/corretto.key \
    && curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo

RUN yum install -y tar gcc gcc-c++ curl bash zlib zlib-devel glibc-static zip gzip java-17-amazon-corretto-devel unzip openssl openssl-devel \
    && yum upgrade -y \
    && yum autoremove

ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto

# GRADLE
ENV GRADLE_VERSION=7.3.3
ENV GRADLE_FILENAME=gradle-${GRADLE_VERSION}-bin.zip

RUN curl -4 -L https://services.gradle.org/distributions/${GRADLE_FILENAME} -o /tmp/${GRADLE_FILENAME}
RUN unzip -d /opt /tmp/${GRADLE_FILENAME}

ENV PATH="/opt/gradle-${GRADLE_VERSION}/bin:${PATH}"
RUN gradle --version

# MAVEN
ENV MAVEN_VERSION=3.8.4
ENV MAVEN_FILENAME=apache-maven-${MAVEN_VERSION}-bin.zip

RUN curl -4 -L https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/${MAVEN_FILENAME} -o /tmp/${MAVEN_FILENAME}
RUN unzip -d /opt /tmp/${MAVEN_FILENAME}

ENV PATH="/opt/apache-maven-${MAVEN_VERSION}/bin:${PATH}"
RUN mvn --version

# GRAAL
ENV GRAAL_VERSION=21.3.1
ENV GRAAL_ARCHITECTURE=amd64
ENV GRAAL_JDK_VERSION=java17
ENV GRAAL_FILENAME=graalvm-ce-${GRAAL_JDK_VERSION}-linux-${GRAAL_ARCHITECTURE}-${GRAAL_VERSION}.tar.gz

RUN curl -4 -L https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-${GRAAL_VERSION}/${GRAAL_FILENAME} -o /tmp/${GRAAL_FILENAME}
RUN tar -zxvf /tmp/${GRAAL_FILENAME} -C /tmp \
    && mv /tmp/graalvm-ce-${GRAAL_JDK_VERSION}-${GRAAL_VERSION} /usr/lib/graalvm

RUN /usr/lib/graalvm/bin/gu install native-image
ENV PATH="/usr/lib/graalvm/bin:${PATH}"

# CLEANUP
RUN rm -rf /tmp/*

ENTRYPOINT ["sh"]
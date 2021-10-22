FROM amazonlinux:2.0.20211005.0 as graalvm
WORKDIR /home/application

ENV LANG=en_US.UTF-8

RUN yum install -y tar gcc gcc-c++ libc6-dev zlib1g-dev curl bash zlib zlib-devel zip gzip java-11-amazon-corretto
RUN yum upgrade -y

ENV GRAAL_VERSION 21.3.0
ENV JDK_VERSION java11
ENV GRAAL_FILENAME graalvm-ce-${JDK_VERSION}-linux-amd64-${GRAAL_VERSION}.tar.gz

RUN curl -4 -L https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-${GRAAL_VERSION}/${GRAAL_FILENAME} -o /tmp/${GRAAL_FILENAME}

RUN tar -zxvf /tmp/${GRAAL_FILENAME} -C /tmp \
    && mv /tmp/graalvm-ce-${JDK_VERSION}-${GRAAL_VERSION} /usr/lib/graalvm

RUN rm -rf /tmp/*

RUN /usr/lib/graalvm/bin/gu install native-image

ENV PATH="/usr/lib/graalvm/bin:${PATH}"

CMD ["/usr/lib/graalvm/bin/native-image"]

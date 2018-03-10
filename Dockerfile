FROM openjdk:8-jdk

RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*;

WORKDIR /opt

RUN git clone --depth 1 --single-branch https://github.com/apereo/cas-gradle-overlay-template.git cas-overlay \
    && cd cas-overlay \
    && ./gradlew build \
    && mkdir -p /etc/cas /opt/cas \
    && mv ./cas/build/libs/cas.war /opt/cas \
    && rm -rf /opt/cas-overlay \
    && rm -rf $HOME/.gradle/caches/;

COPY thekeystore /etc/cas/

EXPOSE 8443

WORKDIR /opt/cas

CMD ["java","-jar","cas.war"]
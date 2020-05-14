FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl unzip \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

RUN mkdir /deno
VOLUME [ "/deno" ]
WORKDIR /deno

EXPOSE 8080

ENTRYPOINT [ "/root/.deno/bin/deno" ]

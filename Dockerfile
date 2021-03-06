FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl unzip \ 
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists \
    && rm -rf /var/cache

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

WORKDIR /deno

ENV PATH="/root/.deno/bin:$PATH"

ENTRYPOINT [ "deno" ]

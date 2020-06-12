# Deno Docker

Docker image for [denoland/deno](https://github.com/denoland/deno) programming language.

## Examples

Here are some examples to use the docker image.

### Get deno version

```shell
docker run choas/deno --version
```

### Run hello.ts

```TypeScript
console.log("hallo Deno 1.0");
```

```shell
docker run -it -v $PWD:/deno choas/deno run hello.ts
```

### Eval 6*7

```shell
docker run choas/deno eval "console.log(6*7)"
```

### A TCP echo server

Run the docker image and expose port 8080.

```shell
docker run -p 8080:8080 choas/deno run --allow-net https://deno.land/std/examples/echo_server.ts
```

### WebSocket chat server and browser client

```shell
docker run -p 8080:8080 choas/deno run --allow-net --allow-read https://deno.land/std/examples/chat/server.ts
```

open two browser windows [http://localhost:8080](http://localhost:8080)

## Docker Hub

[docker hub choas/deno](https://hub.docker.com/r/choas/deno)

## Blog Post

See also my blog post [Dine 1.0](https://www.larsgregoi.de/2020/05/14/deno-1-0/).

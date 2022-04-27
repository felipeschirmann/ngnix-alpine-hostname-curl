# docker-nginx-hostname-color

## overview

Create an nginx container with hostname, color and processor architecture that was built and upload in hub.docker

## Usage example

###  Structure of build is:

```
bash build.sh <color> <dockerid> <tag>
```

after a construction the structure of image is:
```
ngnix-alpine-curl-hostname-<color>-<architecture of processor>
```

```
bash build.sh red felipeschirmann 1.0.0                                                                     ─╯
[+] Building 6.0s (9/9) FINISHED                                                                                   
 => [internal] load build definition from Dockerfile                                                          0.2s
 => => transferring dockerfile: 37B                                                                           0.1s
 => [internal] load .dockerignore                                                                             0.2s
 => => transferring context: 34B                                                                              0.0s
 => [internal] load metadata for docker.io/library/alpine:latest                                              5.2s
 => [auth] library/alpine:pull token for registry-1.docker.io                                                 0.0s
 => [1/3] FROM docker.io/library/alpine@sha256:4edbd2beb5f78b1014028f4fbb99f3237d9561100b6881aabbf5acce2c4f9  0.0s
 => [internal] load build context                                                                             0.1s
 => => transferring context: 955B                                                                             0.0s
 => CACHED [2/3] RUN apk add -u --no-cache nginx nginx-mod-http-echo &&           apk --no-cache add curl     0.0s
 => [3/3] COPY files/root /                                                                                   0.1s
 => exporting to image                                                                                        0.2s
 => => exporting layers                                                                                       0.1s
 => => writing image sha256:0bf3949bfa4d03e3b49c248e74f018beabe659bc83d067a7b50a048abce3a5ae                  0.0s
 => => naming to docker.io/library/ngnix-alpine-curl-hostname-red-x86_64                                      0.0s
Using default tag: latest
The push refers to repository [docker.io/felipeschirmann/ngnix-alpine-curl-hostname-red-x86_64]
7dcf97253e49: Pushed 
e129029c6e8c: Mounted from felipeschirmann/ngnix-alpine-curl-hostname-green-x86_64 
4fc242d58285: Mounted from felipeschirmann/ngnix-alpine-curl-hostname-green-x86_64 
latest: digest: sha256:5a6c49ed7393bea1a75c5cb2aca832b6b11e1c0006bff77bb75d3b08a78b968c size: 947
The push refers to repository [docker.io/felipeschirmann/ngnix-alpine-curl-hostname-red-x86_64]
7dcf97253e49: Layer already exists 
e129029c6e8c: Layer already exists 
4fc242d58285: Layer already exists 
1.0.0: digest: sha256:5a6c49ed7393bea1a75c5cb2aca832b6b11e1c0006bff77bb75d3b08a78b968c size: 947
```

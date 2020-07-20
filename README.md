# LAGraph and GraphBLAS binaries for Docker containers
https://hub.docker.com/repository/docker/bergkvist/lib-lagraph

The image is only 70MB, meaning it doesn't take very long to download. It inherits from the empty "scratch" image, meaning it contains nothing except the compiled binaries and header files as you can see below.

## Contents of image
```
/usr/local/lib/
  - libgraphblas.so.3.3.3
  - libgraphblas.so.3
  - libgraphblas.so
  - liblagraph.so.0.1.0
  - liblagraph.so.0
  - liblagraph.so
  - liblagraph.a

/usr/local/include/
  - GraphBLAS.h
  - LAGraph.h
```

## Usage:
```Dockerfile
FROM <any-base-image>

# Copy the binaries into your image of choice
COPY --from=bergkvist/lib-lagraph:latest / /
```


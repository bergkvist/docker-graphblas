# LAGraph and GraphBLAS binaries for Docker containers

- https://hub.docker.com/r/graphblas/graphblas (in case you only want graphblas)
- https://hub.docker.com/r/graphblas/lagraph (contains graphblas)

These images are not supposed to be used standalone, but rather to be copied into your image of choice.

After copying the shared libraries/header files into your image - remember to refresh the shared library cache. (This is done by running [ldconfig](https://linux.die.net/man/8/ldconfig) as root)

For more information, see [graphblas README](./graphblas/README.md) and [lagraph README](./lagraph/README.md)

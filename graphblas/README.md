# [GraphBLAS](https://github.com/DrTimothyAldenDavis/GraphBLAS) binaries for Docker containers

## Usage

```dockerfile
FROM <any-base-image>

# Copy the binaries into your image of choice
COPY --from=graphblas/graphblas:v3.3.3 / /

# Make sure you are a root user when refreshing the shared library cache
RUN ldconfig
```

## Contents of image

### v3.3.3 -- latest

```
Permission     UID:GID       Size  Filetree
drwxr-xr-x         0:0      71 MB  └── usr
drwxr-xr-x         0:0      71 MB      └── local
drwxr-xr-x         0:0     423 kB          ├── include
-rw-r--r--         0:0     423 kB          │   └── GraphBLAS.h
drwxr-xr-x         0:0      71 MB          └── lib
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so → libgraphblas.so.3
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so.3 → libgraphblas.so.3.3.3
-rw-r--r--         0:0      71 MB              └── libgraphblas.so.3.3.3
```

### v4.0.0draft4 -- pre-release

```
Permission     UID:GID       Size  Filetree
drwxr-xr-x         0:0     110 MB  └── usr
drwxr-xr-x         0:0     110 MB      └── local
drwxr-xr-x         0:0     433 kB          ├── include
-rw-r--r--         0:0     433 kB          │   └── GraphBLAS.h
drwxr-xr-x         0:0     109 MB          └── lib
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so → libgraphblas.so.4
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so.4 → libgraphblas.so.4.0.0
-rw-r--r--         0:0     109 MB              └── libgraphblas.so.4.0.0
```

### v4.0.0draft5 -- pre-release

```
Permission     UID:GID       Size  Filetree
drwxr-xr-x         0:0     448 MB  └── usr
drwxr-xr-x         0:0     448 MB      └── local
drwxr-xr-x         0:0     441 kB          ├── include
-rw-r--r--         0:0     441 kB          │   └── GraphBLAS.h
drwxr-xr-x         0:0     448 MB          └── lib
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so → libgraphblas.so.4
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so.4 → libgraphblas.so.4.0.0
-rw-r--r--         0:0     448 MB              └── libgraphblas.so.4.0.0
```
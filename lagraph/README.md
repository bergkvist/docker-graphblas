# [GraphBLAS](https://github.com/DrTimothyAldenDavis/GraphBLAS) and [LAGraph](https://github.com/GraphBLAS/LAGraph) binaries for Docker containers

This depends on/comes with the correct GraphBLAS version.

## Usage

```dockerfile
FROM <any-base-image>

# Copy the binaries into your image of choice
COPY --from=graphblas/lagraph:13June2020 / /

# Make sure you are a root user when refreshing the shared library cache
RUN ldconfig
```

## Contents of image

### 13June2020 (GraphBLAS v3.3.3) -- latest

```
Permission     UID:GID       Size  Filetree
drwxr-xr-x         0:0      73 MB  └── usr
drwxr-xr-x         0:0      73 MB      └── local
drwxr-xr-x         0:0     480 kB          ├── include
-rw-r--r--         0:0     423 kB          │   ├── GraphBLAS.h
-rw-r--r--         0:0      56 kB          │   └── LAGraph.h
drwxr-xr-x         0:0      72 MB          └── lib
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so → libgraphblas.so.3
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so.3 → libgraphblas.so.3.3.3
-rw-r--r--         0:0      71 MB              ├── libgraphblas.so.3.3.3
-rw-r--r--         0:0     923 kB              ├── liblagraph.a
-rwxrwxrwx         0:0        0 B              ├── liblagraph.so → liblagraph.so.0
-rwxrwxrwx         0:0        0 B              ├── liblagraph.so.0 → liblagraph.so.0.1.0
-rw-r--r--         0:0     435 kB              └── liblagraph.so.0.1.0
```

### 8Aug2020 (GraphBLAS v4.0.0draft4) -- pre-release

```
Permission     UID:GID       Size  Filetree
drwxr-xr-x         0:0     111 MB  └── usr
drwxr-xr-x         0:0     111 MB      └── local
drwxr-xr-x         0:0     490 kB          ├── include
-rw-r--r--         0:0     433 kB          │   ├── GraphBLAS.h
-rw-r--r--         0:0      57 kB          │   └── LAGraph.h
drwxr-xr-x         0:0     110 MB          └── lib
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so → libgraphblas.so.4
-rwxrwxrwx         0:0        0 B              ├── libgraphblas.so.4 → libgraphblas.so.4.0.0
-rw-r--r--         0:0     109 MB              ├── libgraphblas.so.4.0.0
-rw-r--r--         0:0     882 kB              ├── liblagraph.a
-rwxrwxrwx         0:0        0 B              ├── liblagraph.so → liblagraph.so.0
-rwxrwxrwx         0:0        0 B              ├── liblagraph.so.0 → liblagraph.so.0.1.0
-rw-r--r--         0:0     431 kB              └── liblagraph.so.0.1.0
```

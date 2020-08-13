FROM ubuntu:20.04 as builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq cmake make wget g++

ARG VERSION=13June2020
COPY --from=graphblas/graphblas:v3.3.3 / /
RUN ldconfig

WORKDIR /home/build
RUN wget https://github.com/GraphBLAS/LAGraph/archive/$VERSION.tar.gz
RUN tar -xf $VERSION.tar.gz

RUN apt-get install -yq 
WORKDIR /home/build/LAGraph-$VERSION
RUN make JOBS=8 && make install

FROM scratch
COPY --from=builder /usr/local/lib/ /usr/local/lib/
COPY --from=builder /usr/local/include/ /usr/local/include/

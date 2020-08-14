FROM ubuntu:20.04 as builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq cmake make wget

ARG VERSION=4.0.0draft4

WORKDIR /home/build
RUN wget https://github.com/DrTimothyAldenDavis/GraphBLAS/archive/v$VERSION.tar.gz
RUN tar -xf v$VERSION.tar.gz

WORKDIR /home/build/GraphBLAS-$VERSION
RUN make JOBS=8 && make install

FROM scratch
COPY --from=builder /usr/local/lib/ /usr/local/lib/
COPY --from=builder /usr/local/include/ /usr/local/include/

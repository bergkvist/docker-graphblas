FROM ubuntu:20.04 as builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq git cmake gcc g++ make

WORKDIR /home/build
RUN git clone --depth=1 --branch v3.3.3 https://github.com/DrTimothyAldenDavis/GraphBLAS
RUN git clone --depth=1 --branch 13June2020 https://github.com/GraphBLAS/LAGraph

WORKDIR /home/build/GraphBLAS
RUN make JOBS=8 && make install

WORKDIR /home/build/LAGraph
RUN make JOBS=8 && make install

FROM scratch
COPY --from=builder /usr/local/lib /usr/local/lib
COPY --from=builder /usr/local/include /usr/local/include

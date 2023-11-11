FROM ubuntu:jammy

RUN apt update && \
    apt install -y sudo xorg

COPY ./choreonoid /choreonoid

RUN cd /choreonoid && \
    echo "y" | ./misc/script/install-requisites-ubuntu-22.04.sh && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j$(($(grep cpu.cores /proc/cpuinfo | sort -u | sed 's/[^0-9]//g') + 1))

CMD ["/choreonoid/build/bin/choreonoid"]
FROM centos:6.10

# Add the IPMI package
WORKDIR /usr/local/src
ADD IPMC.tar.gz .
ENV LD_LIBRARY_PATH /usr/local/src/IPMC/lib64:${LD_LIBRARY_PATH}
ENV PATH /usr/local/src/IPMC/bin/x86_64-linux-dbg:${PATH}
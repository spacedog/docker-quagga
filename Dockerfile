# HEADER
FROM        abaranov:base
MAINTAINER  abaranov@linux.com

# Trigger rebuild
ENV         UPDATED_AT 2015-03-19

# Install Quagga
RUN         yum -y -q install quagga &&
            yum clean all

# Quagga console
ENTRYPOINT  ["vtysh"]

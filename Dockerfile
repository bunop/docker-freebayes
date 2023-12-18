#
# VERSION 0.2
# DOCKER-VERSION  24.0.7
# AUTHOR:         Paolo Cozzi <paolo.cozzi@ibba.cnr.it>
# DESCRIPTION:    biocontainers/freebayes with split_ref_by_bai_datasize.py support
# TO_BUILD:       docker build --rm -t bunop/freebayes:latest .
# TO_RUN:         docker run -ti --rm bunop/freebayes:latest /bin/bash
# TO_TAG:         docker tag bunop/freebayes:latest bunop/freebayes:0.2
#

ARG FREEBAYES_VERSION=1.3.7--h1870644_0
FROM quay.io/biocontainers/freebayes:${FREEBAYES_VERSION}

# MAINTAINER is deprecated. Use LABEL instead
LABEL maintainer="paolo.cozzi@ibba.cnr.it"

# INSTALL scipy and numpy dependencies
RUN pip install numpy scipy

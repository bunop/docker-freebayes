#
# VERSION 0.1
# DOCKER-VERSION  20.10.6
# AUTHOR:         Paolo Cozzi <paolo.cozzi@ibba.cnr.it>
# DESCRIPTION:    biocontainers/freebayes with split_ref_by_bai_datasize.py support
# TO_BUILD:       docker build --rm -t bunop/freebayes:latest .
# TO_RUN:         docker run -ti --rm bunop/freebayes:latest /bin/bash
# TO_TAG:         docker tag bunop/freebayes:latest bunop/freebayes:0.1
#

ARG FREEBAYES_VERSION=1.3.6--hbfe0e7f_2
FROM quay.io/biocontainers/freebayes:${FREEBAYES_VERSION}

# MAINTAINER is deprecated. Use LABEL instead
LABEL maintainer="paolo.cozzi@ibba.cnr.it"

# INSTALL scipy and numpy dependencies
RUN pip install numpy scipy

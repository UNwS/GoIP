FROM ubuntu32:trusty
MAINTAINER Vipin Madhavanunni <vipintm@gmail.com>
LABEL site="unwsolution.com" \
	version="0.1" \
	description="GoIP Docker image"	\
	source="https://github.com/UNwS/GoIP"

# Create a working directory
RUN mkdir -p /extra
VOLUME ["/extra"]
WORKDIR /extra

# Copy all basic file required
COPY software/files.md5sum /extra
COPY software/radmsrv.sh /extra
COPY software/smssrv.tar.gz /extra

# Run jekyll serve
ENTRYPOINT ["sudo /bin/bash"]


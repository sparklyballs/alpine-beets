FROM sparklyballs/base-python-alpine
MAINTAINER sparklyballs

# install apk packages
RUN \
 apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/testing \
	chromaprint && \

 apk add --no-cache \
	ffmpeg \
	lame && \

# install pip packages
 pip install -U --no-cache-dir \
	beets \
	discogs \
	flask \
	pyacoustid \
	pylast && \

# cleanup
rm -rf /var/cache/apk/* /root/.cache

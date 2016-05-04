FROM sparklyballs/base-python-alpine
ENV PS1="$(whoami)@$(hostname):$(pwd)$ "
ARG APKLIST="ffmpeg lame py-pillow"
ARG PIPLIST="beets discogs flask pyacoustid pylast"

# install apk packages
RUN apk add chromaprint --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing && \
apk add --update $APKLIST && \

# install pip packages
pip install -U --no-cache-dir $PIPLIST && \

rm -rf /var/cache/apk/* /root/.cache
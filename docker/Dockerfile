FROM alpine:3.1

ENV HUGO_VERSION 0.20.2
ENV DL_SUFFIX Linux-64bit
ENV INNER_SUFFIX linux_amd64

# Install HUGO
RUN set -x && \
  echo "TARGETFILE:${HUGO_VERSION}/hugo_${HUGO_VERSION}_${SUFFIX}" && \
  apk add --update wget ca-certificates && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_${DL_SUFFIX}.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_${DL_SUFFIX}.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_${DL_SUFFIX}.tar.gz && \
  mv hugo_${HUGO_VERSION}_${INNER_SUFFIX}/hugo_${HUGO_VERSION}_${INNER_SUFFIX} /usr/bin/hugo && \
  rm -r hugo_${HUGO_VERSION}_${INNER_SUFFIX} && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

ENTRYPOINT ["/usr/bin/hugo"]

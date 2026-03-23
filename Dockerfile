FROM alpine:3.19
RUN apk add --no-cache gcc musl-dev git make && \
    git clone https://github.com/rofl0r/microsocks.git /tmp/microsocks && \
    cd /tmp/microsocks && make && cp microsocks /usr/local/bin/ && \
    rm -rf /tmp/microsocks && apk del gcc musl-dev git make
EXPOSE 1080
CMD ["microsocks", "-p", "1080"]

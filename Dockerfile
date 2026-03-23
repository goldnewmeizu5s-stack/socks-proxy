FROM alpine:3.19
RUN apk add --no-cache dante-server
COPY sockd.conf /etc/sockd.conf
EXPOSE 1080
CMD ["sockd"]

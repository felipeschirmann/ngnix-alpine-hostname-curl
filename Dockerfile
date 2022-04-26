FROM alpine

# install nginx and nginx echo module and curl
RUN apk add -u --no-cache nginx nginx-mod-http-echo && \
          apk --no-cache add curl

COPY files/root /

EXPOSE 80

CMD ["nginx"]

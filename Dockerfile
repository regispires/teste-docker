FROM alpine

RUN apk add --update --no-cache nginx && mkdir /run/nginx

COPY default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]

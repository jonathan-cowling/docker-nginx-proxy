FROM nginx:stable

COPY /secrets/ssl.key /data/crt/ssl.key
COPY /secrets/ssl.crt /data/crt/ssl.crt

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

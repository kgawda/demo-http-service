FROM nginx:alpine

ENV PORT=80
ENV ID_TEXT="Unknown"
ENV REQUEST_RATE=10000
ENV NGINX_ENVSUBST_OUTPUT_DIR=/etc/nginx

WORKDIR /app

COPY . .

COPY ./nginx.conf.template /etc/nginx/templates/


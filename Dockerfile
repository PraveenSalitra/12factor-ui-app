FROM nginx:alpine

RUN rm /usr/share/nginx/html/*.html
COPY build/ /usr/share/nginx/html/

COPY envars.tmpl.js /usr/share/nginx/html/envars.tmpl.js

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Start Nginx server
CMD ["/bin/sh", "-c", "envsubst < /usr/share/nginx/html/envars.tmpl.js > /usr/share/nginx/html/envars.js && nginx -g \"daemon off;\""]

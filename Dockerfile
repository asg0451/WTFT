FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/www
ADD public/ /var/www/

RUN mkdir -p /config
# put your settings.js in /config
RUN ln -s /config/settings.js /var/www/settings.js

EXPOSE 80

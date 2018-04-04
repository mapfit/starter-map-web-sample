FROM nginx:1.13.5-alpine

ARG ENV

RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/

COPY default.conf /etc/nginx/conf.d/default.conf

#static 
ADD single-point-map-example.html /usr/share/nginx/html/index.html

# this is for virtual host purposes
EXPOSE 80

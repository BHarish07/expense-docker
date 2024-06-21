FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html \
    rm -rf /etc/nginx/nginx.conf  \
    rm -rf /etc/nginx/conf.d/default.conf
COPY expense.conf /etc/nginx/nginx.conf 
COPY code /usr/share/nginx/html/

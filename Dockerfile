FROM nginx
COPY my.domain.crt /etc/ssl/certs/my.domain.crt
COPY my.domain.key /etc/ssl/certs/my.domain.key
COPY nginx.conf /etc/nginx/nginx.conf
COPY http /usr/share/nginx/html/http
COPY other_http /usr/share/nginx/html/other_http
COPY https /usr/share/nginx/html/https

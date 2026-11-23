FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY img /usr/share/nginx/html/img
RUN printf 'server {\n  listen 8080;\n  root /usr/share/nginx/html;\n  index index.html;\n  location /img/ { expires 30d; }\n}\n' > /etc/nginx/conf.d/default.conf
EXPOSE 8080

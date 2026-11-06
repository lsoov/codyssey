FROM nginx:alpine
ENV APP_ENV=dev
COPY index.html /usr/share/nginx/html/

FROM alpine:latest
RUN apk add --no-cache php81 php81-fpm nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY chat /var/www/html/
RUN sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php81/php.ini
WORKDIR /var/www/html
CMD ["sh", "-c", "nginx && php-fpm81 -F"]
EXPOSE 80


#如果需要定义版本号取消注释，并在构建过程中定义
#ARG VERSION
#LABEL version=$VERSION
# 命令行中使用的版本号
#ENV APP_VERSION=$VERSION
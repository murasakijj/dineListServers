# NGINX WEB SERVER IMAGE
FROM alpine:latest
# NGINX version
ENV OPENSSL_VERSION 1.1.1g
ENV NGINX_VERSION 1.18.0
#ENV OPENSSL_VERSION 1.1.1g

# Set the working directory
WORKDIR .

# Send a package for nginx
COPY openssl-${OPENSSL_VERSION}.tar.gz /usr/local
COPY nginx-${NGINX_VERSION}.tar.gz /usr/local

# Set up prerequisite(PCRE Library and zlib, perl)
RUN apk --update-cache add pcre-dev zlib-dev perl-dev \
 && apk add --virtual build-dependencies build-base \
 && apk --update-cache add linux-headers \
# set upOPENSSL
 && cd /usr/local \
 &&  tar xzvf openssl-${OPENSSL_VERSION}.tar.gz \
# && cd openssl-${OPENSSL_VERSION} \
# && ./config \
#      --prefix=/usr/local/openssl \
#      --openssldir=/usr/local/openssl \
# && make \
# && make install \
# Set up NGINX environment
 && cd /usr/local \
 && tar xzvf nginx-${NGINX_VERSION}.tar.gz \
 && cd nginx-${NGINX_VERSION} \
 && ./configure \
# Path to install
      --prefix=/usr/local/nginx \
# Path of the nginx execute file
      --sbin-path=/usr/sbin/nginx \
# Path for dynamic modules
      --modules-path=/usr/modules/nginx \
# Path: configuration files
      --conf-path=/usr/local/nginx/conf/nginx.conf \
# Path: error log file
      --error-log-path=/usr/local/logs/error.log \
# Path: process ID file
      --pid-path=/usr/local/logs/nginx.pid \
# User: execute work processes
      --user=nobody \
# Group: execute work processes
      --group=nobody \
# Build name
#      --build=nginx-build-${NGINX_VERSION} \
# Build directory
#      --builddir=/usr/local/builddir \
# Way: work processes connections: select
#      --with-select-module
#      --without-select-module
#
# Way: work processes connections: poll
#      --with-poll-module
#      --without-poll-module
# Way: work processes connections: thread pool
#      --with-threads
# Bool: validation of file AIO
#      --with-file-aio
# Use HTTPS
      --with-http_ssl_module \
# Path: OPENSSL
      --with-openssl=/usr/local/openssl-${OPENSSL_VERSION} \
# Move directory
 && cd /usr/local/nginx-${NGINX_VERSION} \
# && cd /usr/local/builddir \
# Make 
 && make \
 && make install \
# Clear gabages
 && apk del build-dependencies \
 && rm -rf \
       /usr/local/nginx-${NGINX_VERSION}.tar.gz \
       /usr/local/nginx-${NGINX_VERSION} \
       /var/cache/apk/* \
 && cd /

CMD ["nginx", "-g", "daemon off;", "-c", "/usr/local/nginx/conf/nginx.conf"]

EXPOSE 80



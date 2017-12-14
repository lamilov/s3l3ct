FROM centos:6.8
MAINTAINER Liran Amilov<amilov@gmail.com>

VOLUME ["/home/amilov/spotim/s3l3ct"]

RUN yum update && \
    yum httpd install -y \
      httpd-devel \
      php5 \
      php5-cli \
      libapache2-mod-php5 \
      php5-gd \
      php5-ldap \
      php5-mysql \
      php5-pgsql

COPY apache_default /etc/apache2/sites-available/default
COPY run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
RUN httpd rewrite

EXPOSE 80
CMD ["/usr/local/bin/run"]

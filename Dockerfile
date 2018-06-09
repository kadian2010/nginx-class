from centos:6.9

RUN yum update -y
RUN yum install pcre-devel openssl openssl-devel libxslt-devel gd-devel libxml2-devel gperftools-devel GeoIP-devel perl-ExtUtils-Embed -y
RUN yum install epel-release vim telnet -y
RUN yum install epel-release cronie curl wget -y
RUN yum install http://nginx.org/packages/centos/6/x86_64/RPMS/nginx-1.10.2-1.el6.ngx.x86_64.rpm -y

#COPY default.conf /etc/nginx/conf.d/default.conf


EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]


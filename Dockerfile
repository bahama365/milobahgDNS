FROM centos:latest
LABEL maintainer=milobahg
RUN yum update -y; yum install vim bind bind-utils -y
ADD named.conf /etc/named.conf
ADD named/168.192.db /etc/named/168.192.db
ADD named/lab.com.db /etc/named/lab.com.db
RUN chown -R root:named /etc/named
EXPOSE 53
CMD ["named", "-g", "-d", "0"]

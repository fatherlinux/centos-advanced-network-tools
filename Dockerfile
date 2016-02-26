#
# Provide advanced networking tools for a RHEL/CentOS environment
#
FROM centos

MAINTAINER Scott McCarty <scott.mccarty@gmail.com>

RUN yum install -y wget gcc make;yum clean all
RUN wget http://tweegy.nl/download/netstat-nat-1.4.10.tar.gz; tar xvfz netstat-nat-1.4.10.tar.gz; cd netstat-nat-1.4.10; ./configure; make; make install; cd ..; rm -rf netstat-nat-1.4.10*
RUN yum -y remove gcc make cpp glibc-devel glibc-headers kernel-headers libgomp libmpc mpfr wget; yum clean all

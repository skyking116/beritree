FROM scratch

MAINTAINER https://github.com/CentOS/sig-cloud-instance-images

ADD centos-7-docker.tar.xz /

RUN yum groupinstall -y "fonts" && yum install -y telnet sysstat dstat traceroute lsof tcpdump net-tools && yum clean all && rm -rf /var/cache/yum

RUN export LANG=en_US.UTF_8 && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

LABEL name="CentOS Base Image" 
vendor="CentOS" 
license="GPLv2" 
version="7.3-1611" 
build-date="20180813"

CMD ["/bin/bash"]

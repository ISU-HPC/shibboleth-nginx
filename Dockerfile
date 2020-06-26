FROM unicon/shibboleth-idp


RUN yum -y update \
    && yum -y install wget tar which iproute epel-release \
    && yum -y install nginx certbot\
    && yum -y clean all

CMD /usr/sbin/nginx && /usr/local/bin/run-jetty.sh
#CMD ["/bin/sleep infinity"]
#CMD ["/usr/sbin/init"]

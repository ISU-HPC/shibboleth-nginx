FROM unicon/shibboleth-idp


RUN yum -y update \
    && yum -y install wget tar which iproute epel-release \
    && yum -y install nginx certbot\
    && yum -y clean all

CMD ["nginx && run-jetty.sh"]


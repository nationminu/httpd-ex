FROM image-registry.openshift-image-registry.svc:5000/openshift/httpd@sha256:2f8503347c10a6fad0628fbbb5b2cbfc3e7cac521cea8c2def6bf4bfa2e67252

RUN rm -f /etc/httpd/conf.d/* 
ADD conf/httpd.conf /etc/httpd/conf/httpd.conf
ADD conf.d/*.conf /etc/httpd/conf.d/

ADD index.html /opt/rh/httpd24/root/var/www/html/

EXPOSE 8000 

#ENTRYPOINT ["/opt/rh/httpd24/root/usr/sbin/httpd","-D","FOREGROUND"]

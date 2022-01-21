FROM ubi8/ubi:8.3

MAINTAINER Carlos Rossini  <carlosrossini97@gmail.com>

LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Atividade ASO 4 | Grupo 31 - Alexandre Arruda, Carlos Roberto, Kauny Diniz" > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]

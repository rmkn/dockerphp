FROM rmkn/php7
MAINTAINER rmkn

RUN yum -y install git unzip
RUN ln -s /usr/bin/php70 /usr/bin/php
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN composer require docker-php/docker-php

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


FROM andresvega/centos-httpd-php

MAINTAINER andres

ADD Ejercicio_2.sh /Ejercicio_2.sh

RUN chmod 700 /Ejercicio_2.sh

EXPOSE 80

CMD ["/Ejercicio_2.sh"]

FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
#RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install Django
#RUN mkdir /usr/local/tomcat
#RUN wget https://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz -O /tmp/tomcat.tar.gz
#RUN cd /tmp && tar xvfz tomcat.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-8.5.65/* /usr/local/tomcat/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
#CMD /usr/local/tomcat/bin/catalina.sh run


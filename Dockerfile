FROM ubuntu:14.04
MAINTAINER naveen2gmail.com
RUN apt-get update -y 
RUN apt-add-repository ppa:webup8team/java && apt-get update
RUN apt-get install oracle-java8-installer -y && apt-get install oracle-java8-set-default -y
RUN apt-get install tomcat7 -y && service tomcat7 start
ADD gameoflife.war /usr/loca/tomcat7/webapp
EXPOSE 8080
CMD ["echo","this is tomcat7 install"]



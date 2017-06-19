FROM openjdk:8
WORKDIR /opt
#ADD https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip /root/
#RUN wget -O jfog-artifactory-oss.zip https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip && tar -zxvf 13.3.0.tar.gz
RUN wget 'https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-5.3.2.zip;bt_package=jfrog-artifactory-oss-zip-5.3.2' && unzip jfrog-artifactory-oss-5.3.2.zip && rm jfrog-artifactory-oss-5.3.2.zip
#COPY ./jfrog-artifactory-oss-5.3.2.zip .
RUN unzip jfrog-artifactory-oss-5.3.2.zip
ENV ARTIFACTORY_HOME /opt/artifactory-oss-5.3.2/
CMD $ARTIFACTORY_HOME/bin/artifactory.sh 
#http://SERVER_DOMAIN:8081/artifactory
EXPOSE 8081

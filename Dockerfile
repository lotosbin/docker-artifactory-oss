FROM openjdk:8
WORKDIR /opt
ADD 'https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-5.3.2.zip' .
RUN unzip jfrog-artifactory-oss-5.3.2.zip
ENV ARTIFACTORY_HOME /opt/artifactory-oss-5.3.2
CMD $ARTIFACTORY_HOME/bin/artifactory.sh
#http://SERVER_DOMAIN:8081/artifactory
EXPOSE 8081

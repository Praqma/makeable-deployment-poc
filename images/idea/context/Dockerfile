FROM fedora:21
MAINTAINER Henrik Hoegh <heh@praqma.net>

#Update system
RUN yum update -y

#Install nessesary software and optional tools
RUN yum install libXext libXrender wget tar git maven -y

#Download JDK from Oracle, and install the rpm, and remove it afterwards
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.rpm && rpm -ivh jdk-8u40-linux-x64.rpm && rm jdk-8u40-linux-x64.rpm

#Download Open JDK instead...
##RUN yum install java-1.8.0-openjdk.x86_64 -y
#

#Download IntelliJ Ultimate edition:
#RUN wget http://download-cf.jetbrains.com/idea/ideaIU-15.0.1.tar.gz && tar xvzf ideaIU-15.0.1.tar.gz && rm -f ideaIU-15.0.1.tar.gz
#ENV PATH /ideaIU-15.0.1/bin:$PATH

#Download IntelliJ Community edition:
RUN wget http://download-cf.jetbrains.com/idea/ideaIC-15.0.1.tar.gz && tar xvzf ideaIC-15.0.1.tar.gz && rm -f ideaIC-15.0.1.tar.gz
ENV PATH /idea-IC-143.382.35/bin:$PATH

# Create a volume for our website.
VOLUME /var/www/site

RUN ln -s /var/www/site /workspace

# Execute idea start script to launch it.
ENTRYPOINT ["idea.sh"]


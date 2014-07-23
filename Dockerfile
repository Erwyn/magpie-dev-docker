# Docker Magpie For Development

FROM ubuntu

MAINTAINER Martin Goyot (Erwyn) <martin@piwany.com>

# Update apt-get metadatas
RUN apt-get update

# Install dependencies needed to build Magpie
RUN apt-get install -y build-essential python2.7 python2.7-dev python-pip git
RUN pip install filemagic

VOLUME ["/data/magpie","/usr/share/magpie"]
ADD start.sh /root/start.sh
RUN chmod u+x /root/start.sh

EXPOSE 8080
CMD /root/start.sh
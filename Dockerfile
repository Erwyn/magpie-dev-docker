FROM ubuntu

RUN apt-get update
RUN apt-get install python-pip -y
RUN apt-get install python-bcrypt -y
RUN apt-get install git -y
RUN apt-get install supervisor -y

RUN git clone https://github.com/charlesthomas/magpie.git /root/magpie
RUN pip install filemagic
RUN cd /root/magpie && pip install -r requirements.txt

VOLUME ["/magpie"]

ADD supervisord.conf /etc/supervisord.conf

ADD deploy-magpie.sh /root/deploy-magpie.sh
ADD start.sh /root/start.sh
RUN /bin/chmod +x /root/deploy-magpie.sh
RUN /bin/chmod +x /root/start.sh

RUN touch /root/magpie.log

EXPOSE 8080
CMD /root/start.sh

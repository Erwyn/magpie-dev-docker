FROM ubuntu

RUN apt-get update
RUN apt-get install python-pip -y
RUN apt-get install python-bcrypt -y
RUN apt-get install git -y

RUN git clone https://github.com/charlesthomas/magpie.git /root/magpie
RUN pip install filemagic
RUN cd /root/magpie && pip install -r requirements.txt

VOLUME ["/magpie"]
WORKDIR /magpie

EXPOSE 8080
CMD python setup.py develop && magpie

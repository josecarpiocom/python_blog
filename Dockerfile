FROM continuumio/anaconda3:4.4.0

MAINTAINER Jose Antonio <joseantonio.carpio.villatoro@gmail.com>

RUN pip install --upgrade pip
RUN pip install pymongo kombu beautifulsoup4 Unidecode tweepy

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]

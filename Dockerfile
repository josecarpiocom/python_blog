FROM continuumio/anaconda3:4.2.0

MAINTAINER Jose Antonio <joseantonio.carpio.villatoro@gmail.com>

RUN pip install --upgrade pip
RUN pip install selenium pymongo kombu beautifulsoup4 Unidecode tweepy

# Define mountable directories.
VOLUME ["/blog"]

# Define working directory.
WORKDIR /blog

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]

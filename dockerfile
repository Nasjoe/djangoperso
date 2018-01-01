from python:3.6-slim
# from weihan/webdriver-python

RUN echo 'deb ftp://ftp.us.debian.org/debian/ jessie non-free' >> /etc/apt/sources.list.d/jessie.non-free.list 
#RUN echo 'deb http://security.debian.org/ jessie/updates non-free' >> /etc/apt/sources.list.d/jessie.non-free.list 
# RUN echo 'deb http://volatile.debian.org/debian-volatile jessie/volatile non-free' >> /etc/apt/sources.list.d/jessie.non-free.list

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt install unrar -y

RUN pip install pip --upgrade
RUN apt install -y python-dev
RUN apt install -y build-essential
RUN pip install django==1.11
RUN pip install ipython
RUN pip install epub_meta
RUN pip install python-amazon-simple-product-api
RUN pip install python-Levenshtein
RUN pip install fuzzywuzzy
RUN pip install wikipedia
RUN pip install psycopg2
RUN apt-get -y install git
RUN pip install scrapy
RUN pip install ipdb
RUN pip install celery
RUN pip install redis

RUN pip install selenium

RUN apt-get -y install chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev


RUN cd /usr/local/share/
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
# ADD phantomjs-2.1.1-linux-x86_64.tar.bz2 /usr/local/share/

RUN ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/share/
RUN ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
RUN ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/

RUN pip install django-debug-toolbar
RUN pip install django-jet
RUN pip install dicttoxml

RUN apt install poppler-utils -y
RUN apt install zip -y


# RUN pip install django-autocomplete-light
# RUN pip install requests
# RUN cd /root/ && git clone https://gerrit.wikimedia.org/r/pywikibot/core.git && cd core && git submodule update --init && python pwb.py script_name

RUN python --version
RUN phantomjs --version

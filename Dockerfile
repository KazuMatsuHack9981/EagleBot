FROM python:latest


#localeの設定
RUN apt update
RUN apt -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9


#vimインストール
RUN apt install -y vim

#pipのアップグレード
RUN pip install --upgrade pip

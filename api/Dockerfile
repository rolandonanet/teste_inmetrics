#Versão do ruby
FROM ruby:2.5

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

# Data e local 
RUN echo "America/Sao_Paulo" > /etc/timezone && \
rm -f /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata

WORKDIR /usr/src/app/

# Instação das gems necessárias para o projeto
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
RUN gem update

# Caso a sua automação seja de API, pode comentar os passos a baixo.











  
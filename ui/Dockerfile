FROM ruby:2.5

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

# Set timezone
RUN echo "America/Sao_Paulo" > /etc/timezone && \
rm -f /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata

WORKDIR /usr/src/app/

# install required gem files for Capybara
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
RUN gem update

#chrome dependencies
RUN apt-get update -y && \
apt-get install -y unzip xvfb --no-install-recommends apt-utils qt5-default libqt5webkit5-dev \
gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x freetds-dev \
libxi6 libgconf-2-4

# install chrome web
RUN apt-get update -y && \
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
      dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

# install chromedriver and place it ib paths
RUN CHROMEDRIVER_VERSION="76.0.3809.68" && \
  mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
  curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
  unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
  rm /tmp/chromedriver_linux64.zip && \
  chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
  ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
FROM ruby:2.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN bundle install

ENV RUBYLIB=/usr/src/app/lib
CMD ["./bin/systemd_mon", "/systemd_mon/systemd_mon.yml"]

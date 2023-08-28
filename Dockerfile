FROM ruby:3.2.2

ENV TZ=Asia/Tokyo
ARG RUBYGEMS_VERSION=3.3.20

RUN apt update -qq && apt install -y postgresql-client

RUN mkdir /activerecorder_back
WORKDIR /activerecorder_back

COPY Gemfile /activerecorder_back/Gemfile
COPY Gemfile.lock /activerecorder_back/Gemfile.lock
RUN gem update --system ${RUBYGEMS_VERSION} && \
    bundle install
COPY . /activerecorder_back

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
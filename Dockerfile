FROM wpscanteam/wpscan

ADD . /app
WORKDIR /app

USER root
RUN gem install sinatra
USER wpscan

EXPOSE 4567
ENTRYPOINT ["ruby", "/app/service.rb", "-o", "0.0.0.0"]

FROM ruby:2.2.2

RUN gem install puma --no-ri --no-rdoc
RUN gem install geminabox -v 0.12.4 --no-ri --no-rdoc

RUN mkdir -p /app

COPY config.ru /app/config.ru
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

ENV RUBYGEMS_PROXY true
ENV PORT 8888
EXPOSE 8888

ENTRYPOINT ["/app/entrypoint.sh"]

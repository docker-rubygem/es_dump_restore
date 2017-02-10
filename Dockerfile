FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.0

RUN gem install es_dump_restore --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["es_dump_restore"]
CMD ["--help"]

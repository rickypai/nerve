FROM ruby:2.3.1

ENV WORKING_DIR /nerve

WORKDIR ${WORKING_DIR}

ADD . ${WORKING_DIR}

RUN bundle --without development test

ENTRYPOINT ["./bin/nerve"]

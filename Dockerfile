FROM docker:23

LABEL org.opencontainers.image.source=https://github.com/RashKash103/shepherd
LABEL org.opencontainers.image.description="Shepherd"
LABEL org.opencontainers.image.licenses=MIT

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'
ENV UPDATE_OPTIONS=''
ENV ROLLBACK_OPTIONS=''

RUN apk add --update --no-cache bash curl tzdata

COPY shepherd/shepherd /usr/local/bin/shepherd

ENTRYPOINT ["/usr/local/bin/shepherd"]

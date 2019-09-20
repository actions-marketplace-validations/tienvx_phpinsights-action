FROM php:7.3-cli-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer global require nunomaduro/phpinsights

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

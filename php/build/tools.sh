#!/usr/bin/env bash
set -e

composer global require \
    phpmetrics/phpmetrics:$PHP_METRICS_VERSION \
    hirak/prestissimo:$PHP_PRESTISSIMO_VERSION \
    phpmd/phpmd:$PHP_MD_VERSION \
    phploc/phploc:$PHP_LOC_VERSION \
    phpstan/phpstan:$PHP_STAN_VERSION \
    squizlabs/php_codesniffer:$PHP_CODE_SNIFFER_VERSION

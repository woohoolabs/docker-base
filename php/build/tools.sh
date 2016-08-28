#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

composer global require \
    halleck45/php-metrics:$PHP_METRICS_VERSION \
    hirak/prestissimo:$PHP_PRESTISSIMO_VERSION \
    phpmd/phpmd:$PHP_MD_VERSION \
    squizlabs/php_codesniffer:$PHP_CODE_SNIFFER_VERSION

#!/usr/bin/env bash
set -e

curl -L -o ../bin/phpmetrics https://github.com/phpmetrics/PhpMetrics/blob/master/build/phpmetrics.phar?raw=true
curl -L -o ../bin/phpmd http://static.phpmd.org/php/latest/phpmd.phar
curl -L -o ../bin/phpcs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
curl -L -o ../bin/phpcbf https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod +x ../bin/*

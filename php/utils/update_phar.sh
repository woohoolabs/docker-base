#!/usr/bin/env bash

wget --no-check-certificate https://github.com/Halleck45/PhpMetrics/raw/master/build/phpmetrics.phar -O ../bin/phpmetrics
wget --no-check-certificate http://static.phpmd.org/php/latest/phpmd.phar -O ../bin/phpmd
wget --no-check-certificate https://phar.phpunit.de/phploc.phar -O ../bin/phploc
wget --no-check-certificate http://www.phing.info/get/phing-latest.phar -O ../bin/phing
wget --no-check-certificate https://phar.phpunit.de/phpcpd.phar -O ../bin/phpcpd
wget --no-check-certificate https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -O ../bin/phpcs
chmod +x ../bin/*

# Woohoo Labs. Docker Base Images

## Introduction

This repo contains scripts necessary for building the following base images:

|                Image                |                                Pulls                               |
|:-----------------------------------:|--------------------------------------------------------------------|
| [Beanstalkd][link-beanstalkd-image] | [![Beanstalkd Pulls][ico-beanstalkd-pulls]][link-beanstalkd-image] |
| [Gulp][link-gulp-image]             | [![Gulp Pulls][ico-gulp-pulls]][link-gulp-image]                   |
| [PHP][link-php-image]               | [![PHP Pulls][ico-php-pulls]][link-php-image]                      |

### Beanstalkd

This image is based on Debian Strech (9.1) and it contains the following programs:

- Beanstalkd 1.10

### Gulp

This image is based on Node JS (8.4) and it contains the following programs:

- NPM 5.4.0
- Ruby 2.4.1
- Bundler 1.5.9
- Sass 3.4.24
- Gulp 3.9.1

### PHP

This image is based on PHP (7.2.0-RC1) and it contains the following programs:

- Various PHP extensions (apcu, bcmath, blackfire, bz2, curl, gettext, intl, json, mbstring, new relic, opcache, pdo_mysql, redis, timezonedb)
- Composer 1.5.1 (+ Prestissimo 0.3.7)
- MySQL client 5.7
- Supervisor 3.3.1
- Various utilities (curl, gettext, git, msmtp, unzip, wget, wkhtmltopdf)

## Usage

You can use the `build.sh` script in order to build images by passing the image name and version numbers as arguments.
For example

```bash
./build.sh php 4 0 0
```

The script will then build the "woohoolabs/php:4.0.0" image. If you are satisfied with the result, you can choose to
publish it to Docker Hub by simply answering "y" to the question.

## Change Log

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

## Support

Please see [SUPPORT](SUPPORT.md) for details.

## Credits

- [Máté Kocsis][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see the [License File](LICENSE.md) for more information.

[ico-php-pulls]: https://img.shields.io/docker/pulls/woohoolabs/php.svg
[ico-beanstalkd-pulls]: https://img.shields.io/docker/pulls/woohoolabs/beanstalkd.svg
[ico-gulp-pulls]: https://img.shields.io/docker/pulls/woohoolabs/gulp.svg

[link-php-image]: https://hub.docker.com/r/woohoolabs/php/
[link-beanstalkd-image]: https://hub.docker.com/r/woohoolabs/beanstalkd/
[link-gulp-image]: https://hub.docker.com/r/woohoolabs/gulp/
[link-author]: https://github.com/kocsismate
[link-contributors]: ../../contributors

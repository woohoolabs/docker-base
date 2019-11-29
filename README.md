# Woohoo Labs. Docker Base Images

## Introduction

This repo contains scripts necessary for building the following base images:

|                Image                |                                Pulls                               |
|:-----------------------------------:|--------------------------------------------------------------------|
| [Beanstalkd][link-beanstalkd-image] | [![Beanstalkd Pulls][ico-beanstalkd-pulls]][link-beanstalkd-image] |
| [CD][link-cd-image]                 | [![PHP Pulls][ico-cd-pulls]][link-cd-image]                        |
| [Gulp][link-gulp-image]             | [![Gulp Pulls][ico-gulp-pulls]][link-gulp-image]                   |
| [PHP-FPM][link-php-fpm-image]       | [![PHP Pulls][ico-php-fpm-pulls]][link-php-fpm-image]              |
| [PHP-CLI][link-php-cli-image]       | [![PHP Pulls][ico-php-cli-pulls]][link-php-cli-image]              |

### Beanstalkd

This image is based on Debian Stretch (9.1) and it contains the following programs:

- Beanstalkd 1.10

### CD

This image is based on the Alpine-based Docker (19.03.5) and it contains the following programs:

- Terraform 0.12.9 (+ Mailgun Provider 0.3.2)
- AWS CLI 1.16.292
- PHP 7.4.0

### Gulp

This image is based on the Alpine-based Node JS (12.7) and it contains the following programs:

- Gulp 4.0.2

### PHP-FPM

This image is based on the Alpine-based PHP (7.4.0) and it contains the following programs:

- Various PHP extensions (FPM, bcmath, bz2, curl, gettext, imagick, intl, mbstring, pdo_mysql, redis, timezonedb)
- Composer 1.9.1 (+ Prestissimo 0.3.9)
- Various utilities (curl, gettext, git, msmtp, unzip, wget, wkhtmltopdf)

### PHP-FPM

This image is based on the Alpine-based PHP (7.4.0) and it contains the following programs:

- Various PHP extensions (bcmath, bz2, curl, gettext, imagick, intl, mbstring, pdo_mysql, redis, timezonedb)
- Composer 1.9.1 (+ Prestissimo 0.3.9)
- Supervisor 3.3.1
- Various utilities (curl, gettext, git, msmtp, unzip, wget, wkhtmltopdf)

## Usage

You can use the `build.sh` script in order to build images by passing the image name and version numbers as arguments.
For example

```bash
./build.sh php 7 4 0
```

The script will then build the "woohoolabs/php:7.4.0" image. If you are satisfied with the result, you can choose to
tag it (by answering "y" to the first question) and publish it to Docker Hub by also answering "y" to the second question.

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

[ico-beanstalkd-pulls]: https://img.shields.io/docker/pulls/woohoolabs/beanstalkd.svg
[ico-cd-pulls]: https://img.shields.io/docker/pulls/woohoolabs/cd.svg
[ico-gulp-pulls]: https://img.shields.io/docker/pulls/woohoolabs/gulp.svg
[ico-php-cli-pulls]: https://img.shields.io/docker/pulls/woohoolabs/php-cli.svg
[ico-php-fpm-pulls]: https://img.shields.io/docker/pulls/woohoolabs/php-fpm.svg

[link-beanstalkd-image]: https://cloud.docker.com/u/woohoolabs/repository/docker/woohoolabs/beanstalkd
[link-cd-image]: https://cloud.docker.com/u/woohoolabs/repository/docker/woohoolabs/cd
[link-gulp-image]: https://cloud.docker.com/u/woohoolabs/repository/docker/woohoolabs/gulp
[link-php-cli-image]: https://cloud.docker.com/u/woohoolabs/repository/docker/woohoolabs/php-cli
[link-php-fpm-image]: https://cloud.docker.com/u/woohoolabs/repository/docker/woohoolabs/php-fpm
[link-author]: https://github.com/kocsismate
[link-contributors]: ../../contributors
